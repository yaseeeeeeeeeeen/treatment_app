import 'package:treatment_app/core/presentation/utils/api_services.dart';
import 'package:treatment_app/core/presentation/utils/api_urls.dart';

class HospitalDataRepo {
  EitherResponse branchGet({required String token}) async {
    String url = NetworkUrls.branche;
    return ApiService.getApi(url, token);
  }
  EitherResponse treatmentList({required String token}) async {
    String url = NetworkUrls.treatmentList;
    return ApiService.getApi(url, token);
  }

  EitherResponse patientList({required String token}) async {
    String url = NetworkUrls.patientList;
    return ApiService.getApi(url, token);
  }
}
