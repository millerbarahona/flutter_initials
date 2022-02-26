import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
  
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Miller',
      'last_name': 'Barahona',
      'email': 'fernando@google.com',
      'password': '123',
      'role': 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children:  [
                CustomInputField(hintText: 'Nombre del Usuario', labelText: 'Nombre', formProperty: 'first_name', formValues: formValues,),
                const SizedBox(height: 20,),
                CustomInputField(hintText: 'Apellido del Usuario', labelText: 'Apellido', formProperty: 'last_name', formValues: formValues,),
                const SizedBox(height: 20,),
                CustomInputField(hintText: 'Correo del Usuario', labelText: 'Correo', keywordType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                const SizedBox(height: 20,),
                CustomInputField(hintText: 'Contraseña del Usuario', labelText: 'Contraseña', keywordType: TextInputType.emailAddress, obscureText: true, formProperty: 'password', formValues: formValues,),
                const SizedBox(height: 20,),
                
                DropdownButtonFormField<String>(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem(value: 'Admin', child:Text('Admin'),),
                    DropdownMenuItem(value: 'Superuser', child:Text('Superuser'),),
                    DropdownMenuItem(value: 'Developer', child:Text('Developer'),),
                    DropdownMenuItem(value: 'Jr. Developer', child:Text('Jr. Developer'),),
                  ],
                  onChanged: (value) {
                    formValues['role'] = value ?? 'Admin';
                  },
                ),

                const SizedBox(height: 20,),

                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    height: 20,
                    child: Center(child: Text('Guardar'),),
                  ),
                  onPressed: () {

                    FocusScope.of(context).requestFocus( FocusNode()); //codigo para minimizar el teclado al presionar el boton

                    if (!myFormKey.currentState!.validate()){
                      print('form no valido');
                    }
                    print(formValues);
                  },
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}