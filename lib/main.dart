import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

String imgSrc1="https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg";
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Basic"),
      ),
      body: Center(
        child: Container(
          height: height,
          width: width,
          color: Colors.indigo,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset("assets/image/image1.jpeg"),
                Image.asset("assets/image/image5.jpg"),
                Image.asset("assets/image/image7.png"),
                Image.asset("assets/image/image6.png"),
                Container(
                  height: height/3,
                    width: width/2,
                    child: Image.network(imgSrc1)),
                Text( "this is a image",style: TextStyle(
                  fontSize: 20,fontWeight: FontWeight.bold,
                  color:Colors.green
                ),),
              ],
            ),
          ),
        ),
      )
    );
  }
}



