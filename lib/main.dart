import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rajoan1/profile.dart';
import 'package:slide_drawer/slide_drawer.dart';

void main() {
  runApp(MyApp());
}

double conHeight=100;
double conWidth=100;

String imgSrc1="https://thumbs.dreamstime.com/b/environment-earth-day-hands-trees-growing-seedlings-bokeh-green-background-female-hand-holding-tree-nature-field-gra-130247647.jpg";
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  final navigatorkey=GlobalKey<NavigatorState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorkey,
     home: SlideDrawer(
       backgroundColor: Colors.pink.shade900,
       items: [
         MenuItem('Home', icon: Icons.account_balance,
             onTap: (){}),
         MenuItem('Project',icon: Icons.ac_unit,
             onTap: (){}),
         MenuItem('Favourite',icon: Icons.add_to_photos,
             onTap: (){}),
         MenuItem('Profile',icon: Icons.work,
             onTap: (){
           navigatorkey.currentState!
               .push(MaterialPageRoute(builder:
               (context)=>Profile()));
             }),
         MenuItem('Setting',icon: Icons.admin_panel_settings,
             onTap: (){}),
       ],
       child: MyHomePage(),
     ),
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
        leading: IconButton(
          icon: Icon(Icons.menu),
          // call toggle from SlideDrawer to alternate between open and close
          // when pressed menu button
          onPressed: () => SlideDrawer.of(context)!.toggle(),
        ),
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
                InkWell(
                  onTap: (){
                    setState(() {
                      conHeight=400;
                      conWidth=250;
                    });
                  },
                  onDoubleTap:(){
                    setState(() {
                      conHeight=100;
                      conWidth=100;
                    });
                  },
                  child: AnimatedContainer(
                    height: conHeight,
                    width: conWidth,
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      image: DecorationImage(
                        image: AssetImage("assets/image/bird.jpg"),
                        fit: BoxFit.cover
                    ),
                        borderRadius: BorderRadius.circular(179),
                        border: Border.all(color: Colors.lightBlueAccent,width: 9.5)
                  ),
                    duration: Duration(milliseconds: 3999),
                  ),
                ),
                Image.asset("assets/image/image7.png"),
                Image.asset("assets/image/image6.png"),
                Container(
                  height: height/2,
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



