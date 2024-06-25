import 'package:final_project/home/widget_NotificationPage/notification_card.dart';
import 'package:flutter/material.dart';

class NotificationList extends StatelessWidget {
  final List<Map<String, String>> notifications;

  const NotificationList({
    Key? key,
    required this.notifications,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: notifications.map((notification) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: NotificationCard(
            firstText: notification['firstText']!, // Ensure that these values exist
            time: notification['time']!,
            content: notification['content']!,
          ),
        );
      }).toList(),
    );
  }
}
