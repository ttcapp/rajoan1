import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rajoan1/main.dart';

String _email="halimaislam2233@gmail.com";
String _password="r01761612490";
final _key=GlobalKey<FormState>();
class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("log in page"),
      ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _key,
            child: Column(
            children: [
              TextFormField(
                validator: (text){
                  if(text== null || text.isEmpty)
                  {
                    return"Mair Khabi?? Thik kore dee???";
                  }else if(text != _email){
                    return "Enter correct email";
                  }
                },
                decoration: InputDecoration(
                  hintText: "Enter your Email",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(
                      color: Colors.teal
                    )
                  )
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                validator: (text){
                  if(text== null || text.isEmpty)
                    {
                      return" Mair Khabi?? Thik kore de ??";
                    }
                  else if(text != _password){
                    return "Enter correct password";
                  }
                },
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter your Password",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide(
                            color: Colors.cyanAccent
                        )
                    )
                ),
              ),
              SizedBox(height: 25,
              ),
              ElevatedButton(
                  onPressed: (){
                    if(_key.currentState!.validate()){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>MyHomePage()
                          ));
                    }
              },
                  child: Text("Log In"))
            ],
    ),
          ),
        ),
    );
  }
}


