import 'package:json_annotation/json_annotation.dart';
import 'package:vernost_task/models/employee.dart';

part 'api_result.g.dart';

@JsonSerializable()
class ApiResult {
  String? status;
  List<Employee>? data;
  String? message;

  ApiResult({this.status, this.data, this.message});

  factory ApiResult.fromJson(Map<String, dynamic> json) => _$ApiResultFromJson(json);

  Map<String, dynamic> toJson() => _$ApiResultToJson(this);
}
