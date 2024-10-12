import 'package:flutter/material.dart';
import 'package:moria/BurclarSayfasi.dart';
import 'package:moria/BurcYorumSayfasi.dart';

class drawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFF3d4c5f),
      child: ListView(
        padding: EdgeInsets.all(50),

        children: [
          Container(
            child: Text("Menü",
                style: TextStyle(fontSize: 30, height: 5, color: Colors.white,)),
          ),
          ListTile(
            leading: Icon(Icons.star, color: Colors.white,size: 20,),
            title: Text("Burçlar",
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    height: 2,
                    color: Colors.white)),
            onTap: () {
              _burclaraGit(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.star, color: Colors.white,size: 20,),

            title: Text("Burç Yorumları",
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    height: 2,
                    color: Colors.white)),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BurcYorumPage()));
            },
          ),
        ],
      ),
    );
  }

  void _burclaraGit(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Burclarsayfasi()));
  }
}
