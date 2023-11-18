import 'package:flutter/material.dart';
import 'package:tarea2_1/extract_args_screen.dart';
import 'package:tarea2_1/info_contacto.dart';
import 'package:tarea2_1/lista_contactos.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Contactos',
        theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.green,
        ),

        //initialRoute: '/infoContacto',
        initialRoute: '/listaContacto',
        routes: {
          '/infoContacto': (context) => const InfoContacto(),
          '/listaContacto': (context) => ListaContacto(),
          ExtractArgumentsScreen.routeName: (context) =>
              const ExtractArgumentsScreen(),
        },
        onGenerateRoute: (settings) {
          // If you push the PassArguments route
          if (settings.name == ExtractArgumentsScreen.routeName) {
            // Cast the arguments to the correct
            // type: ScreenArguments.
            // final args = settings.arguments as ListaContacto;

            // Then, extract the required data from
            // the arguments and pass the data to the
            // correct screen.
            return MaterialPageRoute(
              builder: (context) {
                return const InfoContacto();
              },
            );
          }
        });
  }
}
