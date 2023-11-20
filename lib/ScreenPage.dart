import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
import 'package:multi_select_flutter/util/multi_select_item.dart';

import 'package:untitled/customWidget/customSteper.dart';
import 'package:untitled/review/review.dart';
import 'package:untitled/style.dart';

import 'customWidget/Checkbox_item_data.dart';
import 'customWidget/cardlistitem.dart';



class Animal {
  final int id;
  final String name;

  Animal({
    required this.id,
    required this.name,
  });
}


class ScreenPage extends StatefulWidget {

  TimeOfDay? startTime, endTime;
  ScreenPage( {this.startTime, this.endTime});

  @override
  State<ScreenPage> createState() => _ScreenPageState();
}

class _ScreenPageState extends State<ScreenPage> {
  static final List<Animal> _animals = [
  Animal(id: 1, name: "Lion"),
  Animal(id: 2, name: "Flamingo"),
  Animal(id: 3, name: "Hippo"),
  Animal(id: 4, name: "Horse"),
  Animal(id: 5, name: "Tiger"),
  Animal(id: 6, name: "Penguin"),
  Animal(id: 7, name: "Spider"),
  Animal(id: 8, name: "Snake"),
  Animal(id: 9, name: "Bear"),
  Animal(id: 10, name: "Beaver"),
];

  var  items = _animals
      .map((animal) => MultiSelectItem<Animal>(animal, animal.name))
      .toList();

  List<Animal> _selectedAnimals2 = [];

  bool sun = false;
  bool mon = false;
  bool tues = false;
  bool wed = false;
  bool thurs = false;
  bool fri = false;
  bool sat = false;

  String gender = '';
  String? localImagePath;
  bool value = false;

  final TextEditingController _editingController = TextEditingController();
  String userPost = '';

  bool user  = false;

  bool timePicker = true;


  final _privacyList = ['Public', 'Private', 'General'];
  String? privacy;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Text('Options'),
            Image.asset(
              'image/question.png',
              width: 30,
              height: 20,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Cancel'),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              CardLIstItem(
                  iconData: Icons.add,
                  title: 'Name',
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0),
                    child: Row(
                      children: [
                        const Text('Photo'),
                        const Spacer(),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.edit))
                      ],
                    ),
                  )),


              //categoryItem Add
              CardLIstItem(
                iconData: Icons.arrow_circle_right_outlined,
                title: 'Category',
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MultiSelectDialogField(
                      items: items,
                      
                      title: const Text("Category"),
                      searchable: true,
                      selectedColor: Colors.blue,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        border: Border.all(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      validator: (values) {
                        if (values == null || values.isEmpty) {
                          return "Required";
                        }
                      },
                      buttonIcon: const Icon(
                        Icons.add,
                        color: Colors.blue,
                      ),
                      buttonText: Text(
                        "Favorite Animals",
                        style: TextStyle(
                          color: Colors.blue[800],
                          fontSize: 16,
                        ),
                      ),

                      onConfirm: (results) {
                        if(results!.length < 5){

                        }
                        return null;
                      },
                    ),
                  ],
                ),
              ),
              CardLIstItem(
                iconData: Icons.add,
                title: 'Name',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                          ),
                          width: 60,
                          height: 100,
                          child: InkWell(
                            onTap: () {
                              _getImage(ImageSource.gallery);
                            },
                            child: localImagePath == null
                                ? const Icon(
                              Icons.image_search,
                              size: 50,
                            )
                                : Image.file(
                              File(localImagePath!),
                              width: 100,
                              height: 100,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 2,
                      child: TextFormField(
                        maxLines: 4,
                        decoration: const InputDecoration(
                          hintText: 'Write a caption',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CardLIstItem(
                iconData: Icons.add,
                title: 'Name',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Charge Per Hour'),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 100,
                      height: 40,
                      child: const Center(child: Text("0.00 /hr")),
                    ),
                  ],
                ),
              ),
              CardLIstItem(
                iconData: Icons.person,
                title: 'Guests',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Center(child: Text('Max participants')),
                    const Spacer(),
                    CustomStepper(
                      lowerLimit: 1,
                      upperLimit: 10,
                      stepValue: 1,
                      value: 1,
                      onChange: (newValue) {},
                    )
                  ],
                ),
              ),

              //privacy addd

              CardLIstItem(
                iconData: Icons.lock,
                title: 'Privacy',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Set Privacy'),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(width: 2, color: Colors.blue),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: 150,
                      height: 40,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  icon: const Icon(Icons.arrow_drop_down_circle_rounded),
                                  iconEnabledColor: Colors.indigo,
                                  iconSize: 20,
                                  focusColor: Colors.white,
                                  value: privacy,
                                  elevation:0,
                                  hint: const Text('Select Privacy'),
                                  isExpanded: true,
                                  items: _privacyList
                                      .map((e) => DropdownMenuItem<String>(
                                    value: e,
                                    child: Text(e),
                                  ),
                                  )
                                      .toList(),
                                  onChanged: (value) {
                                    setState(() {
                                      privacy = value;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),



              //Booking Slots  Add
              CardLIstItem(
                iconData: Icons.calendar_month_rounded,
                title: 'Booking Slots',
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CheckBoxItemData(
                      title: 'Sundays',
                      daysValue: sun,
                      onChange: (value) {
                        setState(() {
                          sun = value!;
                        });
                      },
                    ),
                    CheckBoxItemData(
                      title: 'Mondays',
                      daysValue: mon,
                      onChange: (value) {
                        setState(() {
                          mon = value!;
                        });
                      },
                    ),
                    CheckBoxItemData(
                      title: 'Tuesdays',
                      daysValue: tues,
                      onChange: (value) {
                        setState(() {
                          tues = value!;
                        });
                      },
                    ),
                    CheckBoxItemData(
                      title: 'Wednesdays',
                      daysValue: wed,
                      onChange: (value) {
                        setState(() {
                          wed = value!;
                        });
                      },
                    ) ,
                    Text('${widget.startTime?.format(context).toString()} : ${widget.endTime?.format(context).toString()}') ,
                    CheckBoxItemData(
                      title: 'Thursdays',
                      daysValue: thurs,
                      onChange: (value) {
                        setState(() {
                          thurs = value!;
                        });
                      },
                    ),
                    CheckBoxItemData(
                      title: 'Fridays',
                      daysValue: fri,
                      onChange: (value) {
                        setState(() {
                          fri = value!;
                        });
                      },
                    ),
                    CheckBoxItemData(
                      title: 'Saturdays',
                      daysValue: sat,
                      onChange: (value) {
                        setState(() {
                          sat = value!;
                        });
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: SwitchListTile(
                            title: const Center(
                                child: Text(
                                  'Advanced Settings',
                                  style: TextStyle(color: Colors.indigo),
                                )),
                            value: false,
                            onChanged: (value) {},
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              CardLIstItem(
                iconData: Icons.location_on,
                title: 'Location',
                child: Column(
                  children: [
                    RadioListTile(
                      title: const Text("In-Person"),
                      value: "In-Person",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                    RadioListTile(
                      title: const Text("Online"),
                      value: "Online",
                      groupValue: gender,
                      onChanged: (value) {
                        setState(() {
                          gender = value.toString();
                        });
                      },
                    ),
                  ],
                ),
              ),
              CardLIstItem(
                iconData: Icons.info,
                title: 'Instructions',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                          ),
                          width: 40,
                          height: 80,
                          child: InkWell(
                            onTap: () {
                              _getImage(ImageSource.gallery);
                            },
                            child: localImagePath == null
                                ? const Icon(
                              Icons.image_search,
                              size: 50,
                            )
                                : Image.file(
                              File(localImagePath!),
                              width: 100,
                              height: 100,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 2,
                      child: TextFormField(
                        maxLines: 4,
                        decoration: const InputDecoration(
                          hintText: 'Write a caption',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CardLIstItem(
                iconData: Icons.check_circle,
                title: 'Requirements',
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey,
                          ),
                          width: 40,
                          height: 80,
                          child: InkWell(
                            onTap: () {
                              _getImage(ImageSource.gallery);
                            },
                            child: localImagePath == null
                                ? const Icon(
                              Icons.image_search,
                              size: 50,
                            )
                                : Image.file(
                              File(localImagePath!),
                              width: 100,
                              height: 100,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      flex: 2,
                      child: TextFormField(
                        maxLines: 4,
                        decoration: const InputDecoration(
                          hintText: 'Write a caption',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Divider(),
          Container(
            width: double.infinity,
            color: Colors.white,
            height: 80,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  child: Text('Save as draft'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 10),
                  child: SizedBox(
                    width: 100,
                    child: ElevatedButton(
                      style: buttonStyle(),
                      onPressed: () {

                      },
                      child: const Text(
                        'Continue',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void _getImage(ImageSource source) async {
    final file =
    await ImagePicker().pickImage(source: source, imageQuality: 50);
    if (file != null) {
      setState(() {
        localImagePath = file.path;
      });
    }
  }

}
