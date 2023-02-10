import 'package:json_annotation/json_annotation.dart';

part 'employee.g.dart';

@JsonSerializable()
class Employee {
  num? id;
  String? employee_name;
  num? employee_salary;
  num? employee_age;
  String? profile_image;

  Employee({this.id, this.employee_name, this.employee_salary, this.employee_age, this.profile_image});

  factory Employee.fromJson(Map<String, dynamic> json) => _$EmployeeFromJson(json);

  Map<String, dynamic> toJson() => _$EmployeeToJson(this);
}

