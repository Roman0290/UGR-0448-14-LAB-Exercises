fun main() {
    val string1 = "OpenAI"
    val string2 = "Hello"

    println("String 1: $string1")
    println("Contains Unique Characters: ${hasUniqueCharacters(string1)}")

    println("String 2: $string2")
    println("Contains Unique Characters: ${hasUniqueCharacters(string2)}")
}

fun hasUniqueCharacters(str: String): Boolean {
    val seenCharacters = HashSet<Char>()
    for (char in str) {
        if (seenCharacters.contains(char)) {
            return false
        }
        seenCharacters.add(char)
    }
    return true
}