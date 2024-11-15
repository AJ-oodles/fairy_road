// class Book {
//   final String title;
//   final String author;
//   final String coverUrl;
//   final String description;
//   final String pdfUrl; // URL to the PDF file of the book
//
//   Book({required this.title, required this.author, required this.coverUrl, required this.description, required this.pdfUrl});
// }
// book.dart (Book model)
import 'dart:ui';
class Book {
  final String title;
  final String author;
  final String coverUrl;
  final String image;
  final String description;
  final String pdfUrl;
  final bool isAssetCover;

  Book({
    required this.title,
    required this.author,
    required this.image,
    required this.coverUrl,
    required this.description,
    required this.pdfUrl,
    this.isAssetCover = false,
  });
}

final List<Book> books = [
  Book(
    title: 'RICH DAD POOR DAD',
    author: 'Robert t.Kiyosaki',
    coverUrl: 'https://m.media-amazon.com/images/I/814XbqXAz-L._UF894,1000_QL80_.jpg',
    description: 'A book about Money and investing of money',
    pdfUrl: 'https://drive.google.com/uc?export=download&id=15v8oGSGeFnQByG88Ra5C6X1ndb96qfko',
    image: '',
    isAssetCover: false,
  ),
  Book(
    title: 'Oathsworn: A Page Price',
    author: ' Dwayne A. Thomason',
    coverUrl: '',
    image: 'assets/images/Ebook_Cover.png',
    description: 'On the hunt for the big score that will finally win his cruel master’s approval, a young thief is caught and receives a second chance at life and a newfound family; but when that family comes under the threat of war, he must choose either to pay the ultimate price to save them, or abandon them to their fate.',
    pdfUrl: 'https://drive.google.com/uc?export=download&id=15v8oGSGeFnQByG88Ra5C6X1ndb96qfko',
    isAssetCover: true,
  ),
];