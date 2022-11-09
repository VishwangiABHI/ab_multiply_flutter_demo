import 'package:ab_multiply_demo/models/login_request.dart';
import 'package:ab_multiply_demo/models/login_response.dart';
import 'package:ab_multiply_demo/models/workout_videos.dart';
import 'package:ab_multiply_demo/network/interceptor.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:http_interceptor/http_interceptor.dart';

class NetworkHelper {
  NetworkHelper({required this.url});
  final String url;
  Map<String, String> headers = {
    'Content-Type': 'application/json',
    'x-local-user-token': '',
    'x-abhi-api-key': 'ZMsJVnVxxjL4CYxDBRBH',
    'x-abhi-token': 'V2kpIQwOsP2mroTNZhRk',
    'x-client-token': '',
    'p1': '',
    'p2': 'android',
    'p3': '7.5',
    'p5': '',
    'X-NewRelic-ID': 'VgcHVlRaDBADU1BSBQEGXlc=',
  };

  http.Client client = InterceptedClient.build(interceptors: [
    NetworkInterceptor(),
  ]);

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print(response.statusCode);
    }
  }

  Future<dynamic> postData(LoginRequestModel loginRequestModel) async {
    final response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: jsonEncode({
        //"emailId": loginRequestModel.emailId,
        "emailId": loginRequestModel.emailId,
        "password": "e034db55b346a08b8debcd4c9a9b5ec39e8ae89a",
        'deviceType': 'android',
        'device': 'android',
        'fcmtoken':
            'crvcjlJUQuKIvuvOvLD2HO:APA91bFhY54VUmzOcAf12l6Ia_sc779WCjgmseLB2PnW4DBHViGSG3YtUN-uCk01LaQaXga6bHYANozsL5peknYgZ_yQWuwSEtfwU_BzehXJU6d2Pon3l8TrqWD2pgLO9bZ5s7Jeq3rr',
        'osVersion': '7.5',
        'IsRemember': true,
        'IsFingerPrintLogin': false,
        'RegFingerPrint': false
      }),
    );

    print(response.statusCode);

    if (response.statusCode == 200) {
      return 'Login Successful';
    } else if (response.statusCode == 201) {
      return LoginResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create album.');
    }
  }

  Future<LoginResponse> postDataNew(LoginRequestModel loginRequestModel) async {
    final response = await http.post(
      Uri.parse(url),
      headers: headers,
      body: jsonEncode({
        //"emailId": loginRequestModel.emailId,
        "emailId": loginRequestModel.emailId,
        "password": "e034db55b346a08b8debcd4c9a9b5ec39e8ae89a",
        'deviceType': 'android',
        'device': 'android',
        'fcmtoken':
            'crvcjlJUQuKIvuvOvLD2HO:APA91bFhY54VUmzOcAf12l6Ia_sc779WCjgmseLB2PnW4DBHViGSG3YtUN-uCk01LaQaXga6bHYANozsL5peknYgZ_yQWuwSEtfwU_BzehXJU6d2Pon3l8TrqWD2pgLO9bZ5s7Jeq3rr',
        'osVersion': '7.5',
        'IsRemember': true,
        'IsFingerPrintLogin': false,
        'RegFingerPrint': false
      }),
    );

    print(response.statusCode);

    if (response.statusCode == 200) {
      print(LoginResponse.fromJson(jsonDecode(response.body)).message);
      return LoginResponse.fromJson(jsonDecode(response.body));
    } else if (response.statusCode == 201) {
      return LoginResponse.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to create album.');
    }
  }

  Future<WorkoutVideosModel> getWorkoutVideos() async {
    http.Response response = await http.get(
      Uri.parse(url),
      headers: headers,
    );
    WorkoutVideosModel model =
        WorkoutVideosModel.fromJson(await jsonDecode(response.body));
    return model;
  }
}
