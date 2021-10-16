import 'package:elite_courier/authentication/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Center(
          child: Column(
        children: [
          Text(
            "Please click on the button\n below to logout",
          ),
          ElevatedButton(
            onPressed: () {
              context.read<AuthenticationService>().signOut();
            },
            child: Text("Logout"),
          )
        ],
      )),
    ));
  }
}
