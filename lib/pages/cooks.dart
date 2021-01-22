import 'package:flutter/material.dart';

class Cooks extends StatefulWidget {
  @override
  _CooksState createState() => _CooksState();
}

class _CooksState extends State<Cooks> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Pratos do Dia"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                child: Text("Hello"),
              ),
              Container(
                width: double.infinity,
                height: 520,
                child: ListView(
                  children: [
                    card(
                        "https://upload.wikimedia.org/wikipedia/commons/5/59/Calulu.jpg"),
                    card(
                        "https://img-global.cpcdn.com/recipes/f543d4fd00c3f93c/751x532cq70/foto-principal-da-receita-mufete.jpg"),
                    card(
                        "https://diaonline.ig.com.br/wp-content/uploads/2020/07/comida-caseira-brasilia_capa-1024x683.jpg"),
                    card(
                        "https://www.receitasemenus.net/wp-content/uploads/2019/02/feijoada-transmontana-minha-moda.jpg"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget card(url) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://piaui.folha.uol.com.br/wp-content/uploads/2020/12/erika-nogueira-vieira.png"),
                    backgroundColor: Colors.transparent,
                  ),
                  title: Text(
                    "Cozinha da Tia",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.blue,
                    ),
                  ),
                  subtitle: Text('Carne assada com molho de peixe'),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(0),
                  child: Image.network(
                    url,
                    fit: BoxFit.fill,
                    height: 120,
                    width: 350,
                  ),
                ),
                Container(
                  // make buttons use the appropriate styles for cards
                  child: ButtonBar(
                    children: <Widget>[
                      Text(
                        "1500 Akz",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      FlatButton(
                        child: const Text('Explorar'),
                        onPressed: () {/* ... */},
                        textColor: Colors.white,
                        color: Colors.amber,
                      ),
                      FlatButton(
                        child: const Text('Reservar'),
                        onPressed: () {/* ... */},
                        textColor: Colors.white,
                        color: Colors.amber,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
