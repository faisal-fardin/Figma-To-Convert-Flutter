
import 'package:flutter/material.dart';
import 'package:untitled/payment/widget/text_span.dart';
import 'package:untitled/style.dart';

import 'day_and_time.dart';

class MakePayment extends StatefulWidget {
  const MakePayment({super.key});

  @override
  State<MakePayment> createState() => _MakePaymentState();
}

class _MakePaymentState extends State<MakePayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Make Payment',
          style: TextStyle(color: Colors.black),
        ),
        leading: const BackButton(
          color: Colors.black,
        ),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 345,
                    height: 20,
                    child: Text(
                      'Experience Details:',
                      style: subTitle2(),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  SizedBox(
                    width: 345,
                    height: 20,
                    child: Text(
                      'Experience Name:',
                      style: subTitle2(),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Text(
                    'Alex’s Photography',
                    style: subTitle(),
                  ),
                  const SizedBox(height: 30,),
                  SizedBox(
                    width: 345,
                    height: 20,
                    child: Text(
                      'Hosted By',
                      style: subTitle2(),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Text(
                        'Alex Kiba',
                        style: subTitle(),
                      ),
                      Image.asset(
                        'image/verify.png',
                        width: 30,
                        height: 20,
                      ),
                  ],
                  ),
                  const SizedBox(height: 30,),
                  SizedBox(
                    width: 345,
                    height: 20,
                    child: Text(
                      'Selected Time Slots',
                      style: subTitle2(),
                    ),
                  ),
                  SizedBox(height: 20,),
                  const Row(
                    children: [

                      PaymentDayTime(),
                      SizedBox(width: 15,),
                      PaymentDayTime(),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 8,
              decoration: const BoxDecoration(color: Color(0xFFF2F2F5)),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('Add Promo Code', style: subTitle2(),),
                      leading: const Icon(Icons.tag),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Divider(height: 4,),
                  SizedBox(
                    width: 345,
                    height: 20,
                    child: Text(
                      'Price Details:',
                      style: subTitle2(),
                    ),
                  ),
                  ListTile(
                    title: Text('Hourly Booking - 2 Hours' , style: subTitle(),),
                    trailing: Text('100.00',style: subTitle(),),
                  ),
                  ListTile(
                    title: Text('Service Fees' , style: subTitle(),),
                    trailing: Text('3.50',style: subTitle(),),
                  ),
                  ListTile(
                    title: Text('Total Amount' , style: subTitle2(),),
                    trailing: Text('103.00',style: subTitle2(),),
                  ),
                  InkWell(
                    onTap: (){},
                    child: const SizedBox(
                      width: 350,
                      child: Text(
                        'More Info',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          color: Color(0xFF0063F7),
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          decoration: TextDecoration.underline,

                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              width: double.infinity,
              height: 8,
              decoration: const BoxDecoration(color: Color(0xFFF2F2F5)),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 345,
                    height: 20,
                    child: Text(
                      'Payment Method',
                      style: subTitle2(),
                    ),
                  ),
                  SizedBox(height: 30,),
                  InkWell(
                    onTap: (){},
                    child: ListTile(
                      title: Text('Apple Pay', style: subTitle2(),),
                      leading: const Icon(Icons.payments_outlined),
                      trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Divider(height: 4,),
                  const SizedBox(height: 20,),
                  const SizedBox( width: 345, child: TextSpanTitle())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
