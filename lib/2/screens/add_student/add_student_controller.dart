import 'dart:convert';
import 'dart:io';

import 'package:ambica_classes/2/model/student_model.dart';
import 'package:ambica_classes/2/services/firebase_operations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddStdController extends GetxController {
  final formKey = GlobalKey<FormState>();
  String type = "";
  var name = TextEditingController();
  var branch = TextEditingController();
  var sem = TextEditingController();
  var year = TextEditingController();
  var mail = TextEditingController();
  var number = TextEditingController();
  var uni = TextEditingController();
  var add1 = TextEditingController();
  var add2 = TextEditingController();
  var add3 = TextEditingController();

  var city = TextEditingController();
  var zip = TextEditingController();
  var state = TextEditingController();
  var country = TextEditingController();
  var course = TextEditingController();

  var f_name = TextEditingController();
  var f_occu = TextEditingController();
  var f_mail = TextEditingController();
  var f_number = TextEditingController();

  var m_name = TextEditingController();
  var m_occu = TextEditingController();
  var m_mail = TextEditingController();
  var m_number = TextEditingController();

  var g_name = TextEditingController();
  var g_occu = TextEditingController();
  var g_mail = TextEditingController();
  var g_number = TextEditingController();

  Rx<File?> imagefile = Rx<File?>(null);
  void setImageFile(File? file) {
    imagefile.value = file;
  }

  String convertIntoBase64(File file) {
    List<int> imageBytes = file.readAsBytesSync();
    String base64File = base64Encode(imageBytes);
    return base64File;
  }

  Future<void> addStudent(String type) async {
    try {
      String base64Image = convertIntoBase64(imagefile.value!);
      print('base64Image $base64Image');
      await FireOperations.addStudent(StudentModel
        (
        stdType: type,
        stdId: DateTime.now().millisecondsSinceEpoch.toString(),
        stdImage: 'base64Image',
        stdName: name.text,
        stdBranch: branch.text,
        stdSem: sem.text,
        stdYear: year.text,
        stdMail: mail.text,
        stdNumber: number.text,
        stdUni: uni.text,
        stdAdd1: add1.text,
        stdAdd2: add2.text,
        stdAdd3: add3.text,
        stdCity: city.text,
        stdZipcode: zip.text,
        stdState: state.text,
        stdCountry: country.text,
        stdCourse: course.text,
        stdFName: f_name.text,
        stdFOccu: f_occu.text,
        stdFMail: f_mail.text,
        stdFNumber: f_number.text,
        stdMName: m_name.text,
        stdMOccu: m_occu.text,
        stdMMail: m_mail.text,
        stdMNumber: m_number.text,
        stdGName: g_name.text,
        stdGOccu: g_occu.text,
        stdGMail: g_mail.text,
        stdGNumber: g_number.text,
      ));
      // Clear text fields after successfully adding the student
      clearData();
    } catch (error) {
      _showDialog('Error adding Student: $error');
    }
  }

  clearData() {
    name.clear();
    branch.clear();
    sem.clear();
    year.clear();
    mail.clear();
    number.clear();
    uni.clear();
    add1.clear();
    add2.clear();
    add3.clear();
    city.clear();
    zip.clear();
    state.clear();
    country.clear();
    course.clear();
    f_name.clear();
    f_occu.clear();
    f_mail.clear();
    f_number.clear();
    m_name.clear();
    m_occu.clear();
    m_mail.clear();
    m_number.clear();
    g_name.clear();
    g_occu.clear();
    g_mail.clear();
    g_number.clear();
  }

  void _showDialog(String message) {
    Get.defaultDialog(
      title: 'Error',
      content: Text(message),
    );
  }
}
