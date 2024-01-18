class OrgModel {
  final String orgCode;

  OrgModel({required this.orgCode});

  factory OrgModel.fromJson(Map<String, dynamic> json) {
    return OrgModel(
      orgCode: json['org_code'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'org_code': orgCode,
    };
  }
}
