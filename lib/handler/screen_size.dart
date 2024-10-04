import 'package:flutter/material.dart';

bool isScreenSizeMovil(BuildContext context, {double minWidth = 600}) {
  // Obtiene el tamaño de la pantalla
  var screenSize = MediaQuery.of(context).size;

  // Retorna true si el ancho de la pantalla es mayor o igual que el mínimo requerido
  return screenSize.width >= minWidth;
}
