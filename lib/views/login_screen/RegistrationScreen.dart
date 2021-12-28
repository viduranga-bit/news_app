import 'package:flutter/material.dart';
import 'package:news_app/utils/widgets/customTextField.dart';

class RegistrarionPage extends StatelessWidget {
   RegistrarionPage({ Key? key }) : super(key: key);
  final TextEditingController _firstName = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _lastName = TextEditingController();
    final TextEditingController _userName = TextEditingController();
      final TextEditingController _conformPassword = TextEditingController();
    final TextEditingController _mobileNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(



        body: Padding(
            padding: EdgeInsets.all(30),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(40),
                    child: Text(
                      'Registration',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w700,
                          fontSize: 45),
                    )),
              
                  
                  CustomTextField(controller: _firstName, lable: "firstName"),
                  SizedBox(height: 20,),
                  CustomTextField(controller: _lastName, lable: "Last Name"),
                  SizedBox(height: 20,),
                  CustomTextField(controller: _userName, lable: "Password"),
                  SizedBox(height: 20,),
                  CustomTextField(controller: _password, lable: "Password",isObscure: true,),
                  SizedBox(height: 20,),
                  CustomTextField(controller: _conformPassword, lable: "Conform Password",isObscure: true,),
                  SizedBox(height: 20,),
                  CustomTextField(controller: _mobileNumber, lable: "Mobile Number"),
                   
                  SizedBox(height: 20,), 
                Container(
                    height: 50,
                    
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Register',style: TextStyle(
                        fontSize: 25,
                      ),),
                      onPressed: () {
                       // print(_userName.text);
                        print(_password.text);
                      },
                    )),
    
              
              ],
            )));
  }

      
    
  }

