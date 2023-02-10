import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vernost_task/models/employee.dart';
import 'package:vernost_task/ui/employee_view.dart';
import 'package:vernost_task/ui/home_page_cubit.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    BlocProvider.of<HomePageCubit>(context).fetchEmployees();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: BlocConsumer<HomePageCubit,HomePageState>(
        listener:(_, state) {},
        builder: (_, state) {
          if(state is LoadingData){
            return const Center(child: CircularProgressIndicator(),);
          }
          if(state is Error){
            return Center(child: Text(state.msg),);
          }
          if(state is ReceivedData){
            var employees = state.employees;

            List<Widget> employeesViews = [];

            for(Employee e in employees){
              employeesViews.add(EmployeeView(data: e));
            }
            return SingleChildScrollView(
              child: Column(
                children:
                  employeesViews..toList()
                ,
              ),
            );
          }
          return Container();
        },
      ),
    ));
  }
}
