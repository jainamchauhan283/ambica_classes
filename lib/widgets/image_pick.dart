// import 'package:flutter/material.dart';
//
// class ShowImagePicker extends StatelessWidget {
//   const ShowImagePicker({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Select Image'),
//           content: SingleChildScrollView(
//             child: ListBody(
//               children: <Widget>[
//                 GestureDetector(
//                   child: Text('Take a picture'),
//                   onTap: () {
//                     controller.getImage(ImageSource.camera);
//                     Navigator.pop(context);
//                   },
//                 ),
//                 Padding(
//                   padding: EdgeInsets.all(8.0),
//                 ),
//                 GestureDetector(
//                   child: Text('Choose from gallery'),
//                   onTap: () {
//                     controller.getImage(ImageSource.gallery);
//                     Navigator.pop(context);
//                   },
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
