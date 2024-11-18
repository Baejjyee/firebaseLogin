import 'package:chomyeon/registerPage.dart';
import 'package:flutter/material.dart';
import 'registerPage.dart';
class loginPage extends StatelessWidget {
  const loginPage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: loginForm(),
    );
  }
}
class loginForm extends StatefulWidget {
  const loginForm({super.key});

  @override
  State<loginForm> createState() => _loginFormState();
}
class _loginFormState extends State<loginForm> {
  final _formKey = GlobalKey<FormState>();
  String email ='';
  String password ='';
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Email'
            ),
            onChanged: (value){
              email = value;
              print(email);
            },
          ),
          SizedBox(
            height: 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'password'
            ),
            onChanged: (value){
              password = value;
              print(password);
            },
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){}, child: Text('Enter')),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('If you did not register,'),
              TextButton(
                  onPressed: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => registerPage()));
                  },
                  child: Text('Register your email')
              ),
            ],
          ),
        ],
      ),
    );
  }
}





