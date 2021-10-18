import 'package:elite_courier/authentication/auth_toggle.dart';
import 'package:elite_courier/authentication/login.dart';
import 'package:elite_courier/home/dashboard.dart';
import 'package:elite_courier/home/settings.dart';
import 'package:elite_courier/home/my_drawer_header.dart';
import 'package:elite_courier/home/notification.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.dashboard;
  @override
  Widget build(BuildContext context) {
    var container;
    if (currentPage == DrawerSections.dashboard) {
      container = DashboardPage();
    } else if (currentPage == DrawerSections.notifications) {
      container = NotificationPage();
    } else if (currentPage == DrawerSections.settings) {
      container = SettingPage();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: Text("Welcome to Elite Courier"),
      ),
      body: container,
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                MyHeaderDrawer(),
                myDrawerList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget myDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // showing the list of the menu drawer
        children: [
          menuItem(1, "Dashbaord", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "Notifications", Icons.notifications_outlined,
              currentPage == DrawerSections.notifications ? true : false),
          menuItem(3, "Settings", Icons.settings,
              currentPage == DrawerSections.settings ? true : false),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (con) => Authentication()));
            },
            child: menuItem(4, "Logout", Icons.logout,
                currentPage == DrawerSections.settings ? true : false),
          ),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.notifications;
            } else if (id == 3) {
              currentPage = DrawerSections.settings;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 5,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  notifications,
  settings,
}
