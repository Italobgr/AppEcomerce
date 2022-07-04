import 'package:ebenezerapp/pages/card.dart';
import 'package:ebenezerapp/pages/login.dart';
import 'package:flutter/material.dart';

class PruductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  PruductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
  });

  @override
  _PruductDetailsState createState() => _PruductDetailsState();
}

class _PruductDetailsState extends State<PruductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Colors.deepPurple,
        title: Text('Ebenézer',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),

     body: new ListView(
       children: <Widget>[
         new Container(
           height: 250.0,
           child: GridTile(
               child: Container(
                 color: Colors.white,
                 child: Image.asset(widget.product_detail_picture),
               ),
             footer: new Container(
               color: Colors.white70,
               child: ListTile(
                 leading: new Text(widget.product_detail_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                 title: new Row(
                  children: <Widget>[
                    Expanded(
                     child: new Text("R\$${widget.product_detail_new_price}",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
                    ),
                  ],
                 ),
               ),
             ),
           ),
         ),
         // =========== primeiro botão =========
         Row(
         children: <Widget>[
           Expanded(
             child: MaterialButton(
               onPressed: (){
                 showDialog(context: context,
                     builder: (context){
                       return new AlertDialog(
                         title: new Text("Quantidade"),
                         content: new Text("Escolha a Quantidade"),
                         actions: <Widget>[
                           new MaterialButton(onPressed: (){
                             Navigator.of(context).pop(context);
                           },
                             child: new Text("Fechar"),)
                         ],
                       );
                     });
               },
               color: Colors.white70,
               elevation: 0.2,
               child: Row(
                 children: <Widget>[
                   Expanded(
                     child:  new Text("Quantidade",textAlign: TextAlign.center,),
                   ),
                   Expanded(
                     child:  new Icon(Icons.arrow_drop_down),
                   ),
                   new IconButton(icon: Icon(Icons.add_shopping_cart,color: Colors.black,), onPressed: (){}),
                   new IconButton(icon: Icon(Icons.favorite,color: Colors.red,), onPressed: (){}),
                 ],
               ),),
           ),

          ],
         ),
//=============== botão de compra =======================
         Row(
           children: <Widget>[
             Expanded(
               child: MaterialButton(
                 onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>new Cart()));},
                 color: Colors.deepPurple,
                 textColor: Colors.white,
                 elevation: 0.2,
                 child: new Text("Compre Agora"),
               ),
             ),
           ],
         ),
         Divider(),
         new ListTile(
           title: new Text("DETALHES"),
           subtitle: new Text("Quatree Gourmet Adultos Raças Médias e Grandes é um alimento elaborado com matérias-primas selecionadas, que proporciona uma alimentação completa e balanceada para o seu cão. Contém proteínas de origem animal, tendo como fontes a farinha de carne e ossos, farinha de vísceras de frango e farinha de peixe. Formulado com óleo de soja refinado e gordura de frango, que fornecem os ácidos graxos essenciais ômegas 3 e 6."),
         ),
         Divider(),
         //RELENBRAR
         Row(
           children: <Widget>[
             Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
             child:  new Text("Categoria:",style: TextStyle(color: Colors.grey),),),
             Padding(padding: const EdgeInsets.all(5.0),
             child: new Text("Rações"),)
           ],
         ),
//RELENBRAR
         Row(
           children: <Widget>[
             Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
               child:  new Text("Fabricante:",style: TextStyle(color: Colors.grey),),),
             Padding(padding: const EdgeInsets.all(5.0),
               child: new Text("Granvita"),)
           ],
         ),

      Divider(),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: new Text("Similares",style: TextStyle(fontSize: 18),),
         ),

         //seção dos produtos similares
         Container(
         height: 340.0,
           child: Similar_products(),
         )
        ]
       ),
      );
  }
}
//--------------------------------------------------------------------------------------------------------------
class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    {
      "name": "Quatree",
      "picture": "images/produtosimage/quatre.jpg",
      "old_price": 120,
      "price": 85,
    },

    {
      "name": "Magnus",
      "picture": "images/produtosimage/mag.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Cibau",
      "picture": "images/produtosimage/cibau.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Hotdog",
      "picture": "images/produtosimage/download.jpg",
      "old_price": 120,
      "price": 85,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index){
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        }
    );
  }
}
class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });
  //pode dar problema no hero ep20
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: ()=> Navigator.of(context).push(
                new MaterialPageRoute(
                  //aqui esta passando os valores dos produtos para products_details
                    builder: (context)=> new PruductDetails(
                      product_detail_name: prod_name,
                      product_detail_new_price: prod_price,
                      product_detail_old_price: prod_old_price,
                      product_detail_picture: prod_picture,
                    ))),
            child: GridTile(
                footer: Container(
                  color: Colors.white,
                  child:  new Row(children: <Widget>[
                    Expanded(
                      child: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold),),
                    ),

                    new Text("R\$${prod_price}",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),)
                  ],),
                ),
                child:Image.asset(prod_picture,
                  fit: BoxFit.cover,)),
          ),
        ),
      ),
    );
  }
}
