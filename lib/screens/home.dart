import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../data/book_data.dart';
import 'book_details.dart';
//
// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//
//         appBar: AppBar(
//
//           elevation: 4, // Add slight shadow for depth
//           toolbarHeight: 70, // Make the app bar taller for a bolder look
//           flexibleSpace: Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [AppColors.accentPurple, AppColors.accentGreen],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               ),
//             ),
//           ),
//             title: Text(
//               'Fairy Road', // App name displayed here
//               style: TextStyle(
//                 color: AppColors.offWhite, // White color for the title
//                 fontSize: 24, // You can adjust the font size to your liking
//                 fontWeight: FontWeight.bold, // Bold font weight for emphasis
//               ),
//             ),
//
//           iconTheme: IconThemeData(color: AppColors.offWhite), // White icon color
//
//         ),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: GridView.builder(
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             crossAxisSpacing: 8.0,
//             mainAxisSpacing: 8.0,
//             childAspectRatio: 0.6,
//           ),
//           itemCount: books.length,
//           itemBuilder: (context, index) {
//             final book = books[index];
//             return GestureDetector(
//               onTap: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => BookDetailPage(book: book)),
//               ),
//               child: Column(
//                 children: [
//                   Expanded(
//                     child: Image.network(book.coverUrl, fit: BoxFit.cover),
//                   ),
//                   Text(book.title, style: TextStyle(fontWeight: FontWeight.bold)),
//                   Text(book.author, style: TextStyle(color: Colors.grey)),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../data/book_data.dart';
import 'book_details.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fairy Road',
          style: TextStyle(color: AppColors.color5),
        ),

        elevation: 4,
        toolbarHeight: 70,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.accentPurple, AppColors.accentGreen],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        iconTheme: IconThemeData(color: AppColors.offWhite),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.6,
          ),
          itemCount: books.length,
          itemBuilder: (context, index) {
            final book = books[index];
            return GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BookDetailPage(book: book)),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: book.isAssetCover && book.image.isNotEmpty
                        ? Image.asset(book.image, fit: BoxFit.cover)
                        : book.coverUrl.isNotEmpty
                        ? Image.network(book.coverUrl, fit: BoxFit.cover)
                        : Image.asset('assets/images/Ebook_Cover.png', fit: BoxFit.cover), // Show default image
                  ),
                  Text(
                    book.title,
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white,),
                  ),
                  Text(
                    book.author,
                    style: TextStyle(color: Colors.grey),
                  ),

                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
