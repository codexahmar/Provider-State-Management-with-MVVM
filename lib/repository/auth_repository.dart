import 'package:mvvm_architecture/data/network/BasedApiServices.dart';
import 'package:mvvm_architecture/data/network/NetworkApiServices.dart';
import 'package:mvvm_architecture/resources/app_url.dart';

class AuthRepository {
  BasedApiServices _apiServices = NetworkApiServices();

  Future<dynamic> loginApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.postApiResponse(AppUrl.loginEndPoint, data);
      return response;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> signUpApi(dynamic data) async {
    try {
      dynamic response =
          await _apiServices.postApiResponse(AppUrl.signUpEndPoint, data);
      return response;
    } catch (e) {
      throw e;
    }
  }
}
