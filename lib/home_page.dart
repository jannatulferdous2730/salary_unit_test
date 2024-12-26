import 'package:flutter/material.dart';
import 'package:salary_unit_test/salary_calculation.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var hourController = TextEditingController();
  int ? salary;
  SalaryCalculation sc = SalaryCalculation();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Unit Test"),
      ),

      body: Column(
        children: [
          SizedBox(height: 20,),
          Text("Hour <= 40 Tk 400 & hour>40 Tk 600"),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              key: Key("hours_input"),
              controller: hourController,
              decoration: InputDecoration(
                  labelText: "Ente working hours",
                  border: OutlineInputBorder()
              ),
            ),
          ),

          SizedBox(height: 20,),
          ElevatedButton(
              key: Key("tap"),
              onPressed: (){
                //call function
                int hour =  int.parse(hourController.text);
                //salary = sc.calculateSalary(hour);

                setState(() {
                  salary = sc.calculateSalary(hour);
                });

              },
              child: Text("Calculate Salary")
          ),

          SizedBox(height: 20,),

          if(salary != null) ...[
            Text("Your salary"),

            Text("TK "+salary.toString(), style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
            ),)
          ]

        ],
      ),
    );
  }
}
