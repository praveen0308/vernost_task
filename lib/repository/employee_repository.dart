import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../models/api_result.dart';
import '../network/api_client.dart';

class EmployeeRepository {
  late Dio _dio;
  late ApiClient _apiClient;

  EmployeeRepository() {
    _dio = Dio();
    _dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      compact: false,
    ));
    _apiClient = ApiClient(_dio);
  }

  Future<ApiResult> fetchEmployees() {
    return _apiClient.fetchEmployees();
  }
}
