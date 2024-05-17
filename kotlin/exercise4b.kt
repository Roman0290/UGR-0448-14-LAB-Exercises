fun main() {
    val number = 5
    val factorial = calculateFactorial(number)
    println("Factorial of $number: $factorial")
}

fun calculateFactorial(number: Int): Long {
    return if (number == 0) {
        1
    } else {
        number * calculateFactorial(number - 1)
    }
}