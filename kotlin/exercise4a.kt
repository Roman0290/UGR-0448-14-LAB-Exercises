fun main() {
    val numbers = intArrayOf(5, 2, 8, 1, 9, 3)
    val sortedNumbers = sortArray(numbers)
    println("Sorted Numbers: ${sortedNumbers.joinToString()}")
}

fun sortArray(numbers: IntArray): IntArray {
    for (i in 0 until numbers.size - 1) {
        for (j in 0 until numbers.size - 1 - i) {
            if (numbers[j] > numbers[j + 1]) {
                val temp = numbers[j]
                numbers[j] = numbers[j + 1]
                numbers[j + 1] = temp
            }
        }
    }
    return numbers
}
