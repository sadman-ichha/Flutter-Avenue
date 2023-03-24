import 'package:flutter/material.dart';
import 'package:flutter_avenue/Payment%20Gateway/Stripe/payment_controllar.dart';

class PaymentScreen extends StatelessWidget {
  //const PaymentScreen({super.key});
  PaymentScreen({super.key});
  StripeController stripeController = StripeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stripe Payment Gateway",
            style: Theme.of(context).textTheme.bodyMedium),
        centerTitle: true,
        elevation: 9,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () =>
              stripeController.makePayment(amount: "500", currency: "USD"),
          child: const Text("Payment Now"),
        ),
      ),
    );
  }
}
