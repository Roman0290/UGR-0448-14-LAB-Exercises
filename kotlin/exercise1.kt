import java.time.LocalTime

fun main() {
    val currentTime: String = LocalTime.now().toString()
    val temperature: Double = 25.5
    val grade: Char = 'A'

    println("Current Time: $currentTime")
    println("Temperature: $temperature")
    println("Grade: $grade")
}