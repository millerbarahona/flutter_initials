import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
   
  const AlertScreen({Key? key}) : super(key: key);

  void displayAlert(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context, 
      builder: (context) {
        return AlertDialog(
          elevation: 2,
          title: const Text('Esto es un Alert'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este es el contenido de la alerta'),
              SizedBox(height: 20),
              Image(image: AssetImage('assets/jar-loading.gif'))
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cerrar')
            )
          ],
        );
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
         child: ElevatedButton(
           child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text('Mostrar Alert'),
           ),
           onPressed: () => displayAlert(context),
         ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const  Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}