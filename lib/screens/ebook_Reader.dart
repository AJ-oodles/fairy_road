import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdfx/pdfx.dart';
import 'package:dio/dio.dart';

import '../model/book_model.dart';


class EbookReaderPage extends StatefulWidget {
  final Book book;

  EbookReaderPage({required this.book});

  @override
  _EbookReaderPageState createState() => _EbookReaderPageState();
}

class _EbookReaderPageState extends State<EbookReaderPage> {
  late PdfController pdfController;
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    _downloadAndOpenPdf(widget.book.pdfUrl);
  }

  Future<void> _downloadAndOpenPdf(String url) async {
    try {
      // Get the temporary directory
      final dir = await getTemporaryDirectory();
      final filePath = '${dir.path}/${widget.book.title}.pdf';

      if (!File(filePath).existsSync()) {

        await Dio().download(url, filePath);
      }

      // Open the PDF document
      pdfController = PdfController(document: PdfDocument.openFile(filePath));

      setState(() {
        isLoading = false;
      });
    } catch (e) {
      print("Error downloading or opening PDF: $e");
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    pdfController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.book.title)),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : PdfView(controller: pdfController),
      floatingActionButton: isLoading
          ? null
          : Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            onPressed: () {
              pdfController.previousPage(
                curve: Curves.ease,
                duration: const Duration(milliseconds: 300),
              );
            },
            child: const Icon(Icons.chevron_left),
          ),
          FloatingActionButton(
            onPressed: () {
              pdfController.nextPage(
                curve: Curves.ease,
                duration:const Duration(milliseconds: 300),
              );
            },
            child: const Icon(Icons.chevron_right),
          ),
        ],
      ),
    );
  }
}
