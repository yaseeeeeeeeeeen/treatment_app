import 'package:treatment_app/core/presentation/utils/api_services.dart';
import 'package:treatment_app/core/presentation/utils/api_urls.dart';

class PatientAddRepo {
  EitherResponse patienntAddRepo({required Map<String, dynamic> data}) async {
    String url = NetworkUrls.patientAdd;
    return ApiService.postApi(data, url);
  }
}
