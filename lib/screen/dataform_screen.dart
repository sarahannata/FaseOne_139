import 'package:flutter/material.dart';
import 'package:ucp_paml/screen/datamakanan_screen.dart';
import 'package:ucp_paml/widget/footerform_widget.dart';
import 'package:ucp_paml/widget/form_widget.dart';
import 'package:ucp_paml/widget/headerform_widget.dart';

class DataForm extends StatelessWidget {
  DataForm({super.key});

  @override
  Widget build(BuildContext context) {
    var nama = TextEditingController();
    var notelp = TextEditingController();
    var alamat = TextEditingController();
    var formKey = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            HeaderForm(),
            FormWidget(
              etNama: nama,
              etNoTelp: notelp,
              etAlamat: alamat,
              formKey: formKey,
            ),
            FooterForm(onPressedDataForm: () {
              if (formKey.currentState!.validate()) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MakananScreen(
                              nama: nama.text,
                            )),
                    (route) => false);
              }
            })
          ]),
        ),
      )),
    );
  }
}
