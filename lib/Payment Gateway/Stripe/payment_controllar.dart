import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class StripeController {
  Map<String, dynamic>? paymentIntentData;
  Future<void> makePayment(
      {required String amount, required String currency, context}) async {
    try {
      paymentIntentData = await createPaymentInten(amount, currency);
      if (paymentIntentData != null) {
        await Stripe.instance.initPaymentSheet(
            paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: paymentIntentData!['client_secret'],
          merchantDisplayName: 'SADMAN',

          // applePay: PaymentSheetApplePay(merchantCountryCode: '+880'),
          // googlePay: PaymentSheetGooglePay(
          //   merchantCountryCode: '+880',
          //   testEnv: true,
          // ),
        ));
        displayPaymentSheet(context);
      }
    } catch (e, s) {
      print('exception:$e $s');
    }
  }

  displayPaymentSheet(context) async {
    try {
      await Stripe.instance.presentPaymentSheet();
      snackBar(title: "Payment Successful");
      //print('Payment Successful');
    } on Exception catch (e) {
      if (e is StripeException) {
        snackBar(title: "Error from Stripe: ${e.error.localizedMessage}");
        // print("Error from Stripe: ${e.error.localizedMessage}");
      } else {
        snackBar(title: "Unforeseen error: ${e.toString()}");
        // print("Unforeseen error: ${e}");
      }
    } catch (e) {
      snackBar(title: "exception:$e");
      //print("exception:$e");
    }
  }

  Future createPaymentInten(String amount, String currency) async {
    String testKey = 'YOUR_Secret_KAY';

    Map<String, dynamic> body = {
      'amount': calculateAmount(amount),
      'currency': currency,
      'payment_method_types[]': 'card'
    };
    try {
      Response response = await http.post(
          Uri.parse('https://api.stripe.com/v1/payment_intents'),
          body: body,
          headers: {
            'Authorization': 'Bearer $testKey',
            'Content-Type': 'application/x-www-form-urlencoded'
          });
      Map<dynamic, dynamic> jsonData = jsonDecode(response.body.toString());
      return jsonData;
    } catch (e, s) {
      print(e.toString());
      print(s.toString());
    }
  }

  calculateAmount(String amount) {
    final price = int.parse(amount) * 100;
    return price.toString();
  }
}

//snackber Widget
void snackBar({required String title, context}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(title),
    ),
  );
}
