import 'package:flutter/material.dart';
import 'package:moria/appBar.dart';
import 'package:moria/listBurcYorum.dart';
import 'package:moria/UzunYorum.dart';

class BurcYorumPage extends StatefulWidget {


  @override
  State<BurcYorumPage> createState() => _BurcYorumPageState();
}

class _BurcYorumPageState extends State<BurcYorumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: buildBurcYorumBody(context),
    );
  }

  Widget buildBurcYorumBody(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: const AssetImage("assets/wallpaper1.png"), fit: BoxFit.cover)),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              const Text(
                "Burç Yorumları",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Image.asset("assets/burcYorum.png"),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              const Text(
                "İnsanlığın kadim bilgeliği, gökyüzünün gizemli diliyle konuşan bir yolculuk: Burç Yorumları!",
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                  "Binlerce yıldır gökyüzünü inceleyen atalarımızın bize mirası olan astroloji, gezegenlerin ve yıldızların insan karakteri ve kaderi üzerindeki etkisini anlamaya çalışır. \n\nDoğduğumuz anda gökyüzünün konumu, kişiliğimizin temelini oluşturur. Her burcun kendine özgü özellikleri, güçlü ve zayıf yönleri vardır. \n\nBurç yorumları, gezegenlerin hareketlerini inceleyerek bize kendimizi daha iyi anlama, geleceği öngörme ve hayat yolculuğumuzda daha bilinçli seçimler yapma olanakları sunar. \n\nKendi burcunuzu ve yükselen burcunuzu öğrenerek, iç dünyanızın derinliklerine inebilir, yeteneklerinizi keşfedebilir, ilişkilerinizi ve kariyerinizi daha iyi yönetebilirsiniz. \n\nBurç yorumları, hayatın gizemli labirentinde bize rehberlik eden bir ışıktır. Kendimizi ve evreni anlama yolculuğunda bize eşlik eden bir bilgelik kaynağıdır.",
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              const Text(
                "Peki Burç Yorumları Nasıl Yapılır?",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              const Text(
                "Gökyüzünün bize fısıldadığı sırları çözmenin birçok farklı yolu vardır. Tıpkı bir çiçeğin farklı açılardan farklı güzellikler sunması gibi, burç yorumları da çeşitli şekillerde karşımıza çıkar. \n\nİşte burç yorumlarının en yaygın çeşitleri:",
                style: TextStyle(fontSize: 25),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Column(
                children: [
                  burcYorumCard(
                    icon: Icons.calendar_today,
                    title: "Günlük Burç Yorumları",
                    onTap: ()=>navigateToPage(context, UzunYorum(yorum: yorumlar[3])),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  burcYorumCard(
                    icon: Icons.calendar_view_week,
                    title: "Haftalık Burç Yorumları",
                    onTap: ()=>navigateToPage(context, UzunYorum(yorum: yorumlar[2])),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  burcYorumCard(
                    icon: Icons.calendar_month,
                    title: "Aylık Burç Yorumları",
                    onTap: ()=>navigateToPage(context, UzunYorum(yorum: yorumlar[0])),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  burcYorumCard(
                    icon: Icons.calendar_today_outlined,
                    title: "Yıllık Burç Yorumları",
                    onTap: ()=>navigateToPage(context, UzunYorum(yorum: yorumlar[1])),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget burcYorumCard({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Card(
      color: const Color(0xFF0a1832),
      elevation: 20,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:
          Container(
            width: 300,
            height: 150,
            padding: const EdgeInsets.all(20),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, size: 60, color: Colors.white),
                const SizedBox(height: 10),
                Text(
                  title,
                  style: const TextStyle(fontSize: 25, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Navigasyon fonksiyonunu daha genel hale getirdik
  void navigateToPage(BuildContext context, Widget page) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => page))
        .then((value) => setState(() {}));
  }
}