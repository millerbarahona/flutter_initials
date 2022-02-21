import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
            const ListTile(
            title: Text('Holaaa'),
            leading: Icon(Icons.add_reaction_sharp),
            subtitle: Text('In veniam duis elit cillum ullamco commodo magna sint sit nisi. Occaecat ea ea qui qui enim ex officia tempor anim. Exercitation fugiat eu enim consectetur nulla elit ea nostrud cillum anim culpa veniam. Nisi ad eiusmod consectetur exercitation sunt proident veniam nisi cupidatat pariatur commodo fugiat aliquip. Consequat eu laborum laborum magna culpa.'),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Ok')),
                TextButton(onPressed: () {}, child: const Text('Cancel'))
              ],
            ),
          )
        ],
      ),
    );
  }
}