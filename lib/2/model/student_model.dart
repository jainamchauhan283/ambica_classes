import 'dart:convert';

StudentModel studentModelFromJson(String str) => StudentModel.fromJson(json.decode(str));

String studentModelToJson(StudentModel data) => json.encode(data.toJson());

class StudentModel {
  String stdType;
  String stdId;
  String stdImage;
  String stdName;
  String stdBranch;
  String stdSem;
  String stdYear;
  String stdMail;
  String stdNumber;
  String stdUni;
  String stdAdd1;
  String stdAdd2;
  String stdAdd3;
  String stdCity;
  String stdZipcode;
  String stdState;
  String stdCountry;
  String stdCourse;
  String stdFName;
  String stdFOccu;
  String stdFMail;
  String stdFNumber;
  String stdMName;
  String stdMOccu;
  String stdMMail;
  String stdMNumber;
  String stdGName;
  String stdGOccu;
  String stdGMail;
  String stdGNumber;

  StudentModel({
    required this.stdType,
    required this.stdId,
    required this.stdImage,
    required this.stdName,
    required this.stdBranch,
    required this.stdSem,
    required this.stdYear,
    required this.stdMail,
    required this.stdNumber,
    required this.stdUni,
    required this.stdAdd1,
    required this.stdAdd2,
    required this.stdAdd3,
    required this.stdCity,
    required this.stdZipcode,
    required this.stdState,
    required this.stdCountry,
    required this.stdCourse,
    required this.stdFName,
    required this.stdFOccu,
    required this.stdFMail,
    required this.stdFNumber,
    required this.stdMName,
    required this.stdMOccu,
    required this.stdMMail,
    required this.stdMNumber,
    required this.stdGName,
    required this.stdGOccu,
    required this.stdGMail,
    required this.stdGNumber,
  });

  factory StudentModel.fromJson(Map<String, dynamic> json) => StudentModel(
    stdType: json["stdType"],
    stdId: json["stdId"],
    stdImage: json["stdImage"],
    stdName: json["stdName"],
    stdBranch: json["stdBranch"],
    stdSem: json["stdSem"],
    stdYear: json["stdYear"],
    stdMail: json["stdMail"],
    stdNumber: json["stdNumber"],
    stdUni: json["stdUni"],
    stdAdd1: json["stdAdd1"],
    stdAdd2: json["stdAdd2"],
    stdAdd3: json["stdAdd3"],
    stdCity: json["stdCity"],
    stdZipcode: json["stdZipcode"],
    stdState: json["stdState"],
    stdCountry: json["stdCountry"],
    stdCourse: json["stdCourse"],
    stdFName: json["stdFName"],
    stdFOccu: json["stdFOccu"],
    stdFMail: json["stdFMail"],
    stdFNumber: json["stdFNumber"],
    stdMName: json["stdMName"],
    stdMOccu: json["stdMOccu"],
    stdMMail: json["stdMMail"],
    stdMNumber: json["stdMNumber"],
    stdGName: json["stdGName"],
    stdGOccu: json["stdGOccu"],
    stdGMail: json["stdGMail"],
    stdGNumber: json["stdGNumber"],
  );

  Map<String, dynamic> toJson() => {
    "stdType": stdType,
    "stdId": stdId,
    "stdImage": stdImage,
    "stdName": stdName,
    "stdBranch": stdBranch,
    "stdSem": stdSem,
    "stdYear": stdYear,
    "stdMail": stdMail,
    "stdNumber": stdNumber,
    "stdUni": stdUni,
    "stdAdd1": stdAdd1,
    "stdAdd2": stdAdd2,
    "stdAdd3": stdAdd3,
    "stdCity": stdCity,
    "stdZipcode": stdZipcode,
    "stdState": stdState,
    "stdCountry": stdCountry,
    "stdCourse": stdCourse,
    "stdFName": stdFName,
    "stdFOccu": stdFOccu,
    "stdFMail": stdFMail,
    "stdFNumber": stdFNumber,
    "stdMName": stdMName,
    "stdMOccu": stdMOccu,
    "stdMMail": stdMMail,
    "stdMNumber": stdMNumber,
    "stdGName": stdGName,
    "stdGOccu": stdGOccu,
    "stdGMail": stdGMail,
    "stdGNumber": stdGNumber,
  };
}
