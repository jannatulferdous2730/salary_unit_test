class SalaryCalculation {

  int calculateSalary(int hour) {
    int baseRate = 400;
    int additionalRate = 600;
    int salary;

    if (hour <= 40) {
      salary = hour * baseRate;
    } else {
      salary = (40 * baseRate) + ((hour - 40) * additionalRate);
    }

    return salary;
  }

}