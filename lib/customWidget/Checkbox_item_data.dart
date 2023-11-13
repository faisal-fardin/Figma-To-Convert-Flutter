
import 'package:flutter/material.dart';

class CheckBoxItemData extends StatelessWidget {
  const CheckBoxItemData(
      {super.key, required this.title, required this.daysValue, required this.onChange});

  final String title;
  final bool daysValue;
  final ValueChanged onChange;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Checkbox(
            value: daysValue,
            onChanged: onChange,
          ),
          Text(title),
          const Spacer(),
          const Icon(Icons.add, color: Colors.grey,),
          const SizedBox(
            width: 20,
          ),
          const Icon(Icons.copy_outlined, color: Colors.grey,),
        ],
      ),
    );
  }
}