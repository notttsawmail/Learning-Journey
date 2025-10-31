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

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: TextStyle(fontSize: 18, color: Colors.black),
        ),
      ),
      home: Scaffold(
        body: Center(
          child: RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: <TextSpan>[
                TextSpan(text: 'This'),
                TextSpan(
                  text: 'is',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                TextSpan(text: 'all Widgets'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
