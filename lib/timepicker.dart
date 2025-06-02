import 'package:flutter/material.dart';
import 'playsound.dart';
import 'tod_dt.dart';

class time_picker extends StatefulWidget {
  const time_picker({super.key});

  @override
  State<time_picker> createState() => _time_pickerState();
}

class _time_pickerState extends State<time_picker> {
  TimeOfDay selectedTime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextButton(
            onPressed: () async {
              final TimeOfDay? time = await showTimePicker(
                context: context,
                initialTime: selectedTime,
                initialEntryMode: TimePickerEntryMode.dial,
              );
              if (time != null) {
                setState(() {
                  selectedTime = time;
                  DateTime dTime = DateTime.now();
                  
                  PlaySound().scheduleAzan(combineDateAndTime(dTime, time));
                });
              }
            },
            child: Text('${selectedTime.hour}:${selectedTime.minute}'),
          ),
        ],
      ),
    );
  }
}
