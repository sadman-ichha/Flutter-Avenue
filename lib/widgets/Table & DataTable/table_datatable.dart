import 'package:flutter/material.dart';
import 'package:flutter_avenue/widgets/Table%20&%20DataTable/table_datatable.dart';

class TableAndDataTable extends StatelessWidget {
  const TableAndDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Table & DataTable"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Table(
            textDirection: TextDirection.ltr,
            border: TableBorder.all(width: 1.7, color: Colors.grey),
            children: [
              TableRow(
                children: [
                  tableHeading("ID"),
                  tableHeading("Name"),
                  tableHeading("Batch"),
                ],
              ),
              TableRow(
                children: [
                  data("01"),
                  data("Sadman"),
                  data("12"),
                ],
              ),
              TableRow(
                children: [
                  data("02"),
                  data("Ichha"),
                  data("15"),
                ],
              ),
              TableRow(
                children: [
                  data("03"),
                  data("Tom"),
                  data("05"),
                ],
              ),
              TableRow(
                children: [
                  data("04"),
                  data("Harry"),
                  data("16"),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

Widget tableHeading(name) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Text(
      name,
      style: const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
      textAlign: TextAlign.center,
    ),
  );
}

Widget data(name) {
  return Padding(
    padding: const EdgeInsets.all(4.0),
    child: Text(
      name,
      style: const TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400),
      textAlign: TextAlign.center,
    ),
  );
}
