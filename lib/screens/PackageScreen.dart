import 'package:flutter/material.dart';

class PackagePage extends StatefulWidget {
  PackagePage({Key? key}) : super(key: key);

  @override
  _PackagePageState createState() => _PackagePageState();
}

class _PackagePageState extends State<PackagePage> {
  final items = [
    'Food',
    'Flowers and Chocolate',
    'Sports and Toys',
    'Clothes and Accessories',
    'Glass',
    'Electronics',
    'Household Items'
  ];

  Map<String, int> packageDict = {
    'Food': 10,
    'Flowers and Chocolate': 20,
    'Sports and Toys': 30,
    'Clothes and Accessories': 40,
    'Glass': 50,
    'Electronics': 60,
    'Household Items': 70
  };

  String? value = 'Food';

  late int? selectedValue = packageDict[value];

  late int? returnVal = selectedValue! + 17 + 10;

  final locations = ['Accra', 'Kumasi', 'Takoradi', 'Cape Coast'];
  String? locationVal = 'Accra';
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Documents'), centerTitle: true),
        body: Column(
          children: [
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Type of Package",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: 400,
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black, width: 2)),
                  child: Column(
                    children: [
                      DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: value,
                          iconSize: 36,
                          icon: Icon(Icons.arrow_drop_down, color: Colors.red),
                          isExpanded: true,
                          items: items.map(buildMenuItem).toList(),
                          onChanged: (value) => setState(() {
                            this.value = value;
                            selectedValue = packageDict[value];
                            returnVal = packageDict[value]! + 17 + 10;
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Location",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: 400,
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black, width: 2)),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: locationVal,
                  iconSize: 36,
                  icon: Icon(Icons.arrow_drop_down, color: Colors.red),
                  isExpanded: true,
                  items: locations.map(buildMenuItem).toList(),
                  onChanged: (value) => setState(() => locationVal = value),
                ),
              ),
            ),
            Spacer(
              flex: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: Text(
                      "Delivery Fee",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Text(
                    "10",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text(
                    "Tax",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text(
                    "17",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
              ],
            ),
            Row(
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text(
                    value!,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text(
                    selectedValue.toString(),
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Divider(
                thickness: 3,
              ),
            ),
            Row(
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text(
                    "Total",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Text(
                    returnVal.toString(),
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
                Spacer(),
              ],
            ),
            Spacer(),
            Center(
              child: SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (con) => PackagePage()));
                  },
                  child: Text(
                    "Select destination on map",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red[400],
                  ),
                ),
              ),
            ),
            Spacer(
              flex: 4,
            ),
          ],
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
