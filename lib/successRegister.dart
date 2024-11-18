import 'package:flutter/material.dart';

class successRegisterPage extends StatelessWidget {
  const successRegisterPage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('SuccessRegister'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You have successfully registerd',style: TextStyle(fontSize: 20),),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){}, child: Text('login')),
          ],
        ),
      ),
    );
  }
}
