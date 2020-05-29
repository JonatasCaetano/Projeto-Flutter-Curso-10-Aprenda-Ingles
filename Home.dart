import 'package:aprendaingles/telas/Bichos.dart';
import 'package:aprendaingles/telas/Numeros.dart';
import 'package:aprendaingles/telas/Vogais.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
        length: 3,
        vsync: this
    );
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aprenda Inglês'),
        bottom: TabBar(
          indicatorColor: Colors.white,
          indicatorWeight: 4.0,
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
            controller: tabController,
            tabs: <Widget>[
              Tab(text: 'Bichos',),
              Tab(text: 'Números',),
              Tab(text: 'Vogais',)
            ],
        ),
      ),
      body: TabBarView(
          controller: tabController,
          children: <Widget>[
            Bichos(),
            Numeros(),
            Vogais()
          ],
      ),
    );
  }
}
