import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ucp_paml/screen/dataform_screen.dart';
import 'package:ucp_paml/screen/datamakanan_screen.dart';
import 'package:ucp_paml/widget/footerdetail_widget.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen(
      {super.key,
      required this.nama,
      required this.notelp,
      required this.makanan,
      required this.minuman,
      required this.dessert});

  final String nama;
  final String notelp;
  final String makanan;
  final String minuman;
  final String dessert;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Form"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MakananScreen(
                          nama: nama,
                          notelp: notelp,
                        )));
          },
        ),
      ),
      body: SafeArea(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Nama : $nama"),
            Text("No. Telepon : $notelp"),
            Text("Makanann : $makanan"),
            Text("Minuman : $minuman"),
            Text("Dessert : $dessert"),
            SizedBox(
              height: 15,
            ),
            DetailFooter(onPressedFooterDetail: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => DataForm()));
            })
          ]),
        )),
      ),
    );
  }
}
