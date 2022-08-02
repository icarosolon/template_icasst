import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:icasst_template/app_theme.dart';
import 'package:icasst_template/error.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const IcasstApp();
  }
}

class IcasstApp extends StatelessWidget {
  const IcasstApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      title: 'Flutter UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        //textTheme: AppTheme.textTheme,
        //platform: TargetPlatform.iOS,
      ),
      home: const ErrorView(),
    );
    /* return const Scaffold(
      //appBar: AppBar(title: Text('teste'),),
      body: ErrorView(),
    ); */
  }
}