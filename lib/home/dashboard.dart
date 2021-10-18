import 'package:elite_courier/screens/DocumentScreen.dart';
import 'package:elite_courier/screens/PackageScreen.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

var screenHeight;
var screenWidth;

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              margin: EdgeInsets.only(top: 20.0),
              height: screenHeight! / 4 - 37,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.red[400],
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                              "PACKAGE",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 35),
                            ),
                          ),
                          Flexible(
                            child: Text(
                              "Document",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (con) => DocumentPage()));
                                },
                                elevation: 0,
                                color: Color(0xfffbf9e4),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Send Documets",
                                      style:
                                          TextStyle(color: Color(0xff846b4d)),
                                    ),
                                    Flexible(
                                      child: Icon(
                                        Icons.arrow_forward_sharp,
                                        color: Color(0xff846b4d),
                                      ),
                                    )
                                  ],
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Image.asset("assets/images/doc.jpg",
                        height: 100, width: 100),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Row(
            children: [
              Spacer(),
              Padding(
                padding: EdgeInsets.only(right: 40),
                child: Column(
                  children: [
                    Text("Big Package",
                        style: TextStyle(
                            color: Colors.red[400],
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    Container(
                        height: 120,
                        child: Image.asset("assets/images/package_big.jpg")),
                  ],
                ),
              ),
              Column(
                children: [
                  Text("Small Package",
                      style: TextStyle(
                          color: Colors.red[400],
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  Container(
                    height: 120,
                    child: Image.asset("assets/images/package_small.jpg"),
                  ),
                ],
              ),
              Spacer()
            ],
          ),
          Spacer(),
          Center(
            child: SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (con) => PackagePage()));
                },
                child: Text(
                  "Send Package",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red[400],
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
