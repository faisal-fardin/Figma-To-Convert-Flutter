import 'package:flutter/material.dart';
import 'package:untitled/style.dart';

class PaymentDayTime extends StatelessWidget {
  const PaymentDayTime({
    super.key,
  });


  final String startEndTime = '09:00 AM - 10:00 PM';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 170,
              height: 60,
              decoration: ShapeDecoration(
                color: const Color(0xFFE3EDFF),
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFE3EDFF)),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Center(
                child: Text(
                  startEndTime,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            )],
        ),
      ],
    );
  }
}