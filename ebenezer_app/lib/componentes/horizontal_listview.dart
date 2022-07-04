import 'package:ebenezerapp/iconsHome/icons_home.dart';
import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          categorias(
            image_location: 'images/icondog.png',
            image_caption: 'Cachorros',
          ),

          categorias(
            image_location: 'images/iconcat.png',
            image_caption: 'Gatos',
          ),

          categorias(
            image_location: 'images/iconpapa.png',
            image_caption: 'Passaros',
          ),

          categorias(
            image_location: 'images/iconfish.png',
            image_caption: 'Peixes',
          ),


        ],
      ),
    );
  }
}

class categorias extends StatelessWidget {
  final String image_location;
  final String image_caption;

  categorias({
   this.image_location,
   this.image_caption
});
//==============aqui========================
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(3.0),
   child: InkWell(onTap: (){
     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
       return iconsHome();
     }
     ));
   },
     child:  Container(
       width: 100.0,
       height: 80.0,
       child: ListTile(
             title: Image.asset(image_location),
             subtitle: Container(
               alignment: Alignment.topCenter,
               child: Text(image_caption),
             ),
           ),
     ),
     ),
    );
  }
}
