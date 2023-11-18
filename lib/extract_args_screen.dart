import 'package:flutter/material.dart';
import 'package:tarea2_1/info_contacto.dart';
import 'package:tarea2_1/lista_contactos.dart';

// A Widget that extracts the necessary arguments from
// the ModalRoute.
class ExtractArgumentsScreen extends StatelessWidget {
  const ExtractArgumentsScreen({super.key});

  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute
    // settings and cast them as ScreenArguments.
    final args = ModalRoute.of(context)!.settings.arguments as ListaContacto;

    return const InfoContacto();
  }
}
