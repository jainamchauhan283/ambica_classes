import 'package:ambica_classes/2/model/student_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

var db = FirebaseFirestore.instance;

class FireOperations {
  static addStudent(StudentModel st) {
    String response = '';
    final student = <String, dynamic>{
      'type': st.stdType,
      "id": st.stdId,
      "std_img": st.stdImage,
      "std_name": st.stdName,
      "std_branch": st.stdBranch,
      "std_semester": st.stdSem,
      "std_year": st.stdYear,
      "std_mail": st.stdMail,
      "std_number": st.stdNumber,
      "std_uni": st.stdUni,
      "std_add1": st.stdAdd1,
      "std_add2": st.stdAdd2,
      "std_add3": st.stdAdd3,
      "std_city": st.stdCity,
      "std_zipcode": st.stdZipcode,
      "std_state": st.stdState,
      "std_country": st.stdCountry,
      "std_course": st.stdCourse,
      // Father's
      "std_f_name": st.stdFName,
      "std_f_occupation": st.stdFOccu,
      "std_f_mail": st.stdFMail,
      "std_f_number": st.stdFNumber,
      // Mother's
      "std_m_name": st.stdMName,
      "std_m_occupation": st.stdMOccu,
      "std_m_mail": st.stdMMail,
      "std_m_number": st.stdMNumber,
      // Guardian's
      "std_g_name": st.stdGName,
      "std_g_occupation": st.stdGOccu,
      "std_g_mail": st.stdGMail,
      "std_g_number": st.stdGNumber,
    };
// Add a new document with a generated ID
    db
        .collection("students")
        .add(student)
        .whenComplete(() => response = "Sucessfully added to the database")
        .catchError((e) => response = e)
        .then((DocumentReference doc) =>
            print('DocumentSnapshot added with ID: ${doc.id}'));
    return response;
  }

  // read data
  static Stream<QuerySnapshot> readStudent() {
    CollectionReference students = db.collection("students");
    return students.snapshots();
  }

  // update data
  static updateStudent(StudentModel st) {
    String response = '';
    CollectionReference students = db.collection("students");
    print('document id is ${st.stdId}');
    DocumentReference docRef = students.doc(st.stdId);
    // print('doc reference is : $docRef');
    final student = <String, dynamic>{
      "type": st.stdType,
      "std_img": st.stdImage,
      "std_name": st.stdName,
      "std_branch": st.stdBranch,
      "std_semester": st.stdSem,
      "std_year": st.stdYear,
      "std_mail": st.stdMail,
      "std_number": st.stdNumber,
      "std_uni": st.stdUni,
      "std_add1": st.stdAdd1,
      "std_add2": st.stdAdd2,
      "std_add3": st.stdAdd3,
      "std_city": st.stdCity,
      "std_zipcode": st.stdZipcode,
      "std_state": st.stdState,
      "std_country": st.stdCountry,
      "std_course": st.stdCourse,
      // Father's
      "std_f_name": st.stdFName,
      "std_f_occupation": st.stdFOccu,
      "std_f_mail": st.stdFMail,
      "std_f_number": st.stdFNumber,
      // Mother's
      "std_m_name": st.stdMName,
      "std_m_occupation": st.stdMOccu,
      "std_m_mail": st.stdMMail,
      "std_m_number": st.stdMNumber,
      // Guardian's
      "std_g_name": st.stdGName,
      "std_g_occupation": st.stdGOccu,
      "std_g_mail": st.stdGMail,
      "std_g_number": st.stdGNumber,
    };
    docRef
        .update(student)
        .whenComplete(() => response = "Sucessfully update to the database")
        .catchError((e) => response = "Error message $e");
    return response;
  }

  // delete data
  static deleteStd(String id) async {
    String response = '';
    CollectionReference students = db.collection("students");
    DocumentReference docRef = students.doc(id);
    await docRef
        .delete()
        .whenComplete(() => response = "Sucessfully deleted to the database")
        .catchError((e) => response = e);
    return response;
  }

  // organization
  static Future<bool> checkOrgCode(String orgCode) async {
    QuerySnapshot querySnapshot =
        await db.collection('org').where('org_code', isEqualTo: orgCode).get();
    return querySnapshot.docs.isNotEmpty;
  }

  Stream<QuerySnapshot> streamDataByOrgCode(String orgCode) {
    return db
        .collection('org')
        .where('org_code', isEqualTo: orgCode)
        .snapshots();
  }

  Future<QuerySnapshot> getSubcollectionData(String documentId) async {
    try {
      CollectionReference subcollectionRef = FirebaseFirestore.instance
          .collection('org')
          .doc(documentId)
          .collection('users');

      QuerySnapshot subcollectionSnapshot = await subcollectionRef.get();
      return subcollectionSnapshot;
    } catch (e) {
      // Handle errors as needed
      print('Error getting subcollection data: $e');
      throw e;
    }
  }
  static String id= "";

  // new
  static Future<bool> checkCode(String orgCode) async {
    try {
      QuerySnapshot querySnapshot = await db
          .collection('org')
          .where('org_code', isEqualTo: orgCode)
          .get();
      id = querySnapshot.docs.first.id;
      print(id);
      return querySnapshot.docs.isNotEmpty;
    } catch (e) {
      print("Error checking org code: $e");
      return false;
    }
  }

  static Future<bool> checkNumber(String orgCode, String mobileNumber) async {
    try {
      QuerySnapshot usersSnapshot = await db
          .collection('org')
          .doc(id)
          .collection('users')
          .where('mobile_no', isEqualTo: mobileNumber)
          .get();
      fetchStudent(orgCode, mobileNumber);
      return usersSnapshot.docs.isNotEmpty;
    } catch (e) {
      print("Error checking mobile number: $e");
      return false;
    }
  }
  static Future<bool> fetchStudent(String orgCode, String mobileNumber) async {
    try {
      QuerySnapshot usersSnapshot = await db
          .collection('org')
          .doc(id)
          .collection('students')
          // .where('mobile_no', isEqualTo: mobileNumber)
          .get();
print(usersSnapshot.docs.length);
      return usersSnapshot.docs.isNotEmpty;
    } catch (e) {
      print("Error checking mobile number: $e");
      return false;
    }
  }
}
