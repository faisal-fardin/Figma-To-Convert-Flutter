import 'package:flutter/material.dart';

class CheckBoxItemData extends StatelessWidget {
  CheckBoxItemData(
      {super.key,
      required this.title,
      required this.daysValue,
      required this.onChange});

  final String title;
  final bool daysValue;
  final ValueChanged onChange;

  bool addButton = false;

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              title: Text(title),
              value: daysValue,
              onChanged: onChange,
            ),
          ),
          IconButton(onPressed: (){}, icon: Icon(Icons.add),),
          IconButton(onPressed: (){}, icon: Icon(Icons.copy),),

        ],
      ),
    );
  }
}
