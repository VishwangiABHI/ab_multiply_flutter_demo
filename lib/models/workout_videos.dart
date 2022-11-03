class WorkoutVideosModel {
  int? status;
  Data? data;
  String? message;
  int? statusCode;

  WorkoutVideosModel({this.status, this.data, this.message, this.statusCode});

  WorkoutVideosModel.fromJson(Map<String, dynamic> json) {
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
  String? eventTitle;
  String? subTitle;
  List<UpcomingEvents>? upcomingEvents;

  Data({this.eventTitle, this.subTitle, this.upcomingEvents});

  Data.fromJson(Map<String, dynamic> json) {
    eventTitle = json['EventTitle'];
    subTitle = json['SubTitle'];
    if (json['UpcomingEvents'] != null) {
      upcomingEvents = <UpcomingEvents>[];
      json['UpcomingEvents'].forEach((v) {
        upcomingEvents?.add(new UpcomingEvents.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['EventTitle'] = this.eventTitle;
    data['SubTitle'] = this.subTitle;
    if (this.upcomingEvents != null) {
      data['UpcomingEvents'] =
          this.upcomingEvents?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class UpcomingEvents {
  String? sessionType;
  List<Events>? events;

  UpcomingEvents({this.sessionType, this.events});

  UpcomingEvents.fromJson(Map<String, dynamic> json) {
    sessionType = json['SessionType'];
    if (json['Events'] != null) {
      events = <Events>[];
      json['Events'].forEach((v) {
        events?.add(new Events.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['SessionType'] = this.sessionType;
    if (this.events != null) {
      data['Events'] = this.events?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Events {
  int? id;
  String? eventType;
  String? eventName;
  String? subTitleOption1;
  String? subTitleOption2;
  String? eventDate;
  String? image;
  String? location;
  String? redirectURL;
  Null? embedCode;
  bool? isActive;
  String? videoDuration;
  String? redirectScreen;
  String? sessionType;
  bool? inAppBrowser;

  Events(
      {this.id,
      this.eventType,
      this.eventName,
      this.subTitleOption1,
      this.subTitleOption2,
      this.eventDate,
      this.image,
      this.location,
      this.redirectURL,
      this.embedCode,
      this.isActive,
      this.videoDuration,
      this.redirectScreen,
      this.sessionType,
      this.inAppBrowser});

  Events.fromJson(Map<String, dynamic> json) {
    id = json['Id'];
    eventType = json['EventType'];
    eventName = json['EventName'];
    subTitleOption1 = json['SubTitleOption1'];
    subTitleOption2 = json['SubTitleOption2'];
    eventDate = json['EventDate'];
    image = json['Image'];
    location = json['Location'];
    redirectURL = json['RedirectURL'];
    embedCode = json['EmbedCode'];
    isActive = json['IsActive'];
    videoDuration = json['VideoDuration'];
    redirectScreen = json['RedirectScreen'];
    sessionType = json['SessionType'];
    inAppBrowser = json['InAppBrowser'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Id'] = this.id;
    data['EventType'] = this.eventType;
    data['EventName'] = this.eventName;
    data['SubTitleOption1'] = this.subTitleOption1;
    data['SubTitleOption2'] = this.subTitleOption2;
    data['EventDate'] = this.eventDate;
    data['Image'] = this.image;
    data['Location'] = this.location;
    data['RedirectURL'] = this.redirectURL;
    data['EmbedCode'] = this.embedCode;
    data['IsActive'] = this.isActive;
    data['VideoDuration'] = this.videoDuration;
    data['RedirectScreen'] = this.redirectScreen;
    data['SessionType'] = this.sessionType;
    data['InAppBrowser'] = this.inAppBrowser;
    return data;
  }
}
