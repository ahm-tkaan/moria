import 'package:flutter/material.dart';
import 'package:moria/appBar.dart';
import 'package:moria/listBurc.dart';

class Burcbilgi extends StatelessWidget {
  Burc burc;

  Burcbilgi({super.key, required this.burc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/wallpaper1.png"), fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Text(
                burc.burcAdi,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Text(
                "Tarih Aralığı: " + burc.burcTarihi,
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Text(
                "Genel Özellikler",
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Image.asset("assets/${burc.burcBuyukResim}",
                  width: MediaQuery.of(context).size.height * 0.3,
                  fit: BoxFit.contain),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  burc.burcYorumu,
                  style: TextStyle(fontSize: 20,
                  ),
                  textAlign: TextAlign.center,

                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              )
            ],
            )
          ),
        ),
      ),
    );
  }
}
