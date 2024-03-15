import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MakananForm extends StatefulWidget {
  MakananForm(
      {super.key,
      required this.makankey,
      required this.etMakanan,
      required this.etMinuman,
      required this.etDessert});

  final GlobalKey<FormState> makankey;
  final TextEditingController etMakanan;
  final TextEditingController etMinuman;
  final TextEditingController etDessert;

  @override
  State<MakananForm> createState() => _MakananFormState();
}

class _MakananFormState extends State<MakananForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.makankey,
      child: Column(children: [
        TextFormField(
          keyboardType: TextInputType.text,
          controller: widget.etMakanan,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: const InputDecoration(
              labelText: "Makanan",
              hintText: "Masukkan Makanan",
              prefixIcon: Icon(Icons.food_bank),
              border: OutlineInputBorder()),
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          controller: widget.etMinuman,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: const InputDecoration(
              labelText: "Minuman",
              hintText: "Masukkan Minuman",
              prefixIcon: Icon(Icons.local_drink),
              border: OutlineInputBorder()),
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          controller: widget.etDessert,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: const InputDecoration(
              labelText: "Dessert",
              hintText: "Masukkan Dessert",
              prefixIcon: Icon(Icons.icecream),
              border: OutlineInputBorder()),
        ),
      ]),
    );
  }
}
