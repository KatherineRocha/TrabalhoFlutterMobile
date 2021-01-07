import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:study_plan/bloc/auth_bloc.dart';
import 'package:study_plan/bloc/auth_event.dart';
import 'package:study_plan/scoped_models/global_model.dart';
import 'package:study_plan/screens/Home/task_entry.dart';
import 'package:study_plan/screens/Home/task_list.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Home> {
  final SelectedTask _model = SelectedTask();

  //@override
  //}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Bem vindo ao Study Plan"),
        ),
        body: Container(
          color: Colors.white,
          child: Text("Este é um aplicativo para organizar suas atividades...           ",
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, height: 20),
          ),
        ),

        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Katherine Rocha"),
                accountEmail: Text("sanrochakatherine@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor:
                  Theme.of(context).platform == TargetPlatform.iOS
                      ? Colors.blue: Colors.white,
                  child: Text("K", style:
                  TextStyle(fontSize: 40.0),
                  ),
                ),
              ),
              ListTile(
                  leading: Icon(Icons.book),
                  title: Text("Disciplinas"),
                  subtitle: Text("minhas disciplinas..."),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    debugPrint('toquei no drawer');
                  }),
              ListTile(
                  leading: Icon(Icons.calendar_today),
                  title: Text("Calendario de atividades"),
                  subtitle: Text("minhas atividades..."),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.pop(context);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
