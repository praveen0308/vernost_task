// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Employee _$EmployeeFromJson(Map<String, dynamic> json) => Employee(
      id: json['id'] as num?,
      employee_name: json['employee_name'] as String?,
      employee_salary: json['employee_salary'] as num?,
      employee_age: json['employee_age'] as num?,
      profile_image: json['profile_image'] as String?,
    );

Map<String, dynamic> _$EmployeeToJson(Employee instance) => <String, dynamic>{
      'id': instance.id,
      'employee_name': instance.employee_name,
      'employee_salary': instance.employee_salary,
      'employee_age': instance.employee_age,
      'profile_image': instance.profile_image,
    };
