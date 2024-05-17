fun main() {
    val start = 1
    val end = 100

    println("Prime numbers between $start and $end:")
    var number = start
    while (number <= end) {
        var isPrime = true
        if (number == 1) {
            isPrime = false
        } else {
            var divisor = 2
            while (divisor * divisor <= number) {
                if (number % divisor == 0) {
                    isPrime = false
                    break
                }
                divisor++
            }
        }
        if (isPrime) {
            println(number)
        }
        number++
    }
}