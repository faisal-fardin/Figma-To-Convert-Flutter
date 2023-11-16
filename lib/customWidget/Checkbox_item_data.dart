import 'package:flutter/material.dart';
import 'package:untitled/customWidget/time_picker/time_range.dart';

class CheckBoxItemData extends StatefulWidget {
  CheckBoxItemData(
      {super.key,
      required this.title,
      required this.daysValue,
      required this.onChange});

  final String title;
  final bool daysValue;
  final ValueChanged onChange;

  @override
  State<CheckBoxItemData> createState() => _CheckBoxItemDataState();
}

class _CheckBoxItemDataState extends State<CheckBoxItemData> {
  bool addButton = false;

  bool value = false;

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Expanded(
            child: ListTile(
              onTap: (){
                print(2324);
              },
              title:  Text(widget.title),
              leading: Expanded(
                child: Checkbox(
                  value: isChecked,
                  onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    if (isChecked) {
                      showModalBottomSheet(context: context, builder: (context) {
                        return const TimePicker();
                      },);
                    }
                  },
                ),
              ),
            ),
          ),
          IconButton(onPressed: (){}, icon: const Icon(Icons.add),),
          IconButton(onPressed: (){}, icon: const Icon(Icons.copy),),

        ],
      ),


    );
  }
}
