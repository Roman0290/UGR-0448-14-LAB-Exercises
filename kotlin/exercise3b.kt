fun main() {
    print("Enter the first number: ")
    val number1 = readLine()?.toDoubleOrNull()
    print("Enter the second number: ")
    val number2 = readLine()?.toDoubleOrNull()
    print("Enter the third number: ")
    val number3 = readLine()?.toDoubleOrNull()

    if (number1 != null && number2 != null && number3 != null) {
        val largestNumber = if (number1 >= number2 && number1 >= number3) {
            number1
        } else if (number2 >= number1 && number2 >= number3) {
            number2
        } else {
            number3
        }

        println("The largest number is: $largestNumber")
    } else {
        println("Invalid input. Please enter valid numbers.")
    }
}