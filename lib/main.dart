import 'package:flutter/material.dart';
import 'package:flutter_get_api_mvc/local_database/database.dart';
import 'package:flutter_get_api_mvc/local_database/task_dao.dart';
import 'package:flutter_get_api_mvc/views/home_page.dart';
import 'package:get/get.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  final database = await $FloorFlutterDatabase
      .databaseBuilder('flutter_database.db')
      .build();
  final dao = database.taskDao;

  runApp(MyApp(dao: dao,));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final TaskDao dao;

  const MyApp({this.dao});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ShopX',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(dao: dao,),
    );
  }
}
