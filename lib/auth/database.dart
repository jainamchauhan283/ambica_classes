import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods {
  Future addStudent(Map<String, dynamic> stdInfo) async {
    return await FirebaseFirestore.instance
        .collection("student")
        .doc()
        .set(stdInfo);
  }

  Future<Stream<QuerySnapshot>> getStdDetails()async{
    return await FirebaseFirestore.instance.collection("student").snapshots();
  }

  Future updateStdDetails(String id, Map<String, dynamic> updateInfo) async{
    return await FirebaseFirestore.instance.collection("student").doc(id).update(updateInfo);
  }

  Future deleteStdDetails(String id) async{
    return await FirebaseFirestore.instance.collection("student").doc(id).delete();
  }
}
