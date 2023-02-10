import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vernost_task/repository/employee_repository.dart';
import 'package:vernost_task/ui/home_page.dart';
import 'package:vernost_task/ui/home_page_cubit.dart';

const String homePage = '/';


Route<dynamic> controller(RouteSettings settings) {
  final args = settings.arguments;
  switch (settings.name) {
    case homePage:
      return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => HomePageCubit(RepositoryProvider.of<EmployeeRepository>(context)),
            child: const HomePage(),
          ),
          settings: settings);

    default:
      throw ('this route name does not exist');
  }
}