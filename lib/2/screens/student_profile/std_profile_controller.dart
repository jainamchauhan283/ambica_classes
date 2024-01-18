import 'package:ambica_classes/2/model/student_model.dart';
import 'package:ambica_classes/2/services/firebase_operations.dart';
import 'package:get/get.dart';

class StdProfileController extends GetxController {
  final RxList<StudentModel> students = <StudentModel>[].obs;

  @override
  void onInit() {
    readStudent();
    super.onInit();
  }

  void readStudent() async {
    try {
      var result = await FireOperations.readStudent().first;
      students.assignAll(result.docs
          .map((std) => StudentModel(
              stdType: std['type'],
              stdId: std['id'],
              stdImage: std['std_img'],
              stdName: std['std_name'],
              stdBranch: std['std_branch'],
              stdSem: std['std_semester'],
              stdYear: std['std_year'],
              stdMail: std['std_mail'],
              stdNumber: std['std_number'],
              stdUni: std['std_uni'],
              stdAdd1: std['std_add1'],
              stdAdd2: std['std_add2'],
              stdAdd3: std['std_add3'],
              stdCity: std['std_city'],
              stdZipcode: std['std_zipcode'],
              stdState: std['std_state'],
              stdCountry: std['std_country'],
              stdCourse: std['std_course'],
              stdFName: std['std_f_name'],
              stdFOccu: std['std_f_occupation'],
              stdFMail: std['std_f_mail'],
              stdFNumber: std['std_f_number'],
              stdMName: std['std_m_name'],
              stdMOccu: std['std_m_occupation'],
              stdMMail: std['std_m_mail'],
              stdMNumber: std['std_m_number'],
              stdGName: std['std_g_name'],
              stdGOccu: std['std_g_occupation'],
              stdGMail: std['std_g_mail'],
              stdGNumber: std['std_g_number']))
          .toList());
    } catch (error) {
      // Handle error
    }
  }

  Future<void> deleteStudent(String stdId) async {
    try {
      var response = await FireOperations.deleteStd(stdId);
      // Handle response if needed
      print('Response is $response');
    } catch (error) {
      print('Error message is $error');
      // Handle error
    }
  }
}
