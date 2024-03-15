import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class DetailFooter extends StatelessWidget {
  const DetailFooter({super.key, required this.onPressedFooterDetail});

  final VoidCallback onPressedFooterDetail;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        ElevatedButton(onPressed: onPressedFooterDetail, child: Text("Finish"))
      ],
    );
  }
}
