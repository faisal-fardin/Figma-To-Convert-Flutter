import 'package:flutter/material.dart';

import '../style.dart';
import 'custom_widget/Inst_requi.dart';
import 'custom_widget/item_details.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Review',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: const Text(
                'Cancel',
                style: TextStyle(fontSize: 18, color: Colors.blue),
              )),
        ],
        leading: const BackButton(
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        decoration: ShapeDecoration(
                            color: Colors.grey,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        height: 400,
                        width: 200,
                        // child: Image.asset('image/f'),
                      ),
                      Positioned(
                          left: 15,
                          top: 10,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black38,
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Preview",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                      Positioned(
                          left: 15,
                          bottom: 10,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black38,
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Edit Cover",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  width: 292,
                  child: Text(
                    'Caption',
                    style: TextStyle(
                      color: Color(0xFF6B7588),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 345,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non libero eu turpis malesuada facilisis. Integer eget justo dolor. Maecenas eget justo odio.',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.infinity,
                  height: 8,
                  decoration: const BoxDecoration(color: Color(0xFFF2F2F5)),
                ),
                const CustomDetails(
                  title: 'Name',
                  trailing: 'Alex’s Photography',
                ),
                const CustomDetails(
                  title: 'Host',
                  trailing: 'Hourly Basis',
                ),
                const CustomDetails(
                  title: 'Pricing',
                  trailing: "25.00 /hr",
                ),
                const CustomDetails(
                  title: 'Max Participants',
                  trailing: '35',
                ),
                const CustomDetails(
                  title: 'Privacy',
                  trailing: 'Public',
                ),
                const SizedBox(
                  height: 30,
                ),
                const CustomDetails(
                  title: 'Advanced Settings',
                  trailing: 'Enabled',
                ),
                const CustomDetails(
                  title: 'Location',
                  trailing: '',
                ),
                SizedBox(height: 30,),
                const Inst_Requ(title: 'Instructions',),
                SizedBox(height: 30,),
                const Inst_Requ(title: 'Requirements',),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




