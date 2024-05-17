fun main() {
    print("Enter the number of hours worked: ")
    val hoursWorked = readLine()?.toDoubleOrNull()
    print("Enter the hourly rate: ")
    val hourlyRate = readLine()?.toDoubleOrNull()

    if (hoursWorked != null && hourlyRate != null) {
        val regularHours = 40
        val overtimeRate = 1.5

        val regularPay = if (hoursWorked <= regularHours) {
            hoursWorked * hourlyRate
        } else {
            regularHours * hourlyRate
        }

        val overtimePay = if (hoursWorked > regularHours) {
            (hoursWorked - regularHours) * hourlyRate * overtimeRate
        } else {
            0.0
        }

        val totalSalary = regularPay + overtimePay

        println("Regular Pay: \$${String.format("%.2f", regularPay)}")
        println("Overtime Pay: \$${String.format("%.2f", overtimePay)}")
        println("Total Salary: \$${String.format("%.2f", totalSalary)}")
    } else {
        println("Invalid input. Please enter valid hours worked and hourly rate.")
    }
}