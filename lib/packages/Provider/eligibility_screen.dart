import 'package:flutter/material.dart';
import 'package:flutter_avenue/packages/Provider/eligibility_provider_screen.dart';
import 'package:provider/provider.dart';

class EligibilityScreen extends StatelessWidget {
  TextEditingController _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final providerData = Provider.of<EligibilityProviderScreen>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider state Management",
            style: Theme.of(context).textTheme.bodyMedium),
        centerTitle: true,
        elevation: 9,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 30.0, left: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor:
                  providerData.value == true ? Colors.green : Colors.red,
            ),
            TextFormField(
              controller: _ageController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Give your age"),
            ),
            20.ph,
            SizedBox(
                width: 300.0,
                child: ElevatedButton(
                  onPressed: () {
                    final int userAge = int.parse(_ageController.text.trim());
                    providerData.eligibilityCheck(userAge);
                  },
                  child: const Text("Check"),
                )),
            17.ph,
            Text(providerData.massage),
          ],
        ),
      ),
    );
  }
}

extension Paddings on num {
  SizedBox get ph => SizedBox(height: toDouble());
  SizedBox get pw => SizedBox(width: toDouble());
}
