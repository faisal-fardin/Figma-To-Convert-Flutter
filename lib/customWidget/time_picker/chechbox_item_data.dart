

import 'package:flutter/material.dart';
import 'package:untitled/customWidget/time_picker/time_range.dart';

class CheckBoxItemData extends StatefulWidget {

  final String title;

  const CheckBoxItemData({super.key, required this.title});
  @override
  State<CheckBoxItemData> createState() => _CheckBoxItemDataState();
}

class _CheckBoxItemDataState extends State<CheckBoxItemData> {

  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    return ListView(
        children: [
          GestureDetector(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Checkbox(
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                      if (isChecked) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TimePicker(),
                          ),
                        );
                      }
                    },
                  ),
                ),

              ],
            ),
          ),
        ],
    );
  }
}
