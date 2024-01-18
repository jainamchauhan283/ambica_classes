import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:convert';

class ImagePickController extends GetxController {
  final RxString _pickedImagePath = ''.obs;
  final RxString _base64Image = ''.obs;

  String get pickedImagePath => _pickedImagePath.value;

  String get base64Image => _base64Image.value;

  Future<void> pickImage(ImageSource source) async {
    try {
      final pickedFile = await ImagePicker().pickImage(source: source);
      if (pickedFile != null) {
        _pickedImagePath.value = pickedFile.path;
        _base64Image.value = '';
      }
    } catch (e) {
      print('Error picking image: $e');
    }
  }

  void convertToBase64() {
    if (_pickedImagePath.isNotEmpty) {
      final File imageFile = File(_pickedImagePath.value);
      final List<int> imageBytes = imageFile.readAsBytesSync();
      final String base64ImageValue = base64Encode(imageBytes);
      _base64Image.value = base64ImageValue;
    }
  }
}
