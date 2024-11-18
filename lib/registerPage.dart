import 'package:chomyeon/successRegister.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'successRegister.dart';
class registerPage extends StatelessWidget {
  const registerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('register'),
      ),
      body: registerForm(),
    );
  }
}

class registerForm extends StatefulWidget {
  const registerForm({super.key});

  @override
  State<registerForm> createState() => _registerFormState();
}

class _registerFormState extends State<registerForm> {
  final _authentication = FirebaseAuth.instance;
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
          ElevatedButton(
              onPressed: () async {
                try{
                  final newUser = await _authentication.createUserWithEmailAndPassword(email: email, password: password);
                  if (newUser.user != null){
                    _formKey.currentState!.reset();
                    if(!mounted) return;
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const successRegisterPage()));
                  }
                }catch(e){
                  print(e);
                }
              },
              child: Text('Enter')),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text('If you already registered,'),
              TextButton(
                  onPressed: ()
                  {
                    Navigator.pop(context);
                  },
                  child: Text('login with your email')
              ),
            ],
          ),
        ],
      ),
    );
  }
}

