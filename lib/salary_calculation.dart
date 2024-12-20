class SalaryCalculation {

  int calculateSalary(int hour) {
    int perHourPayment;

    if (hour <= 40) {
      perHourPayment = 400;
    } else {
      perHourPayment = 600;
    }

    return hour * perHourPayment;
  }

}