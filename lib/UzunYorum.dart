import 'package:flutter/material.dart';
import 'package:moria/appBar.dart';
import 'package:moria/listBurcYorum.dart';

class UzunYorum extends StatelessWidget {
  uzunYorum yorum;

  UzunYorum({super.key, required this.yorum});

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
          child: ListView(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Text(
                yorum.yorumSekli,
                style: TextStyle(fontSize: 40),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Container(
                child: Image.asset("assets/${yorum.yorumResim}"),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  yorum.yorumIcerik,
                  style: TextStyle(fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),

            ],
          ),
        ),
      ),
    );
  }
}
