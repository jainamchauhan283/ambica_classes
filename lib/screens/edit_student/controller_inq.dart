import 'package:get/get.dart';

class InqController extends GetxController{

  RxString name = ''.obs;

  void updateData(Map<String, dynamic> newData) {
    name.value = newData['std_name'] ?? '';
    // Update other Rx variables for other fields as needed
  }
}