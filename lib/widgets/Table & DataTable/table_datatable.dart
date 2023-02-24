import 'package:flutter/material.dart';

class TableAndDataTable extends StatelessWidget {
// const TableAndDataTable({super.key});

  final List<Map<String, dynamic>> _data = [
    {"name": "John", "age": 25, "country": "USA"},
    {"name": "Jane", "age": 30, "country": "Canada"},
    {"name": "Mark", "age": 35, "country": "Australia"},
    {"name": "Emily", "age": 27, "country": "UK"},
  ];

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
          const Text(
            "Table Example",
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          const Divider(),
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
          ),
          const SizedBox(height: 50.0),
          DataTable(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
            ),
            columns: const <DataColumn>[
              DataColumn(label: Text("Name")),
              DataColumn(label: Text("Age")),
              DataColumn(label: Text("Country")),
            ],
            rows: _data
                .map((data) => DataRow(
                      cells: [
                        DataCell(
                          Text(data["name"]),
                        ),
                        DataCell(
                          Text(data["age"].toString()),
                        ),
                        DataCell(
                          Text(data["country"]),
                        ),
                      ],
                    ))
                .toList(),
          ),
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
