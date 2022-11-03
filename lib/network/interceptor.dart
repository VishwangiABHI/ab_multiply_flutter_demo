import 'package:http_interceptor/http_interceptor.dart';
import 'package:ab_multiply_demo/utilities/constants.dart';

class NetworkInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    print(data);
    try {
      data.params['x-abhi-api-key'] = xabhiapikey1 + xabhiapikey2;
      data.params['x-abhi-token'] = xabhitoken1 + xabhitoken2;
      data.params['x-client-token'] = usertoken;
      data.params['p1'] = p1;
      data.params['p2'] = p2;
      data.params['p3'] = p3;
      data.params['p5'] = p5;
      data.headers["Content-Type"] = "application/json";
      data.params['X-NewRelic-ID'] = "VgcHVlRaDBADU1BSBQEGXlc=";
      print(data.params);
    } catch (e) {
      print(e);
    }
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async =>
      data;
}
