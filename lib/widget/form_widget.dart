import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FormWidget extends StatefulWidget {
  FormWidget(
      {super.key,
      required this.formKey,
      required this.etNama,
      required this.etNoTelp,
      required this.etAlamat});

  final GlobalKey<FormState> formKey;
  final TextEditingController etNama;
  final TextEditingController etNoTelp;
  final TextEditingController etAlamat;

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String? _gender = 'male';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(children: [
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          keyboardType: TextInputType.name,
          controller: widget.etNama,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: const InputDecoration(
            labelText: "Nama",
            hintText: "Masukkan Nama",
            prefixIcon: Icon(Icons.people),
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Nama tidak boleh kosong';
            }
            if (value.contains(RegExp(r'[0-9]'))) {
              return 'Nama tidak boleh mengandung angka';
            }
            return null;
          },
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          keyboardType: TextInputType.number,
          controller: widget.etNoTelp,
          decoration: const InputDecoration(
            labelText: "No. Telepon",
            hintText: "Masukkan No. Telepon",
            prefixIcon: Icon(Icons.phone),
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Nomor Telepon tidak boleh kosong';
            }
            if (value.length > 12) {
              return 'Nomor Telepon maksimal 12 digit';
            }
            if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
              return 'Nomor Telepon hanya boleh berisi angka';
            }
            return null;
          },
        ),
        const SizedBox(
          height: 15,
        ),
        TextFormField(
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            labelText: "Alamat",
            hintText: "Masukkan Alamat",
            prefixIcon: Icon(Icons.home),
            border: OutlineInputBorder(),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Alamat tidak boleh kosong';
            }
            if (value.contains(RegExp(r'[0-9]'))) {
              return 'Alamat hanya boleh mengandung huruf';
            }
            return null;
          },
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5.0),
          ),
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Jenis Kelamin',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              ListTile(
                title: const Text('Laki-laki'),
                leading: Radio<String>(
                  value: 'male',
                  groupValue: _gender,
                  onChanged: (String? value) {
                    setState(() {
                      _gender = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Perempuan'),
                leading: Radio<String>(
                  value: 'female',
                  groupValue: _gender,
                  onChanged: (String? value) {
                    setState(() {
                      _gender = value;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
