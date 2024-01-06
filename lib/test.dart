// import 'dart:io';
//
// import 'package:ambica_classes/firebase_options.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//     options: DefaultFirebaseOptions.currentPlatform,
//   );
//   runApp(MyApp());
// }
//
// class FirebaseStorageService {
//   final FirebaseStorage _firebaseStorage = FirebaseStorage.instance;
//   final ImagePicker _picker = ImagePicker();
//
//   Future<String?> uploadImageToFirebase() async {
//     final XFile? pickedImage = await _picker.pickImage(source: ImageSource.gallery);
//
//     if (pickedImage == null) return null;
//
//     File imageFile = File(pickedImage.path);
//     String fileName = DateTime.now().millisecondsSinceEpoch.toString(); // Unique filename
//
//     try {
//       UploadTask uploadTask = _firebaseStorage.ref('images/$fileName').putFile(imageFile);
//       TaskSnapshot taskSnapshot = await uploadTask;
//       String imageUrl = await taskSnapshot.ref.getDownloadURL();
//
//       return imageUrl;
//     } catch (e) {
//       print("Error uploading image: $e");
//       return null;
//     }
//   }
// }
//
// class MyApp extends StatelessWidget {
//   final FirebaseStorageService storageService = FirebaseStorageService();
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Image Upload to Firebase'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 onPressed: () async {
//                   String? imageUrl = await storageService.uploadImageToFirebase();
//                   if (imageUrl != null) {
//                     print('Image uploaded. URL: $imageUrl');
//                   } else {
//                     print('Image upload failed.');
//                   }
//                 },
//                 child: Text('Pick and Upload Image'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
