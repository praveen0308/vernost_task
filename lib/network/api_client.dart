import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:vernost_task/models/api_result.dart';

import '../utils/api_constats.dart';
part 'api_client.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  //#region Video Service
  @GET("employees")
  Future<ApiResult> fetchEmployees();


}
