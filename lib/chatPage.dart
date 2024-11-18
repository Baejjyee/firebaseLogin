import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class chatPage extends StatelessWidget {
  const chatPage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your email is',style: TextStyle(fontSize: 20),),
            SizedBox(height: 20,),
            Text('Your email is',style: TextStyle(fontSize: 20),),
          ],
        ),
      ),
    );
  }
}
