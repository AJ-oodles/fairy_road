import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../model/book_model.dart';
import 'ebook_Reader.dart';


// class BookDetailPage extends StatelessWidget {
//   final Book book;
//
//   BookDetailPage({required this.book});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(book.title)),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Image.network(book.coverUrl),
//             SizedBox(height: 10),
//             Text(book.title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//             Text(book.author, style: TextStyle(color: Colors.grey)),
//             SizedBox(height: 10),
//             Text(book.description),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => EbookReaderPage(book: book)),
//                 );
//               },
//               child: Text("Read Book"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import '../constants/colors.dart'; // Import your custom colors

import 'package:flutter/material.dart';

// class BookDetailPage extends StatelessWidget {
//   final Book book;
//
//   BookDetailPage({required this.book});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         elevation: 4, // Add slight shadow for depth
//         toolbarHeight: 70, // Make the app bar taller for a bolder look
//         flexibleSpace: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [AppColors.accentPurple, AppColors.accentGreen],
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//             ),
//           ),
//         ),
//         title: Text(
//           book.title,
//           style: TextStyle(
//             color: AppColors.offWhite,
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             shadows: [
//               Shadow(
//                 blurRadius: 8.0,
//                 color: Colors.black26,
//                 offset: Offset(2, 2),
//               ),
//             ],
//           ),
//           maxLines: 1,
//           overflow: TextOverflow.ellipsis,
//         ),
//         iconTheme: IconThemeData(color: AppColors.offWhite), // White icon color
//         actions: [
//           IconButton(
//             icon: Icon(Icons.share),
//             onPressed: () {
//               // Placeholder for share functionality
//             },
//             color: AppColors.offWhite, // White color for share icon
//           ),
//         ],
//       ),
//       backgroundColor: AppColors.offWhite, // Page background color
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Book cover image with fallback to default image
//             book.coverUrl.isNotEmpty
//                 ? Image.network(
//               book.coverUrl,
//               errorBuilder: (context, error, stackTrace) {
//                 // Fallback to default image if network image fails
//                 return Image.asset('assets/images/Ebook_Cover.png',fit: BoxFit.cover);
//               },
//             )
//                 : Image.asset('assets/images/Ebook_Cover.png',fit: BoxFit.cover), // Default asset image
//
//             SizedBox(height: 10),
//             // Book title with bold style
//             Text(
//               book.title,
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//                 color: AppColors.softBlack,
//               ),
//             ),
//             // Author's name with green accent
//             Text(
//               book.author,
//               style: TextStyle(
//                 color: AppColors.accentGreen,
//                 fontSize: 16,
//               ),
//             ),
//             SizedBox(height: 10),
//             // Book description
//             Text(
//               book.description,
//               style: TextStyle(color: AppColors.softBlack),
//             ),
//             SizedBox(height: 20),
//             // Buy Book button
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: AppColors.offWhite,
//                 backgroundColor: AppColors.accentPurple,
//                 padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//               ),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => EbookReaderPage(book: book),
//                   ),
//                 );
//               },
//               child: Text("Buy Book", style: TextStyle(fontSize: 16)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



class BookDetailPage extends StatelessWidget {
  final Book book;

  BookDetailPage({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4, // Add slight shadow for depth
        toolbarHeight: 70, // Make the app bar taller for a bolder look
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.accentPurple, AppColors.accentGreen],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Text(
          book.title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                blurRadius: 8.0,
                color: Colors.black26,
                offset: Offset(2, 2),
              ),
            ],
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        iconTheme: IconThemeData(color: AppColors.color5), // White icon color
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {

            },
            color: AppColors.color5, // White color for share icon
          ),
        ],
      ),
      backgroundColor: AppColors.offWhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Book cover image container with a fixed height
        Container(
        height: 300, // Set a fixed height for the image container
        width: double.infinity, // Make it take the full width of the screen
        child: book.coverUrl.isNotEmpty
            ? Image.network(
          book.coverUrl,
          fit: BoxFit.contain, // Use BoxFit.contain to show the full image
          errorBuilder: (context, error, stackTrace) {
            // Fallback to default image if network image fails
            return Image.asset(
              'assets/images/Ebook_Cover.png',
              fit: BoxFit.contain,
            );
          },
        )
            : Image.asset(
          'assets/images/Ebook_Cover.png',
          fit: BoxFit.contain,
        ),
      ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Book title with bold style
                  Text(
                    book.title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColors.color5,
                    ),
                  ),
                  // Author's name with green accent
                  Text(
                    book.author,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  // Book description
                  Text(
                    book.description,
                    style: TextStyle(color: AppColors.color5),
                  ),
                  SizedBox(height: 20),
                  // Buy Book button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: AppColors.offWhite,
                      backgroundColor: AppColors.accentPurple,
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EbookReaderPage(book: book),
                        ),
                      );
                    },
                    child: Text("Buy Book", style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}