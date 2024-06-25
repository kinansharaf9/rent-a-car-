import 'package:final_project/home/widget_NotificationPage/bottom_navigation_bar.dart';
import 'package:final_project/home/widget_NotificationPage/notifications_list.dart';
import 'package:flutter/material.dart';
import 'package:final_project/home/widget_NotificationPage/appbar.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Create a list of notifications
    List<Map<String, String>> notifications = [
      {
        'firstText': "Jeni's first offer",
        'time': '10:00 AM',
        'content': '20% discount on Lemon-ice cream cup ',
      },
      {
        'firstText': "Jeni's second offer",
        'time': '12:30 PM',
        'content': 'Buy 2 chocolate-ice cream cup & get 1 extra',
      },
      {
        'firstText': "Jeni's third offer",
        'time': '2:30 PM',
        'content': '"Buy for more than 100,000 and get a 30% discount" ',
      },
      {
        'firstText': "Jeni's fourth offer",
        'time': '5:30 PM',
        'content': 'Show your university ID and get 15% discount',
      },
      {
        'firstText': "Jeni's fifth offer",
        'time': '7:00 PM',
        'content': '50% discount on all items for only 10 mins',
      },
      {
        'firstText': "Jeni's sixth offer",
        'time': '9:40 PM',
        'content': 'Buy 5 ice-cream cups and get 2 extra',
      },
      // Add more notifications as needed
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: NotificationAppBar(),
      body: ListView(
        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
        children: [
          NotificationList(notifications: notifications),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
