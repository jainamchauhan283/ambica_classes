import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods{
  Future addStudent(Map<String, dynamic> stdInfo)async{
    return await FirebaseFirestore.instance.collection("student").doc().set(stdInfo);
  }

}