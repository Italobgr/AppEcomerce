import 'package:ebenezerapp/pages/card.dart';
import 'package:flutter/material.dart';

class detalhes extends StatelessWidget {
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
                  child: Image.asset("images/produtosimage/quatre.jpg"),
                ),
                footer: new Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: new Text("Quatree Gourmet",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                            child: new Text("R\$${"100"}",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),)
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
                    onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>new Cart()));},//mudar
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

          ]
      ),
    );
  }
}
