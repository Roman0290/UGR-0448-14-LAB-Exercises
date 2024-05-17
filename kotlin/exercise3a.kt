fun main() {
    print("Enter the month (1-12): ")
    val month = readLine()?.toIntOrNull()
    print("Enter the day (1-31): ")
    val day = readLine()?.toIntOrNull()

    if (month != null && day != null) {
        val season = when (month) {
            in 3..5 -> if (month == 3 && day < 20 || month == 5 && day > 31) "Invalid date"
            else "Spring"
            in 6..8 -> if (month == 6 && day < 1 || month == 8 && day > 31) "Invalid date"
            else "Summer"
            in 9..11 -> if (month == 9 && day < 1 || month == 11 && day > 30) "Invalid date"
            else "Autumn"
            in 1..2, 12 -> "Winter"
            else -> "Invalid month"
        }

        println("Season: $season")
    } else {
        println("Invalid input. Please enter valid month and day.")
    }
}