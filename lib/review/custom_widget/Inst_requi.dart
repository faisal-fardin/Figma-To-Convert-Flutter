import 'package:flutter/material.dart';

import '../../style.dart';

class Inst_Requ extends StatelessWidget {
  const Inst_Requ({
    super.key, required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: subTitle(),
        ),
        const SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 90,
              height: 90,
              padding: const EdgeInsets.all(32),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                image: const DecorationImage(
                  image: AssetImage('image/f1.png'),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            SizedBox(width: 30,),
            const SizedBox(
              width: 250,
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam non libero eu turpis malesuada facilisis. Integer eget justo dolor. Maecenas eget justo odio.",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20,),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Divider(
            height: 2,
          ),
        ),
      ],
    );

  }
}