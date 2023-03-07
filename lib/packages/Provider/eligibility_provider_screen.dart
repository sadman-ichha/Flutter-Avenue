import 'package:flutter/material.dart';

class EligibilityProviderScreen extends ChangeNotifier {
  bool value = false;
  String massage = "You have not given any input";

  void eligibilityCheck(int age) {
    if (age <= 18) {
      // You are not eligibility
      value = false;
      massage = "Your are not eligibility apply for driving License";
      notifyListeners();
    } else {
      // You are eligibility
      value = true;
      massage = "Your are apply for driving License";
      notifyListeners();
    }
  }
}
