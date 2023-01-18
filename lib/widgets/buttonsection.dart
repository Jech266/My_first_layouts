import 'package:flutter/material.dart';

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton.icon(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('CALLING TO . . .'),
              ),
            );
          },
          icon: const Icon(Icons.call), //icon data for elevated button
          label: const Text("CALL"), //label text
          style: ElevatedButton.styleFrom(),
        ),
        ElevatedButton.icon(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('OPENING GOOGLE MAPS . . .'),
              ),
            );
          },
          icon: const Icon(Icons.near_me), //icon data for elevated button
          label: const Text("ROUTE"), //label text
          style: ElevatedButton.styleFrom(),
        ),
        ElevatedButton.icon(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('SHARING TO . . .'),
              ),
            );
          },
          icon: const Icon(Icons.share), //icon data for elevated button
          label: const Text("SHARE"), //label text
          style: ElevatedButton.styleFrom(),
        ),
      ],
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
        //ElevatedButton.icon(onPressed: (){}, label: Text(label), icon: null,)
      ],
    );
  }
}
