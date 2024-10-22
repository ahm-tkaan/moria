import 'package:flutter/material.dart';
import 'package:moria/appBar.dart';

class KayitScreen extends StatefulWidget {
  const KayitScreen({super.key});

  @override
  State<KayitScreen> createState() => _KayitScreenState();
}

class _KayitScreenState extends State<KayitScreen> {
  DateTime? selectedDate;
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(context) {
    return Container(
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/wallpaper1.png"), fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              "Burcunuzu Öğrenin",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            TextField(
              controller: _controller,

              decoration: InputDecoration(
                hintText: "Adınızı Giriniz",
                labelText: "Adınız",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                fillColor: Colors.white,
                filled: true,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            ElevatedButton(
              style: ButtonStyle(
                animationDuration: Duration(seconds: 1),
                backgroundColor: WidgetStateProperty.all(
                  Color(0xFF0a1832),
                ),
              ),
              onPressed: () async {
                final DateTime? picked = await showDatePicker(

                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                  helpText: "Doğum Tarihinizi Seçiniz",
                  cancelText: "İptal",
                  confirmText: "Seç",


                );
                if (picked != null && picked != selectedDate) {
                  setState(() {
                    selectedDate = picked;
                  });
                }
              },
              child: Text("Doğum Tarihi Seç",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
