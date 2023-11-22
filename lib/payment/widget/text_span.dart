
import 'package:flutter/material.dart';

import '../../style.dart';

class TextSpanTitle extends StatelessWidget {
  const TextSpanTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text.rich(
        TextSpan(
          children: [
             TextSpan(
              text: 'By clicking the button below, I agree to the ',
              style: TextStyle(
                  color: Color(0xFF8F90A6),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
              ),
            ),
            const TextSpan(
              text: "host's rules and Bless's Terms, Conditions, and Refund Policy",
              style: TextStyle(
                color: Color(0xFF0063F7),
                fontSize: 12,
                fontWeight: FontWeight.w400,
                decoration: TextDecoration.underline,
              ),
            ),
            const TextSpan(
              text: '.',
              style: TextStyle(
                color: Color(0xFF0063F7),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextSpan(
              text: ' I have reviewed my amount before confirming, and I acknowledge that all contributions are final and non-refundable. This agreement constitutes the Payment Terms between me and Bless Financial Technologies Inc. ',
              style: TextStyle(
                color: Color(0xFF8F90A6),
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            )]
        ),
      ),
    );
  }
}
