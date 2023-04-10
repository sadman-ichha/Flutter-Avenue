import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AgeHome extends StatefulWidget {
  const AgeHome({Key? key}) : super(key: key);

  @override
  State<AgeHome> createState() => _AgeHomeState();
}

class _AgeHomeState extends State<AgeHome> {
  String myAge = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Age Calculator '),
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Theme.of(context).primaryColor),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your Age is', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 10),
            Text(myAge),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => pickDob(),
              child: const Text('Pick Your Date of Birth'),
            )
          ],
        ),
      ),
    );
  }

  pickDob() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime.now())
        .then((pickedDate) {
      if (pickedDate != null) {
        calculateAge(pickedDate);
      }
    });
  }

  calculateAge(DateTime birth) {
    DateTime now = DateTime.now();
    Duration age = now.difference(birth);
    int years = age.inDays ~/ 365;
    int months = (age.inDays % 365) ~/ 30;
    int days = ((age.inDays % 365) % 30);
    setState(() {
      myAge = '$years years, $months months and $days days';
    });
  }
}
