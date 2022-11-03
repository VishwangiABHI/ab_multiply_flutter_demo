class LoginRequestModel {
  String emailId;
  String password;
  String deviceType;
  String device;
  String osVersion;
  String fcmtoken;
  bool IsRemember;
  bool IsFingerPrintLogin;

  LoginRequestModel(
      {required this.emailId,
      required this.password,
      required this.deviceType,
      required this.device,
      required this.fcmtoken,
      required this.osVersion,
      required this.IsRemember,
      required this.IsFingerPrintLogin}) {
    this.emailId = emailId;
    this.password = password;
    this.deviceType = deviceType;
    this.device = device;
    this.fcmtoken = fcmtoken;
    this.osVersion = osVersion;
    this.IsRemember = IsRemember;
    this.IsFingerPrintLogin = IsFingerPrintLogin;
  }

/*  factory LoginRequestModel.fromJson(Map<String, dynamic> json) {
    return LoginRequestModel(
      emailId: json['emailId'],
      password: json['password'],
      deviceType: json['deviceType'],
      device: json['device'],
      osVersion: json['osVersion'],
      fcmtoken: json['fcmtoken'],
      IsRemember: json['IsRemember'],
    );
  }*/
}
