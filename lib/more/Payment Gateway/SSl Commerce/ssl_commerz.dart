import 'package:flutter/material.dart';
import 'package:flutter_sslcommerz/model/SSLCSdkType.dart';
import 'package:flutter_sslcommerz/model/SSLCTransactionInfoModel.dart';
import 'package:flutter_sslcommerz/model/SSLCurrencyType.dart';
import 'package:flutter_sslcommerz/sslcommerz.dart';
import 'package:flutter_sslcommerz/model/SSLCommerzInitialization.dart';
import 'package:fluttertoast/fluttertoast.dart';

class SslCommerzPaymentScreen extends StatelessWidget {
  const SslCommerzPaymentScreen({super.key});


  Future<void> sslCommerzCall(double amount) async {
    Sslcommerz sslcommerz = Sslcommerz(
      initializer: SSLCommerzInitialization(
        store_id: "sadma642014e6b4429",
        store_passwd: "sadma642014e6b4429@ssl",
        total_amount: amount,
        currency: SSLCurrencyType.BDT,
        tran_id: "12123",
        product_category: "Food",
        sdkType: SSLCSdkType.TESTBOX,
      ),
    );

    // try {
    //   SSLCTransactionInfoModel result = await sslcommerz.payNow();
    //   if (result.status!.toLowerCase() == "failed") {
    //     snackBar(title: "Transaction is Failed....");
    //   } else if (result.status!.toLowerCase() == "closed") {
    //     snackBar(title: "SDK Closed by User");
    //   } else {
    //     snackBar(
    //         title:
    //             "Transaction is ${result.status} and Amount is ${result.amount}");
    //   }
    // } catch (e) {
    //   // print(e.toString());
    //   debugPrint(e.toString());
    // }
    try {
      SSLCTransactionInfoModel result = await sslcommerz.payNow();

      if (result.status!.toLowerCase() == "failed") {
        Fluttertoast.showToast(
          msg: "Transaction is Failed....",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      } else if (result.status!.toLowerCase() == "closed") {
        Fluttertoast.showToast(
          msg: "SDK Closed by User",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
      } else {
        Fluttertoast.showToast(
            msg:
                "Transaction is ${result.status} and Amount is ${result.amount}",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.CENTER,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.black,
            textColor: Colors.white,
            fontSize: 16.0);
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SslCommerz Payment Gateway",
            style: Theme.of(context).textTheme.bodyMedium),
        centerTitle: true,
        elevation: 9,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => sslCommerzCall(500.0),
          child: const Text("Payment Now with SslCommerz"),
        ),
      ),
    );
  }
}
