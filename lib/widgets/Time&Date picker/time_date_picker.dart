import 'dart:developer';
import 'package:flutter/material.dart';

class TimeDatePicker extends StatefulWidget {
  TimeDatePicker({super.key});

  @override
  State<TimeDatePicker> createState() => _TimeDatePickerState();
}

class _TimeDatePickerState extends State<TimeDatePicker> {
  TimeOfDay? _time;
  DateTime? _date;

// user selected Time method
  Future<void> getTime(context) async {
    final TimeOfDay? userSelectedTime = await showTimePicker(
      initialEntryMode: TimePickerEntryMode.dial,
      context: context,
      initialTime: TimeOfDay.now(),
    );

    log(getTime.toString());

    setState(() {
      _time = userSelectedTime;
    });
  }

// user selected Date method
  getDate() async {
    DateTime? userSelectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1999),
      lastDate: DateTime(DateTime.now().year + 10),
    );
    setState(() {
      _date = userSelectedDate;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Time & Date Picker"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _time == null
                ? " No Selected Time"
                : "Time: ${_time!.format(context)}",
            style: const TextStyle(fontSize: 20.0),
          ),
          const SizedBox(height: 10.0),
          // Button
          ElevatedButton(
            onPressed: () => getTime(context),
            child: const Text('Picked Time'),
          ),
          const SizedBox(height: 10.0),
          const Divider(),
          Text(
            _date == null
                ? "No Select Date"
                : "Date: ${_date!.day}-${_date!.month}-${_date!.year}",
            style: const TextStyle(fontSize: 20.0),
          ),
          const SizedBox(height: 10.0),
          // Elevated Button
          ElevatedButton(
            onPressed: () => getDate(),
            child: const Text("Picked Date"),
          ),
        ],
      ),
    );
  }
}
