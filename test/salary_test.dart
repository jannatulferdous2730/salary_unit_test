

import 'package:flutter_test/flutter_test.dart';
import 'package:salary_unit_test/salary_calculation.dart';


void main()
{
  test("Salary Unit Test", (){
    SalaryCalculation sc= SalaryCalculation();

    int salary= sc.calculateSalary(40);

    expect(salary, 16000);
  });

  group("Group/Multiple Test", (){


    test("Salary Unit Test 1", (){
      SalaryCalculation sc= SalaryCalculation();

      int salary= sc.calculateSalary(2);

      expect(salary, 800);
    });


    test("Salary Unit Test 2", (){
      SalaryCalculation sc= SalaryCalculation();

      int salary= sc.calculateSalary(52);

      expect(salary, 31200);
    });



    test("Salary Unit Test 3", (){
      SalaryCalculation sc= SalaryCalculation();

      int salary= sc.calculateSalary(42);

      expect(salary, 25200);
    });



  });
}