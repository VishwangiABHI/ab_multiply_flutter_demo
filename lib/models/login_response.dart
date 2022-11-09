class LoginResponse {
  int? status;
  Data? data;
  String? message;
  int? statusCode;

  LoginResponse({this.status, this.data, this.message, this.statusCode});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
    statusCode = json['statusCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data?.toJson();
    }
    data['message'] = this.message;
    data['statusCode'] = this.statusCode;
    return data;
  }
}

class Data {
  String? coreId;
  Null? partyId;
  String? gender;
  String? name;
  String? age;
  String? imagePath;
  String? validicUserId;
  String? validicAccessToken;
  String? contractNo;
  String? contractMember;
  String? userToken;
  Null? uberToken;
  String? lastLoginDate;
  String? dOB;
  String? mobileNumber;
  String? emailId;
  String? createdAt;
  bool? isMinKycDone;
  Settings? settings;
  List<DevicesLinked>? devicesLinked;
  ContractDetails? contractDetails;

  Data(
      {this.coreId,
      this.partyId,
      this.gender,
      this.name,
      this.age,
      this.imagePath,
      this.validicUserId,
      this.validicAccessToken,
      this.contractNo,
      this.contractMember,
      this.userToken,
      this.uberToken,
      this.lastLoginDate,
      this.dOB,
      this.mobileNumber,
      this.emailId,
      this.createdAt,
      this.isMinKycDone,
      this.settings,
      this.devicesLinked,
      this.contractDetails});

  Data.fromJson(Map<String, dynamic> json) {
    coreId = json['coreId'];
    partyId = json['partyId'];
    gender = json['gender'];
    name = json['name'];
    age = json['age'];
    imagePath = json['imagePath'];
    validicUserId = json['validicUserId'];
    validicAccessToken = json['validicAccessToken'];
    contractNo = json['contractNo'];
    contractMember = json['contractMember'];
    userToken = json['userToken'];
    uberToken = json['uberToken'];
    lastLoginDate = json['lastLoginDate'];
    dOB = json['DOB'];
    mobileNumber = json['mobileNumber'];
    emailId = json['emailId'];
    createdAt = json['createdAt'];
    isMinKycDone = json['IsMinKycDone'];
    settings = json['settings'] != null
        ? new Settings.fromJson(json['settings'])
        : null;
    if (json['DevicesLinked'] != null) {
      devicesLinked = <DevicesLinked>[];
      json['DevicesLinked'].forEach((v) {
        devicesLinked?.add(new DevicesLinked.fromJson(v));
      });
    }
    contractDetails = json['ContractDetails'] != null
        ? new ContractDetails.fromJson(json['ContractDetails'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['coreId'] = this.coreId;
    data['partyId'] = this.partyId;
    data['gender'] = this.gender;
    data['name'] = this.name;
    data['age'] = this.age;
    data['imagePath'] = this.imagePath;
    data['validicUserId'] = this.validicUserId;
    data['validicAccessToken'] = this.validicAccessToken;
    data['contractNo'] = this.contractNo;
    data['contractMember'] = this.contractMember;
    data['userToken'] = this.userToken;
    data['uberToken'] = this.uberToken;
    data['lastLoginDate'] = this.lastLoginDate;
    data['DOB'] = this.dOB;
    data['mobileNumber'] = this.mobileNumber;
    data['emailId'] = this.emailId;
    data['createdAt'] = this.createdAt;
    data['IsMinKycDone'] = this.isMinKycDone;
    if (this.settings != null) {
      data['settings'] = this.settings?.toJson();
    }
    if (this.devicesLinked != null) {
      data['DevicesLinked'] =
          this.devicesLinked?.map((v) => v.toJson()).toList();
    }
    if (this.contractDetails != null) {
      data['ContractDetails'] = this.contractDetails?.toJson();
    }
    return data;
  }
}

class Settings {
  MultiplyVideo? multiplyVideo;
  String? multiplyRenewUrl;
  Null? amazon;
  bool? enableFPSettings;

  Settings(
      {this.multiplyVideo,
      this.multiplyRenewUrl,
      this.amazon,
      this.enableFPSettings});

  Settings.fromJson(Map<String, dynamic> json) {
    multiplyVideo = json['multiplyVideo'] != null
        ? new MultiplyVideo.fromJson(json['multiplyVideo'])
        : null;
    multiplyRenewUrl = json['MultiplyRenewUrl'];
    amazon = json['Amazon'];
    enableFPSettings = json['EnableFPSettings'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.multiplyVideo != null) {
      data['multiplyVideo'] = this.multiplyVideo?.toJson();
    }
    data['MultiplyRenewUrl'] = this.multiplyRenewUrl;
    data['Amazon'] = this.amazon;
    data['EnableFPSettings'] = this.enableFPSettings;
    return data;
  }
}

class MultiplyVideo {
  String? videoUrl;
  String? embedCode;

  MultiplyVideo({this.videoUrl, this.embedCode});

  MultiplyVideo.fromJson(Map<String, dynamic> json) {
    videoUrl = json['videoUrl'];
    embedCode = json['embedCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['videoUrl'] = this.videoUrl;
    data['embedCode'] = this.embedCode;
    return data;
  }
}

class DevicesLinked {
  String? mEMBERID;
  String? dEVICENAME;
  bool? iSSYNC;
  String? app;

  DevicesLinked({this.mEMBERID, this.dEVICENAME, this.iSSYNC, this.app});

  DevicesLinked.fromJson(Map<String, dynamic> json) {
    mEMBERID = json['MEMBERID'];
    dEVICENAME = json['DEVICENAME'];
    iSSYNC = json['ISSYNC'];
    app = json['App'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['MEMBERID'] = this.mEMBERID;
    data['DEVICENAME'] = this.dEVICENAME;
    data['ISSYNC'] = this.iSSYNC;
    data['App'] = this.app;
    return data;
  }
}

class ContractDetails {
  String? contractNo;
  String? statusCd;
  String? statusDesc;
  String? proposalDate;
  String? contractDate;
  String? contractIssueDate;
  String? contractEndDate;
  String? renewalFlag;
  String? nextRenewalDate;
  String? contractRoleCd;
  String? relationToPMCd;
  String? customerId;
  String? productCd;
  String? planCd;
  String? planName;

  ContractDetails(
      {this.contractNo,
      this.statusCd,
      this.statusDesc,
      this.proposalDate,
      this.contractDate,
      this.contractIssueDate,
      this.contractEndDate,
      this.renewalFlag,
      this.nextRenewalDate,
      this.contractRoleCd,
      this.relationToPMCd,
      this.customerId,
      this.productCd,
      this.planCd,
      this.planName});

  ContractDetails.fromJson(Map<String, dynamic> json) {
    contractNo = json['contractNo'];
    statusCd = json['statusCd'];
    statusDesc = json['statusDesc'];
    proposalDate = json['proposalDate'];
    contractDate = json['contractDate'];
    contractIssueDate = json['contractIssueDate'];
    contractEndDate = json['contractEndDate'];
    renewalFlag = json['renewalFlag'];
    nextRenewalDate = json['nextRenewalDate'];
    contractRoleCd = json['contractRoleCd'];
    relationToPMCd = json['relationToPMCd'];
    customerId = json['customerId'];
    productCd = json['productCd'];
    planCd = json['planCd'];
    planName = json['planName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['contractNo'] = this.contractNo;
    data['statusCd'] = this.statusCd;
    data['statusDesc'] = this.statusDesc;
    data['proposalDate'] = this.proposalDate;
    data['contractDate'] = this.contractDate;
    data['contractIssueDate'] = this.contractIssueDate;
    data['contractEndDate'] = this.contractEndDate;
    data['renewalFlag'] = this.renewalFlag;
    data['nextRenewalDate'] = this.nextRenewalDate;
    data['contractRoleCd'] = this.contractRoleCd;
    data['relationToPMCd'] = this.relationToPMCd;
    data['customerId'] = this.customerId;
    data['productCd'] = this.productCd;
    data['planCd'] = this.planCd;
    data['planName'] = this.planName;
    return data;
  }
}
