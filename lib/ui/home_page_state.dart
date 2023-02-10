part of 'home_page_cubit.dart';

@immutable
abstract class HomePageState {}

class HomePageInitial extends HomePageState {}
class LoadingData extends HomePageState {}
class Error extends HomePageState {
  final String msg;

  Error(this.msg);
}
class ReceivedData extends HomePageState {
  final List<Employee> employees;

  ReceivedData(this.employees);
}
