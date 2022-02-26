import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {

  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? sufixIcon;
  final TextInputType? keywordType;
  final bool obscureText;

  final String formProperty;
  final Map<String, dynamic> formValues;

  const CustomInputField({
    Key? key, this.hintText, 
    this.labelText, 
    this.helperText, 
    this.icon, 
    this.sufixIcon, 
    this.keywordType, 
    this.obscureText = false, 
    required this.formProperty, 
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.words,
      keyboardType: keywordType,
      obscureText: obscureText,
      onChanged: (String value) => formValues[formProperty] = value,
      validator: (String? value) {

        if (value == null) return 'Este campo es requerido';

        return value.length < 3 ? 'Minimo de 3 letras' : null;

      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText ,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: sufixIcon != null ? Icon(sufixIcon) : null,
        icon: icon != null ? Icon(icon) : null,
      )
    );
  }
}