import 'package:elite_courier/home/dashboard.dart';
import 'package:flutter/material.dart';

class PaymentConfirmed extends StatefulWidget {
  PaymentConfirmed({Key? key}) : super(key: key);

  @override
  _PaymentConfirmedState createState() => _PaymentConfirmedState();
}

class _PaymentConfirmedState extends State<PaymentConfirmed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Confirmation"),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.green,
        child: Column(
          children: [
            Spacer(),
            Icon(
              Icons.done_all_rounded,
              color: Colors.white,
              size: 100,
            ),
            Text(
              "PAYMENT",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "SUCCESSFUL",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (con) => DashboardPage()));
                },
                child: Text(
                  "Back To Home",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
              ),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }
}
