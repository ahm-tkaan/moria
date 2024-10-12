import 'package:flutter/material.dart';
import 'package:moria/appBar.dart';
import 'package:moria/listBurc.dart';
import 'package:moria/BurcBilgi.dart';

class Burclarsayfasi extends StatelessWidget {
  const Burclarsayfasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(context) {
    return _buildBurcList(context);
  }
}

Widget _buildBurcList(context) {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/wallpaper1.png"), fit: BoxFit.cover)),
    child: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Text(
              "Burçlar Hakkında Bilgiler: ",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Her burcun kendine özgü özellikleri vardır. \n Burçlar hakkında daha fazla bilgi almak için merak ettiğiniz burcun üzerine tıklayınız.",
                style: TextStyle(fontSize: 25),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            SingleChildScrollView(
              child: GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height / 4),
                crossAxisSpacing: 20,
                mainAxisSpacing: 40,
                children: burclar.map((burc) {
                  return ElevatedButton.icon(
                    style: ButtonStyle(
                        elevation: WidgetStatePropertyAll(15),
                        backgroundColor:
                            WidgetStatePropertyAll(Color(0xFF0a1832)),
                        textStyle: WidgetStatePropertyAll(TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            fontFamily: "AfacadFlux",
                            color: Colors.white)),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white)),
                    icon: Image.asset('assets/${burc.burcKucukResim}'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Burcbilgi(burc: burc)));
                    },
                    label: Text(burc.burcAdi),
                  );
                }).toList(),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
          ],
        ),
      ),
    ),
  );
}
