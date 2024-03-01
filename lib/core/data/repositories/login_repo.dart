import 'package:treatment_app/core/presentation/utils/api_services.dart';
import 'package:treatment_app/core/presentation/utils/api_urls.dart';

class LoginRepo {
  EitherResponse login(
      {required String email, required String password}) async {
    var loginData = {"username": email, "password": password};
    String url = NetworkUrls.login;
    print(loginData);
    return ApiService.postApi(loginData, url);
  }
}
