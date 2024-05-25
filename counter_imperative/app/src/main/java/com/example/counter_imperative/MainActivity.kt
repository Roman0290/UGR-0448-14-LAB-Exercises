package com.example.counter_imperative

import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity

class MainActivity : AppCompatActivity() {
    private lateinit var textViewCount: TextView
    private lateinit var buttonIncrement: Button
    private lateinit var buttonDecrement: Button
    private lateinit var buttonReset: Button

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        textViewCount = findViewById<TextView>(R.id.textView_count)
        buttonIncrement = findViewById<Button>(R.id.button_increment)
        buttonDecrement = findViewById<Button>(R.id.button_decrement)
        buttonReset = findViewById<Button>(R.id.button_reset)

        var count = 0

        buttonIncrement.setOnClickListener {
            count++
            textViewCount.text = count.toString()
        }

        buttonDecrement.setOnClickListener {
            count--
            textViewCount.text = count.toString()
        }

        buttonReset.setOnClickListener {
            count = 0
            textViewCount.text = count.toString()
        }
    }
}