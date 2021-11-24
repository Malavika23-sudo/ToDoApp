// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<DataText>(
//       create: (context) => DataText(),
//       child: Scaffold(
//         appBar: AppBar(
//           title: TextWidget(),
//         ),
//         body: Level1(),
//       ),
//     );
//   }
// }

// class Level1 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(child: Level2()),
//     );
//   }
// }

// class Level2 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         TextFields(),
//         Level3(),
//       ],
//     );
//   }
// }

// class Level3 extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text('Level 3: ${Provider.of<DataText>(context).data}'),
//     );
//   }
// }

// class TextFields extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(child: TextField(
//       onChanged: (value) {
//         Provider.of<DataText>(context, listen: false).updateData(value);
//       },
//     ));
//   }
// }

// class TextWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text(Provider.of<DataText>(context, listen: false).data),
//     );
//   }
// }

// class DataText extends ChangeNotifier {
//   String data = 'some data';

//   void updateData(String dataText) {
//     data = dataText;
//     notifyListeners();
//   }
// }























// // class Home extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return ChangeNotifierProvider<Data>(
// //       create: (context) => Data(),
// //       child: Scaffold(
// //         appBar: AppBar(
// //           title: TextWidget(),
// //         ),
// //         body: Level1(),
// //       ),
// //     );
// //   }
// // }

// // class Level1 extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Center(
// //       child: Container(child: Level2()),
// //     );
// //   }
// // }

// // class Level2 extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Column(
// //       children: [
// //         TextWidget(),
// //         TextFields(),
// //         Level3(),
// //       ],
// //     );
// //   }
// // }

// // class Level3 extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       child: Text(
// //         Provider.of<Data>(
// //           context,
// //         ).data,
// //       ),
// //     );
// //   }
// // }

// // class TextFields extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(child: TextField(
// //       onChanged: (value) {
// //         Provider.of<Data>(context, listen: false).updateData(value);
// //       },
// //     ));
// //   }
// // }

// // class TextWidget extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       child: Text(Provider.of<Data>(context, listen: false).data),
// //     );
// //   }
// // }

// // class Data extends ChangeNotifier {
// //   String data = 'data from changenotifier';

// //   void updateData(String TextData) {
// //     data = TextData;
// //     notifyListeners();
// //   }
// // }
