import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
var arrNames=['Maaz','Aftab','Muneeb','Daud','Maaz','Aftab','Muneeb','Daud','Maaz','Aftab','Muneeb','Daud','Maaz','Aftab','Muneeb'];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          showDialog(context: context, builder: (context) => AlertDialog(
            title: Text('Welcome to dialog box '),
            backgroundColor: Colors.red,
          ) ,);
        }, child: const Text('hello'))
      ),
    );
  }
}
