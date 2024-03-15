import 'package:flutter/material.dart';

class FooterForm extends StatelessWidget {
  const FooterForm({super.key, required this.onPressedDataForm});

  final VoidCallback onPressedDataForm;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 25,
        ),
        ElevatedButton(onPressed: onPressedDataForm, child: const Text("Next"))
      ],
    );
  }
}
