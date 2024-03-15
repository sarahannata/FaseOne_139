import 'package:flutter/material.dart';

class HeaderForm extends StatelessWidget {
  const HeaderForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          "Data Form",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: 20,
        ),
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://bcassetcdn.com/public/blog/wp-content/uploads/2019/07/18094833/the-red-cafe.png"),
          radius: 70,
        )
      ],
    );
  }
}
