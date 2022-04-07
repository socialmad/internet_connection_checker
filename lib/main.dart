import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/home/home_page.dart';
import 'package:internet_connection_checker/home/home_page_binding.dart';
import 'package:internet_connection_checker/routes/app_pages.dart';
import 'package:internet_connection_checker/utils/dependency_injection.dart';

void main() {
  runApp(const MyApp());
  DependencyInjection.init(); //Here we are calling the Dependency Injection
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Counter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      initialBinding: HomeBinding(),
      getPages: AppPages.pages,
    );
  }
}
