import 'package:flutter/material.dart';
import 'package:my_app/introPage.dart';
import 'package:my_app/splashPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: splashPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {

  const MyHomePage({Key? key}) : super(key: key);






  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(

          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('flutter container'),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.blue),),
              Center(
                child: ElevatedButton(onPressed:(){
                  Navigator.pop(context );
                }, child: Text('Back')),
              )
            ],
          ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
        );
    }
}