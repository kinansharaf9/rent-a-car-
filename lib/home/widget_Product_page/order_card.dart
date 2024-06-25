import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderCard extends StatefulWidget {
  final String text;
  final TextStyle textStyle;
  final bool useCheckbox; // Add a parameter to determine radio or checkbox

  const OrderCard({
    required this.text,
    required this.textStyle,
    required this.useCheckbox, // Pass the parameter
    Key? key,
  }) : super(key: key);

  @override
  _OrderCardState createState() => _OrderCardState();
}

class _OrderCardState extends State<OrderCard> {
  bool isExpanded = false;
  int selectedRadio = -1;
  List<bool> selectedCheckboxes = [
    false,
    false,
    false,
    false
  ]; // Initialize with false values

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: SizedBox(
        width: screenWidth * 0.9,
        height: isExpanded ? screenHeight * 0.44 : screenHeight * 0.075,
        child: Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(27, 10, 12, 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      offset: Offset(0, 2),
                      blurRadius: 15,
                    ),
                  ],
                  color: Theme.of(context).canvasColor,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              widget.text,
                              style: widget.textStyle,
                            ),
                          ],
                        ),
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Theme.of(context).scaffoldBackgroundColor,
                          ),
                          child: Center(
                            child:
                                SvgPicture.asset('assets/icons/down_arrow.svg'),
                          ),
                        ),
                      ],
                    ),
                    if (isExpanded) Divider(color: Colors.grey,),
                    if (isExpanded)
                      Column(
                        children: widget.useCheckbox // Check the parameter
                            ? [
                                for (int i = 0;
                                    i < selectedCheckboxes.length;
                                    i++)
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: selectedCheckboxes[i],
                                        onChanged: (bool? value) {
                                          setState(() {
                                            selectedCheckboxes[i] =
                                                value ?? false;
                                          });
                                        },
                                      ),
                                      Text(
                                        i == 0
                                            ? "Sauce"
                                            : i == 1
                                                ? "Cream"
                                                : i == 2
                                                    ? "Nuts"
                                                    : "Extra Nuts",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      ),
                                    ],
                                  ),
                              ]
                            : [
                                RadioListTile(
                                  title: Text(
                                    "Chocolate",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium,
                                  ),
                                  value: 1,
                                  groupValue: selectedRadio,
                                  onChanged: (int? value) {
                                    setState(() {
                                      selectedRadio = value!;
                                    });
                                  },
                                ),
                                RadioListTile(
                                  title: Text(
                                    "Strawberry",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium,
                                  ),
                                  value: 2,
                                  groupValue: selectedRadio,
                                  onChanged: (int? value) {
                                    setState(() {
                                      selectedRadio = value!;
                                    });
                                  },
                                ),
                                RadioListTile(
                                  title: Text(
                                    "Salted Caramel",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium,
                                  ),
                                  value: 3,
                                  groupValue: selectedRadio,
                                  onChanged: (int? value) {
                                    setState(() {
                                      selectedRadio = value!;
                                    });
                                  },
                                ),
                                RadioListTile(
                                  title: Text(
                                    "Blueberry",
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium,
                                  ),
                                  value: 4,
                                  groupValue: selectedRadio,
                                  onChanged: (int? value) {
                                    setState(() {
                                      selectedRadio = value!;
                                    });
                                  },
                                ),
                              ],
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
