

import 'package:flutter_test/flutter_test.dart';
import 'package:salary_unit_test/salary_calculation.dart';


void main()
{
  // test("Salary Unit Test", (){
  //   SalaryCalculation sc= SalaryCalculation();
  //
  //   int salary= sc.calculateSalary(35);
  //
  //   expect(salary, 14000);
  // });

  group("Group/Multiple Test", (){


    test("Salary Unit Test 1", (){
      SalaryCalculation sc= SalaryCalculation();

      int salary= sc.calculateSalary(45);

      expect(salary, 19000);
    });


    test("Salary Unit Test 2", (){
      SalaryCalculation sc= SalaryCalculation();

      int salary= sc.calculateSalary(35);

      expect(salary, 14000);
    });

    //
    //
    // test("Salary Unit Test 3", (){
    //   SalaryCalculation sc= SalaryCalculation();
    //
    //   int salary= sc.calculateSalary(42);
    //
    //   expect(salary, 25200);
    // });



  });
}