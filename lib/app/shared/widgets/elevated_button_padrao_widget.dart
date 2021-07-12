import 'package:flutter/material.dart';

class ElevatedButtonPadraoWidget extends StatelessWidget {
  final IconData icon;
  final Function()? onPressed;
  final String titulo;
  const ElevatedButtonPadraoWidget(
      {Key? key, required this.icon, this.onPressed, required this.titulo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(fontSize: 24),
          elevation: 10,
        ),
        icon: Icon(
          icon,
          color: Colors.white,
          size: 24.0,
        ),
        onPressed: onPressed,
        label: Text(titulo),
      ),
    );
  }
}
