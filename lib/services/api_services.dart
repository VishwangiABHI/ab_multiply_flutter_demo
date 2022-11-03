import 'package:ab_multiply_demo/models/login_request.dart';
import 'package:ab_multiply_demo/models/login_response.dart';
import 'package:ab_multiply_demo/utilities/constants.dart';
import 'package:ab_multiply_demo/services/networking.dart';
import 'package:ab_multiply_demo/models/workout_videos.dart';

class ApiServices {
  Future<dynamic> getConfig() async {
    var url = '$kAbhiUrl/Utility/GetConfigDetails';
    NetworkHelper network = NetworkHelper(url: url);
    return network.getData();
  }

  Future<LoginResponse> login() async {
    var url = '$kAbhiUrl/Registration/LoginStandard';
    NetworkHelper network = NetworkHelper(url: url);
    return LoginResponse.fromJson(await network.getData());
  }

  Future<dynamic> loginPost(LoginRequestModel loginRequestModel) async {
    var url = '$kAbhiUrl/Registration/LoginStandard';
    NetworkHelper network = NetworkHelper(url: url);
    return network.postData(loginRequestModel);
  }

  Future<WorkoutVideosModel> getWorkoutVideos() async {
    var url = '$kAbhiUrl/Support/WorkoutVideos';
    NetworkHelper network = NetworkHelper(url: url);
    return await network.getWorkoutVideos();
  }
}
