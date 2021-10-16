import 'package:flutter/material.dart';

class DocumentPage extends StatefulWidget {
  @override
  _DocumentPageState createState() => _DocumentPageState();
}

class _DocumentPageState extends State<DocumentPage> {
  final items = ['Passport', 'ID Cards', 'Sheet', 'Certificate'];
  String? value;

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Documents'), centerTitle: true),
        body: Center(
          child: Container(
            margin: EdgeInsets.all(16),
            width: 400,
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black, width: 2)),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: value,
                iconSize: 36,
                icon: Icon(Icons.arrow_drop_down, color: Colors.red),
                isExpanded: true,
                items: items.map(buildMenuItem).toList(),
                onChanged: (value) => setState(() => this.value = value),
              ),
            ),
          ),
        ),
      );

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      value: item,
      child: Text(
        item,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ));
}
