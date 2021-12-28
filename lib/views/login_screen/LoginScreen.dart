import 'package:flutter/material.dart';
import 'package:news_app/utils/util_functions.dart';
import 'package:news_app/utils/widgets/customTextField.dart';
import 'package:news_app/utils/widgets/custom_elevated_button.dart';
import 'package:news_app/views/login_screen/RegistrationScreen.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({ Key? key }) : super(key: key);
  TextEditingController _userName = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        body: Padding(
            padding: EdgeInsets.all(30),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(50),
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w700,
                          fontSize: 60),
                    )),
              
                  
                  CustomTextField(controller: _userName, lable: "User Name"),
                  SizedBox(height: 30,),
                  CustomTextField(controller: _password, lable: "Password",isObscure: true,),
                FlatButton(
                  onPressed: (){
                    //forgot password screen
                  },
                  textColor: Colors.blue,
                  child: Text('Forgot Password'),
                ),
                Container(
                    height: 50,
                    
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Login',style: TextStyle(
                        fontSize: 25,
                      ),),
                      onPressed: () {
                        print(_userName.text);
                        print(_password.text);
                      },
                    )),
    
                Column(
            
                  children: [
                    
                    Container(
                        child: Row(
                          
                          children: <Widget>[
                            Text('Does not have account?'),
                            FlatButton(
                              textColor: Colors.blue,
                              child: Text(
                                'Sign in',
                                style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.w600),
                              ),
                              onPressed: () {
                                 UtilFunctions.navigateTo(context, RegistrarionPage());
                              },
                            )
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        )),
                  ],
                )
              ],
            )));
  }
    bool valiedFileds(){
           if(_userName.text.isEmpty || _password.text.isEmpty){
             return false;
           }
           else if(_password.text.length<6){
             return false;
           }else{
             return true;
           }

    }
  
}
  

 




