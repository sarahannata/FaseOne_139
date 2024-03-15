import 'package:flutter/material.dart';
import 'package:ucp_paml/screen/dataform_screen.dart';
import 'package:ucp_paml/screen/detailform_screen.dart';
import 'package:ucp_paml/widget/footermakanan_widget.dart';
import 'package:ucp_paml/widget/makananform_widget.dart';

class MakananScreen extends StatelessWidget {
  const MakananScreen({super.key, required this.nama, required this.notelp});

  final String nama;
  final String notelp;

  @override
  Widget build(BuildContext context) {
    var makanan = TextEditingController();
    var minuman = TextEditingController();
    var dessert = TextEditingController();
    var formKey = GlobalKey<FormState>();

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
      body: SafeArea(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Nama : $nama"),
              Text("No. Telepon : $notelp"),
              SizedBox(
                height: 15,
              ),
              MakananForm(
                  formKey: formKey,
                  etMakanan: makanan,
                  etMinuman: minuman,
                  etDessert: dessert),
              FooterMakanan(onPressedFooterMakanan: () {
                if (formKey.currentState!.validate()) {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailScreen(
                              nama: nama,
                              notelp: notelp,
                              makanan: makanan.text,
                              minuman: minuman.text,
                              dessert: dessert.text)),
                      (route) => false);
                }
              })
            ],
          ),
        )),
      ),
    );
  }
}
