// import 'package:ambica_classes/2/services/firebase_operations.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
//
// class FirstScreen extends StatelessWidget {
//   final FireOperations fireOperations = FireOperations();
//   final TextEditingController _orgCodeController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('First Screen')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: _orgCodeController,
//               decoration: InputDecoration(labelText: 'Enter Organization Code'),
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: () async {
//                 String orgCode = _orgCodeController.text;
//                 bool orgCodeExists = await fireOperations.checkOrgCodeExists(orgCode);
//
//                 if (orgCodeExists) {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => SecondScreen(
//                         orgCode: orgCode,
//                       ),
//                     ),
//                   );
//                 } else {
//                   Fluttertoast.showToast(
//                     msg: "Organization code does not exist",
//                     toastLength: Toast.LENGTH_SHORT,
//                     gravity: ToastGravity.CENTER,
//                     timeInSecForIosWeb: 1,
//                     backgroundColor: Colors.grey,
//                     textColor: Colors.white,
//                     fontSize: 16.0,
//                   );
//                 }
//               },
//               child: Text('Next'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
// class SecondScreen extends StatelessWidget {
//   final String orgCode;
//
//   SecondScreen({required this.orgCode});
//
//   final FireOperations fireOperations = FireOperations();
//   final TextEditingController _mobileNumberController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Second Screen')),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: _mobileNumberController,
//               decoration: InputDecoration(labelText: 'Enter Mobile Number'),
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: () async {
//                 String mobileNumber = _mobileNumberController.text;
//                 bool mobileNumberExists =
//                 await fireOperations.checkMobileNumberExists(orgCode, mobileNumber);
//
//                 if (mobileNumberExists) {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => ThirdScreen(
//                         mobileNumber: mobileNumber,
//                       ),
//                     ),
//                   );
//                 } else {
//                   Fluttertoast.showToast(
//                     msg: "Mobile number does not exist in the user's collection",
//                     toastLength: Toast.LENGTH_SHORT,
//                     gravity: ToastGravity.CENTER,
//                     timeInSecForIosWeb: 1,
//                     backgroundColor: Colors.grey,
//                     textColor: Colors.white,
//                     fontSize: 16.0,
//                   );
//                 }
//               },
//               child: Text('Next'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class ThirdScreen extends StatelessWidget {
//   final String mobileNumber;
//
//   ThirdScreen({required this.mobileNumber});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Third Screen')),
//       body: Center(
//         child: Text('Student list for Mobile Number: $mobileNumber'),
//       ),
//     );
//   }
// }
