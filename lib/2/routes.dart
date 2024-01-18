import 'package:ambica_classes/2/org/screens/org_login_screen/org_login_screen.dart';
import 'package:ambica_classes/2/screens/add_student/add_student_screen.dart';
import 'package:ambica_classes/2/screens/dashboard_screen/dashboard_screen.dart';
import 'package:ambica_classes/2/screens/edit_student/admission_screen.dart';
import 'package:ambica_classes/2/screens/edit_student/edit_student_screen.dart';
import 'package:ambica_classes/2/screens/edit_student/inq_screen.dart';
import 'package:ambica_classes/2/screens/login_screen/login_screen.dart';
import 'package:ambica_classes/2/screens/otp_screen/otp_screen.dart';
import 'package:ambica_classes/2/screens/student_profile/student_profile_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String initialRoute = '/';
  static const String otpScreen = '/otp-screen';
  static const String dashboardScreen = '/dashboard-screen';
  static const String addStudent = '/add-student';
  static const String studentProfile = '/student-profile';
  static const String editStudent = '/edit-student';
  static const String inquiryScreen = '/inquiry-screen';
  static const String admissionScreen = '/admission-screen';
  static const String orgLoginScreen = '/org-login-screen';

  static final List<GetPage> routes = [
    GetPage(name: initialRoute, page: () => LoginScreen()),
    GetPage(name: otpScreen, page: () => OtpScreen()),
    GetPage(name: dashboardScreen, page: () => DashboardScreen()),
    GetPage(name: addStudent, page: () => AddStudentScreen()),
    GetPage(name: studentProfile, page: () => StudentProfile()),
    GetPage(name: editStudent, page: () => EditStudentScreen()),
    GetPage(name: inquiryScreen, page: () => InquiryScreen()),
    GetPage(name: admissionScreen, page: () => AdmissionScreen()),
    GetPage(name: orgLoginScreen, page: () => OrgLoginScreen()),
  ];
}
