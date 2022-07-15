import 'package:flutter/material.dart';

class ColumnRows extends StatefulWidget {
  const ColumnRows({Key? key}) : super(key: key);

  @override
  State<ColumnRows> createState() => _ColumnRowsState();
}

class _ColumnRowsState extends State<ColumnRows> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "RowsColums",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.red),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          DataTable(columns: [
            DataColumn(label: Text("Rollno",style: TextStyle(color: Colors.red),)),
            DataColumn(label: Text("Rollno",style: TextStyle(color: Colors.red))),
            DataColumn(label: Text("Rollno",style: TextStyle(color: Colors.red)))
          ], rows: [
            DataRow(cells: 
            [
              DataCell(Text("1",style: TextStyle(color: Colors.red))),
              DataCell(Text("dff",style: TextStyle(color: Colors.red))),
              DataCell(Text("eff",style: TextStyle(color: Colors.red))),
            ]),
            DataRow(cells: 
            [
              DataCell(Text("1",style: TextStyle(color: Colors.red))),
              DataCell(Text("dff",style: TextStyle(color: Colors.red))),
              DataCell(Text("eff",style: TextStyle(color: Colors.red))),
            ]),
            DataRow(cells: 
            [
              DataCell(Text("1",style: TextStyle(color: Colors.red))),
              DataCell(Text("dff",style: TextStyle(color: Colors.red))),
              DataCell(Text("eff",style: TextStyle(color: Colors.red))),
            ])
          ])
        ],
      ),
    );
  }
}
