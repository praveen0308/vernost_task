import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:vernost_task/models/api_result.dart';

import '../models/employee.dart';
import '../repository/employee_repository.dart';
import '../utils/network_exceptions.dart';

part 'home_page_state.dart';

class HomePageCubit extends Cubit<HomePageState> {
  final EmployeeRepository _employeeRepository;
  HomePageCubit(this._employeeRepository) : super(HomePageInitial());

  Future<void> fetchEmployees() async {
    emit(LoadingData());

    try {
      ApiResult response = await _employeeRepository.fetchEmployees();
      if (response.status=="success") {

        emit(ReceivedData(response.data!));
      } else {
        emit(Error("Failed to fetch data !!!"));
      }
    } on NetworkExceptions catch (e) {
      emit(Error("Something went wrong !!!"));
      debugPrint("Exception >>> $e");
    } on Exception catch (e) {
      emit(Error("Something went wrong !!!"));
      debugPrint("Exception >>> $e");
    }

  }
}
