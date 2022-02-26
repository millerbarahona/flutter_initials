import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {  
   
  const SliderScreen({Key? key}) : super(key: key); 

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  Map<String, int> colors = {
    'red': 250,
    'green': 250,
    'blue': 250,
  };

  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {

    Color bgColor = Color.fromRGBO(
      colors['red']!,
      colors['green']!,
      colors['blue']!,
    1
  );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            min: 0,
            max: 251,
            value: colors['red']!.toDouble(),
            onChanged: _sliderEnabled ? (value) {
              colors['red'] = value.toInt();
              setState(() {});
            }: null
            ,
            activeColor: Colors.redAccent,
            //divisions: 10, valores fijos
      
          ),
          Slider.adaptive(
            min: 0,
            max: 251,
            value: colors['green']!.toDouble(),
            onChanged: _sliderEnabled ? (value) {
              colors['green'] = value.toInt();
              setState(() {});
            } : null
            ,
            activeColor: Colors.greenAccent,
            //divisions: 10, valores fijos
      
          ),
          Slider.adaptive(
            min: 0,
            max: 251,
            value: colors['blue']!.toDouble(),
            onChanged: _sliderEnabled ? (value) {
              colors['blue'] = value.toInt();
              setState(() {});
            } : null
            ,
            activeColor: Colors.blueAccent,
            //divisions: 10, valores fijos
      
          ),
          //switchers
          // Checkbox(
          //   value: _sliderEnabled,
          //   onChanged: (value) {
          //     _sliderEnabled = value ?? true;
          //     setState(() {});
          //   }
          // ),
          CheckboxListTile(
            title: const Text('Habilitar Slider'),
            value: _sliderEnabled, 
            onChanged: (value) => setState(() {_sliderEnabled = value ?? true;})
          ),
          // Switch(
          //   value: _sliderEnabled, 
          //   onChanged: (value) => setState(() {_sliderEnabled = value;})
          // ),
          SwitchListTile.adaptive(
            title: const Text('Habilitar Sliders'),
            value: _sliderEnabled, 
            onChanged: (value) => setState(() {_sliderEnabled = value;})
          ),

          Expanded( //le dice al singlechild que tome toda la altura de la column
            child: SingleChildScrollView( //hace scrolleable el elemento 
              child: Container(
                decoration: BoxDecoration(
                  color: bgColor
                ),
                child: const Image(
                  image: NetworkImage('https://freepikpsd.com/file/2019/10/resultado-de-imagen-para-batman-comic-batman-comic-png-479_714.png'),
                  fit: BoxFit.contain,
                  width: double.infinity,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}