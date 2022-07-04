import 'package:ebenezerapp/categorias/cate.dart';
import 'package:ebenezerapp/iconsHome/icons_home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:ebenezerapp/componentes/horizontal_listview.dart';
import 'package:ebenezerapp/componentes/Produtos.dart';
import 'package:ebenezerapp/pages/card.dart';
import 'package:flutter/cupertino.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget imagecarousel = new Container(
      height: 220.0 ,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/dog.jpg'),

//carrousel pro começo da pagina

        ],
        autoplay: true,//mude para true
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(microseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.deepPurpleAccent,
        indicatorBgPadding: 3.0,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.deepPurple,
        title: Text('Ebenézer', textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),),
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search, color: Colors.white,),
              onPressed: () {}),
          new IconButton(
              icon: Icon(Icons.shopping_cart, color: Colors.white,),
              onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>new Cart()));}),
        ],
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //        header
            new UserAccountsDrawerHeader(accountName: Text('Ebenézer'), accountEmail: Text('italobrunobgr@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.deepPurpleAccent,
                  child: Icon(Icons.person,color: Colors.black,),
                ),
              ),
              decoration: new BoxDecoration(
                  color: Colors.deepPurple
              ),
            ),
            //icones
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home,color: Colors.brown,),
              ),
            ),
            //=========================aqui=====================================
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return iconsHome();
                }
                ));
              },
              child: ListTile(
                title: Text('Minha Conta'),
                leading: Icon(Icons.person,color: Colors.black,),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>new Cart()));
              },
              child: ListTile(
                title: Text('Carrinho'),
                leading: Icon(Icons.shopping_basket,color: Colors.blueGrey,),
              ),
            ),
            //=========================aqui================================
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return cate();
                }
                ));
              },
              child: ListTile(
                title: Text('Categorias'),
                leading: Icon(Icons.dashboard,color: Colors.yellow,),
              ),
            ),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favoritos'),
                leading: Icon(Icons.favorite,color: Colors.red,),
              ),
            ),
            Divider(),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings,color: Colors.grey,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Ajuda'),
                leading: Icon(Icons.help,color: Colors.blue,),
              ),
            ),
          ],
        ),
      ),

      body: new Column(
        children: <Widget>[
          imagecarousel,
          new Container(height: 8,),//Essa parte e do aviso
          new Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.deepPurple.withOpacity(0.5),
                      offset:  Offset(1.0,2.0),
                      blurRadius: 1
                  ),
                ]
            ),
            width: 340,
            height: 25,
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.add, color: Colors.deepPurple,),
                SizedBox(width: 7,),
                Text(" ENTREGA  GRATIS",style: TextStyle(color: Colors.black,
                  fontSize: 16,),),
              ],
            ),
          ), //ate here


          //icones de categoria horizontais
          HorizontalList(),

          new Padding(padding: const EdgeInsets.all(5.0),
            child: new Text('Recentes',textAlign: TextAlign.center,style:
            TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.blueGrey),), ),

          //grade
          Flexible(

              child: Produtos(),)
        ],
      ),

    );

  }
}
