import 'package:flutter/material.dart';
import 'package:ucp_paml/screen/dataform_screen.dart';

class MakananScreen extends StatelessWidget {
  const MakananScreen({super.key, required this.nama});

  final String nama;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Makanan"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => DataForm()));
          },
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text("Nama : $nama")],
      )),
    );
  }
}
