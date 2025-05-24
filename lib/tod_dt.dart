//timeOfDay to DateTime
import 'package:flutter/material.dart'; // TimeOfDay is in material.dart

// Function to combine a DateTime (for the date) and a TimeOfDay (for the time)
DateTime combineDateAndTime(DateTime date, TimeOfDay time) {
  return DateTime(
    date.year,
    date.month,
    date.day,
    time.hour,
    time.minute,
    // You can optionally add seconds and milliseconds if needed,
    // but TimeOfDay only provides hour and minute.
    // date.second,
    // date.millisecond,
  );
}