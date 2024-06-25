import 'package:final_project/home/widget_SettingsPage/settings.dart';
import 'package:final_project/home/widget_SettingsPage/settings_list.dart';
import 'package:flutter/material.dart';
import 'package:final_project/home/widget_SettingsPage/bottom_navigation_bar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: ListView(
        children: [
          ProfileSettings(),
          SettingsList(
            settings: [
              {
                'text': 'Settings',
                'textStyle': Theme.of(context).textTheme.bodySmall
              },
              {
                'text': 'Languages',
                'textStyle': Theme.of(context).textTheme.bodySmall
              },
              {
                'text': 'About the App',
                'textStyle': Theme.of(context).textTheme.bodySmall
              },
              {
                'text': 'Contact Us',
                'textStyle': Theme.of(context).textTheme.bodySmall
              },
              {
                'text': 'Rate Us on Store',
                'textStyle': Theme.of(context).textTheme.bodySmall
              },
              {
                'text': 'Logout',
                'textStyle': Theme.of(context).textTheme.bodySmall
              },
              {
                'text': 'Delete Account',
                'textStyle': Theme.of(context).textTheme.displaySmall
              },
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
