import 'package:flutter/material.dart';
import 'package:samples/pages/components/fields/textField-component.dart';

class LoginPageOne extends StatefulWidget {
  @override
  _LoginPageOneState createState() => _LoginPageOneState();
}

class _LoginPageOneState extends State<LoginPageOne> {
  final loginController = TextEditingController();
  bool _showPassword = true;
  final passwordAccessController = TextEditingController();

  Icon icon = Icon(Icons.visibility_off, color: Colors.blue,);

  showPassword() {
    setState(() {
      _showPassword = !_showPassword;
    });
    if(_showPassword == false){
      setState(() {
        icon = Icon(Icons.visibility, color: Colors.blue,);
      });
    }else{
      icon = Icon(Icons.visibility_off, color: Colors.blue,);;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(12),
          physics: AlwaysScrollableScrollPhysics(),
          child: Column(
            children: [
              Text(
                "Login - Exemplo 1",
                style: TextStyle(color: Colors.blue, fontSize: 30),
              ),
              SizedBox(
                height: 30,
              ),
              TextFieldComponent(
                  controller: loginController,
                  labelText: "Login",
                  icon: Icon(
                    Icons.person,
                    color: Colors.blue,
                  ),
                  obscureText: false),
              SizedBox(
                height: 30,
              ),
              TextField(
                controller: passwordAccessController,
                obscureText: _showPassword,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                        borderSide: BorderSide(
                          color: Colors.blue,
                          width: 10.0,
                        )),
                    labelText: 'SENHA',
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.blue,
                    ),
                    suffixIcon: 
                     IconButton(
                      onPressed: (){
                        showPassword();
                      },
                      icon: icon
                    )
                    ),
                style: TextStyle(color: Colors.blue),
                cursorColor: Colors.blue,
              )
            ],
          ),
        ),
      ),
    );
  }
}
