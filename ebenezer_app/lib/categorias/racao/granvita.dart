import 'package:ebenezerapp/categorias/detelhes/detalhes.dart';
import 'package:ebenezerapp/categorias/detelhes/lifead.dart';
import 'package:ebenezerapp/categorias/detelhes/lifenova.dart';
import 'package:ebenezerapp/categorias/detelhes/liferp.dart';
import 'package:ebenezerapp/categorias/detelhes/quatres1.dart';
import 'package:ebenezerapp/categorias/detelhes/quatres2.dart';
import 'package:ebenezerapp/categorias/detelhes/quatres3.dart';
import 'package:ebenezerapp/categorias/detelhes/quatres4.dart';
import 'package:ebenezerapp/categorias/detelhes/quatres5.dart';
import 'package:ebenezerapp/categorias/detelhes/quatres6.dart';
import 'package:ebenezerapp/categorias/detelhes/quatres7.dart';
import 'package:ebenezerapp/categorias/detelhes/quatresc.dart';
import 'package:flutter/material.dart';

class granvita extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0.1,
        backgroundColor: Colors.deepPurple,
        title: Text('Granvita', textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,),
              onPressed: () {}),

        ],),
     body:ListView(
       children: <Widget>[
         new Padding(
           padding:
           const EdgeInsets.fromLTRB(12.0, 2.0, 12.0, 2.0),
        child:
          Card(
            child: Column(
             children: <Widget>[
                InkWell(
                onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return quatres1();
          }
          ));
          },
            child:
               ListTile( //================LISTA=================
                 leading: new Image.asset("images/produtosimage/quatres1.png",width: 100.0,
                   height: 80.0,),
                 //==============TITULO==================
                 title: new Text("Quatree Dermato"),
                 //==============SUBTITULO===============
                 subtitle: Text("Quatree Supreme 15kg"),
               ),
                ),
             ],
            ),
          ),
        ),
         new Padding(
           padding:
           const EdgeInsets.fromLTRB(12.0, 2.0, 12.0, 2.0),
           child:
           Card(
             child: Column(
               children: <Widget>[
                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                       return quatres2();
                     }
                     ));
                   },
                   child:
                   ListTile( //================LISTA=================
                     leading: new Image.asset("images/produtosimage/quatres2.png",width: 100.0,
                       height: 80.0,),
                     //==============TITULO==================
                     title: new Text("Quatree Adulto RP"),
                     //==============SUBTITULO===============
                     subtitle: Text("Quatree Supreme 15kg"),
                   ),
                 ),
               ],
             ),
           ),
         ),
         new Padding(
           padding:
           const EdgeInsets.fromLTRB(12.0, 2.0, 12.0, 2.0),
           child:
           Card(
             child: Column(
               children: <Widget>[
                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                       return quatres3();
                     }
                     ));
                   },
                   child:
                   ListTile( //================LISTA=================
                     leading: new Image.asset("images/produtosimage/quatres3.png",width: 100.0,
                       height: 80.0,),
                     //==============TITULO==================
                     title: new Text("Quatree Adulto Rmg"),
                     //==============SUBTITULO===============
                     subtitle: Text("Quatree Supreme 15kg"),
                   ),
                 ),
               ],
             ),
           ),
         ),
         new Padding(
           padding:
           const EdgeInsets.fromLTRB(12.0, 2.0, 12.0, 2.0),
           child:
           Card(
             child: Column(
               children: <Widget>[
                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                       return quatres4();
                     }
                     ));
                   },
                   child:
                   ListTile( //================LISTA=================
                     leading: new Image.asset("images/produtosimage/quatres4.png",width: 100.0,
                       height: 80.0,),
                     //==============TITULO==================
                     title: new Text("Quatree Senior RP"),
                     //==============SUBTITULO===============
                     subtitle: Text("Quatree Supreme 15kg"),
                   ),
                 ),
               ],
             ),
           ),
         ),
         new Padding(
           padding:
           const EdgeInsets.fromLTRB(12.0, 2.0, 12.0, 2.0),
           child:
           Card(
             child: Column(
               children: <Widget>[
                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                       return quatres5();
                     }
                     ));
                   },
                   child:
                   ListTile( //================LISTA=================
                     leading: new Image.asset("images/produtosimage/quatres5.png",width: 100.0,
                       height: 80.0,),
                     //==============TITULO==================
                     title: new Text("Quatree Senior RMG"),
                     //==============SUBTITULO===============
                     subtitle: Text("Quatree Supreme 15kg"),
                   ),
                 ),
               ],
             ),
           ),
         ),
         new Padding(
           padding:
           const EdgeInsets.fromLTRB(12.0, 2.0, 12.0, 2.0),
           child:
           Card(
             child: Column(
               children: <Widget>[
                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                       return quatres6();
                     }
                     ));
                   },
                   child:
                   ListTile( //================LISTA=================
                     leading: new Image.asset("images/produtosimage/quatres6.png",width: 100.0,
                       height: 80.0,),
                     //==============TITULO==================
                     title: new Text("Quatree Filhotes"),
                     //==============SUBTITULO===============
                     subtitle: Text("Quatree Supreme 15kg"),
                   ),
                 ),
               ],
             ),
           ),
         ),
         new Padding(
           padding:
           const EdgeInsets.fromLTRB(12.0, 2.0, 12.0, 2.0),
           child:
           Card(
             child: Column(
               children: <Widget>[
                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                       return quatres7();
                     }
                     ));
                   },
                   child:
                   ListTile( //================LISTA=================
                     leading: new Image.asset("images/produtosimage/quatres7.png",width: 100.0,
                       height: 80.0,),
                     //==============TITULO==================
                     title: new Text("Quatree Filhote RMG"),
                     //==============SUBTITULO===============
                     subtitle: Text("Quatree Supreme 15kg"),
                   ),
                 ),
               ],
             ),
           ),
         ),
         new Padding(
           padding:
           const EdgeInsets.fromLTRB(12.0, 2.0, 12.0, 2.0),
           child:
           Card(
             child: Column(
               children: <Widget>[
                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                       return lifead();
                     }
                     ));
                   },
                   child:
                   ListTile( //================LISTA=================
                     leading: new Image.asset("images/produtosimage/lifead.jpg",width: 100.0,
                       height: 80.0,),
                     //==============TITULO==================
                     title: new Text("Quatree Life"),
                     //==============SUBTITULO===============
                     subtitle: Text("Quatree Premium Especial 15kg"),
                   ),
                 ),
               ],
             ),
           ),
         ),
         new Padding(
           padding:
           const EdgeInsets.fromLTRB(12.0, 2.0, 12.0, 2.0),
           child:
           Card(
             child: Column(
               children: <Widget>[
                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                       return lifenova();
                     }
                     ));
                   },
                   child:
                   ListTile( //================LISTA=================
                     leading: new Image.asset("images/produtosimage/lifenova.jpg",width: 100.0,
                       height: 80.0,),
                     //==============TITULO==================
                     title: new Text("Quatree Life Filhote"),
                     //==============SUBTITULO===============
                     subtitle: Text("Quatree Premium Especial 15kg"),
                   ),
                 ),
               ],
             ),
           ),
         ),
         new Padding(
           padding:
           const EdgeInsets.fromLTRB(12.0, 2.0, 12.0, 2.0),
           child:
           Card(
             child: Column(
               children: <Widget>[
                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                       return liferp();
                     }
                     ));
                   },
                   child:
                   ListTile( //================LISTA=================
                     leading: new Image.asset("images/produtosimage/liferp.jpg",width: 100.0,
                       height: 80.0,),
                     //==============TITULO==================
                     title: new Text("Quatree Life RP"),
                     //==============SUBTITULO===============
                     subtitle: Text("Quatree Premium Especial 15kg"),
                   ),
                 ),
               ],
             ),
           ),
         ),
         new Padding(
           padding:
           const EdgeInsets.fromLTRB(12.0, 2.0, 12.0, 2.0),
           child:
           Card(
             child: Column(
               children: <Widget>[
                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                       return detalhes();
                     }
                     ));
                   },
                   child:
                   ListTile( //================LISTA=================
                     leading: new Image.asset("images/produtosimage/quatre.jpg",width: 100.0,
                       height: 80.0,),
                     //==============TITULO==================
                     title: new Text("Quatree"),
                     //==============SUBTITULO===============
                     subtitle: Text("Quatree Gourmet 15kg"),
                   ),
                 ),
               ],
             ),
           ),
         ),
         new Padding(
           padding:
           const EdgeInsets.fromLTRB(12.0, 2.0, 12.0, 2.0),
           child:
           Card(
             child: Column(
               children: <Widget>[
                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                       return quatresc();
                     }
                     ));
                   },
                   child:
                   ListTile( //================LISTA=================
                     leading: new Image.asset("images/produtosimage/quatresc.png",width: 100.0,
                       height: 80.0,),
                     //==============TITULO==================
                     title: new Text("Quatree"),
                     //==============SUBTITULO===============
                     subtitle: Text("Quatree Gourmet 15kg"),
                   ),
                 ),
               ],
             ),
           ),
         ),
         new Padding(
           padding:
           const EdgeInsets.fromLTRB(12.0, 2.0, 12.0, 2.0),
           child:
           Card(
             child: Column(
               children: <Widget>[
                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                       return detalhes();
                     }
                     ));
                   },
                   child:
                   ListTile( //================LISTA=================
                     leading: new Image.asset("images/produtosimage/quatrerp.webp",width: 100.0,
                       height: 80.0,),
                     //==============TITULO==================
                     title: new Text("Quatree"),
                     //==============SUBTITULO===============
                     subtitle: Text("Quatree Gourmet 15kg"),
                   ),
                 ),
               ],
             ),
           ),
         ),
         new Padding(
           padding:
           const EdgeInsets.fromLTRB(12.0, 2.0, 12.0, 2.0),
           child:
           Card(
             child: Column(
               children: <Widget>[
                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                       return detalhes();
                     }
                     ));
                   },
                   child:
                   ListTile( //================LISTA=================
                     leading: new Image.asset("images/produtosimage/quatreef.png",width: 100.0,
                       height: 80.0,),
                     //==============TITULO==================
                     title: new Text("Quatree"),
                     //==============SUBTITULO===============
                     subtitle: Text("Quatree Gourmet 15kg"),
                   ),
                 ),
               ],
             ),
           ),
         ),


       ],

      ),

    );
  }
}
