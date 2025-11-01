import 'package:flutter/material.dart';

// !Selectable Text
void main() {
  runApp(MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Different Text Type')),
//         body: const Center(
//           child: SelectionArea(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Text('Selectable text'),
//                 SelectionContainer.disabled(child: Text('Non-selectable text')),
//                 Text('Selectable Text'),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// ! DefaultTextStyle

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         textTheme: TextTheme(
//           bodyMedium: TextStyle(fontSize: 18, color: Colors.black),
//         ),
//       ),
//       home: Scaffold(
//         body: Center(
//           child: RichText(
//             text: TextSpan(
//               style: DefaultTextStyle.of(context).style,
//               children: <TextSpan>[
//                 TextSpan(text: 'This'),
//                 TextSpan(
//                   text: 'is',
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 TextSpan(text: 'all Widgets'),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// ! Layout
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //! Layout one
        // body: Center(
        //   child: Image(
        //     image: AssetImage('assets/images/meme.jpg'),
        //     width: 200,
        //     height: 150,
        //   ),
        // ),

        // ! Layout two
        // body: Container(
        //   padding: EdgeInsets.all(16.0),
        //   child: Image(image: AssetImage('assets/images/meme.jpg')),
        // ),

        //! Layout Three
        // body: Center(
        //   child: Container(
        //     padding: EdgeInsets.all(16.0),
        //     child: Image(image: AssetImage('assets/images/meme.jpg')),
        //   ),
        // ),

        // ! Layout with Multiple widgets (vertically and horizontally)
        // * Veritcally
        // body: Row(
        //   children: [
        //     Image(
        //       image: AssetImage('assets/images/meme.jpg'),
        //       width: 200,
        //       height: 150,
        //     ),
        //     Image(
        //       image: AssetImage('assets/images/meme.jpg'),
        //       width: 200,
        //       height: 150,
        //     ),
        //   ],
        // ),

        // * Row(horizontal) and Column(vertical)
        // body: Row(
        //   // mainAxisAlignment: MainAxisAlignment.start,
        //   children: <Widget>[
        //     Column(
        //       children: [
        //         Image(
        //           image: AssetImage('assets/images/meme.jpg'),
        //           width: 200,
        //           height: 150,
        //         ),
        //         Text('Meme 1'),
        //       ],
        //     ),

        //     Column(
        //       children: [
        //         Image(
        //           image: AssetImage('assets/images/meme.jpg'),
        //           width: 200,
        //           height: 150,
        //         ),
        //         Text('Meme 2'),
        //       ],
        //     ),
        //   ],
        // ),

        // !Alignment
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Image(
                image: AssetImage('assets/images/meme.jpg'),
                width: 200,
                height: 150,
              ),
            ),
            Expanded(
              flex: 2,
              child: Image(
                image: AssetImage('assets/images/meme.jpg'),
                width: 200,
                height: 150,
              ),
            ),
            Expanded(
              child: Image(
                image: AssetImage('assets/images/meme.jpg'),
                width: 200,
                height: 150,
              ),
            ),
          ],
        ),

        //! Wrap
        // body: Wrap(
        //   children: [
        //     Image(
        //       image: AssetImage('assets/images/meme.jpg'),
        //       width: 200,
        //       height: 150,
        //     ),
        //     Image(
        //       image: AssetImage('assets/images/meme.jpg'),
        //       width: 200,
        //       height: 150,
        //     ),
        //     Image(
        //       image: AssetImage('assets/images/meme.jpg'),
        //       width: 200,
        //       height: 150,
        //     ),
        //     Image(
        //       image: AssetImage('assets/images/meme.jpg'),
        //       width: 200,
        //       height: 150,
        //     ),
        //     Image(
        //       image: AssetImage('assets/images/meme.jpg'),
        //       width: 200,
        //       height: 150,
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
