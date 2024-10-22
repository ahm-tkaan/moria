import 'package:flutter/material.dart';
import 'package:moria/drawer.dart';
import 'package:moria/burc_ogrenme_ekranı.dart';
import 'BurcYorumSayfasi.dart';
import 'BurclarSayfasi.dart';
import 'appBar.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: _buildBody(context),
      drawer: drawerMenu(),
    );
  }

  Widget _buildBody(context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/wallpaper1.png"), fit: BoxFit.cover)),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  height: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  child: Image.asset("assets/moriaLogoDik.png")),
              // Logo eklendi
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              // Aralığı ayarlamak için SizedBox eklendi
              Text(
                "Burçlar Hakkında Genel Bilgi:",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    backgroundColor:
                        Colors.white.withOpacity(0)), // Renk beyaz yapıldı
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              ElevatedButton(
                onPressed: () {
                  _burclaraGit(context);
                },
                child: Text("Burçlar",
                    style: TextStyle(color: Colors.white, fontSize: 28)),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Color(0xFF0a1832)),
                  elevation: WidgetStatePropertyAll(25),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Text(
                "Burç Yorumları Hakkında Bilgi: ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30, backgroundColor: Colors.white.withOpacity(0)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              ElevatedButton(
                onPressed: () {
                  _burcYorumlarinaGit(context);
                },
                child: Text("Burç Yorumları",
                    style: TextStyle(color: Colors.white, fontSize: 28)),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Color(0xFF0a1832)),
                  elevation: WidgetStatePropertyAll(25),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Text(
                "Burcunuzu Öğrenin",
                style: TextStyle(
                    fontSize: 30, backgroundColor: Colors.white.withOpacity(0)),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => KayitScreen()));                },
                child: Text("Öğren",
                    style: TextStyle(color: Colors.white, fontSize: 28)),
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Color(0xFF0a1832)),
                  elevation: WidgetStatePropertyAll(25),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _burclaraGit(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Burclarsayfasi()));
  }

  void _burcYorumlarinaGit(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BurcYorumPage()));
  }
}
