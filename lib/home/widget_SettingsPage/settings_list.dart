import 'package:final_project/home/widget_SettingsPage/settings_card.dart';
import 'package:flutter/material.dart';

class SettingsList extends StatelessWidget {
  final List<Map<String, dynamic>> settings;

  const SettingsList({
    Key? key,
    required this.settings,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: settings.map((setting) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: SettingCard(
            text: setting['text'],
            textStyle: setting['textStyle'],
          ),
        );
      }).toList(),
    );
  }
}
