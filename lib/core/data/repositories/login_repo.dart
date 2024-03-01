import 'package:treatment_app/core/presentation/utils/api_services.dart';
import 'package:treatment_app/core/presentation/utils/api_urls.dart';

class LoginRepo {
  EitherResponse login(
      {required String email, required String password}) async {
    Map<String, String> loginData = {"username": email, "password": password};
    String url = NetworkUrls.login;
    return ApiService.postApi(loginData, url);
  }
}
