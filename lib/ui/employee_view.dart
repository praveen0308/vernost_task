import 'package:flutter/material.dart';
import 'package:vernost_task/models/employee.dart';

class EmployeeView extends StatelessWidget {
  final Employee data;

  const EmployeeView({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(border: Border.all(color: Colors.black26)),
      child: Row(
        children: [
          CircleAvatar(
            child: Text(data.employee_name?.substring(0, 1) ?? "_"),
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.employee_name ?? "NA",
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              Text("Age : ${data.employee_age.toString()}"),
            ],
          )
        ],
      ),
    );
  }
}
