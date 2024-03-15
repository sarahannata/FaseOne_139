import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FooterMakanan extends StatelessWidget {
  FooterMakanan({super.key, required this.onPressedFooterMakanan});

  final VoidCallback onPressedFooterMakanan;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        ElevatedButton(
            onPressed: onPressedFooterMakanan, child: const Text("Next")),
      ],
    );
  }
}
