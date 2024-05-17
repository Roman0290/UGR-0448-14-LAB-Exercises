fun main() {
    val number = 12321
    var temp = number
    var reversedNumber = 0

    while (temp != 0) {
        val remainder = temp % 10
        reversedNumber = reversedNumber * 10 + remainder
        temp /= 10
    }

    val isPalindrome = number == reversedNumber
    println("Is $number a palindrome? $isPalindrome")
}