import 'package:final_project/home/index_5.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:final_project/home/controller_3.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  final navigationController = NavigationController();

  @override
  void initState() {
    super.initState();
    navigationController.shouldNavigate.addListener(() {
      if (navigationController.shouldNavigate.value) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProfilePage()),
        );
      }
    });
  }

  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          color: Theme.of(context).primaryColor,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(17, 0, 17, 0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigate to another page here
                    navigationController.navigateToAnotherPage();
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(0, 16, 0, 36),
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset('assets/images/Ellipse 1.png'),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Container(
                    width: 396 - 80 - 12,
                    height: 80,
                    color: Theme.of(context).primaryColor,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Abod Akkad",
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        SizedBox(height: 8),
                        Text(
                          "abod.akkad@gmail.com",
                          style: Theme.of(context).textTheme.displayMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                SvgPicture.asset('assets/icons/v.svg'),
              ],
            ),
          ),
        ),
        Positioned(
          top: 155,
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(45),
                topRight: Radius.circular(45),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
