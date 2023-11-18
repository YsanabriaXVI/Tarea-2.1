import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:tarea2_1/extract_args_screen.dart';

class ListaContacto extends StatelessWidget {
  ListaContacto({super.key});
  final List<Map<String, dynamic>> contactos = [
    {
      'nombre': 'Juan',
      'telefono': '+123456789',
      'correo': 'juan@example.com',
    },
    {
      'nombre': 'María',
      'telefono': '+987654321',
      'correo': 'maria@example.com',
    },
    {
      'nombre': 'Carlos',
      'telefono': '+111223344',
      'correo': 'carlos@example.com',
    },
    {
      'nombre': 'Ana',
      'telefono': '+555666777',
      'correo': 'ana@example.com',
    },
    {
      'nombre': 'Pedro',
      'telefono': '+999888777',
      'correo': 'pedro@example.com',
    },
    {
      'nombre': 'Yehudi',
      'telefono': '+7923430215',
      'correo': 'yehudi@example.com',
    },
    {
      'nombre': 'Elon Musk',
      'telefono': '+3578510317',
      'correo': 'elon@example.com',
    },
    {
      'nombre': 'Jimmy -Mr Beast',
      'telefono': '+3348109507',
      'correo': 'jimmy@example.com',
    },
    {
      'nombre': 'DrossRotzank',
      'telefono': '+9501287507',
      'correo': 'dross@example.com',
    },
    {
      'nombre': 'Peter Parker',
      'telefono': '+9501287507',
      'correo': 'peter@example.com',
    },
    {
      'nombre': 'Ryan',
      'telefono': '+9501287507',
      'correo': 'ryan@example.com',
    },
    {
      'nombre': 'Suzuka',
      'telefono': '+9501287507',
      'correo': 'suzuka@example.com',
    },
    {
      'nombre': 'Milagro',
      'telefono': '+9501287507',
      'correo': 'milagro@example.com',
    },
    {
      'nombre': 'Pablo',
      'telefono': '+9501287507',
      'correo': 'pablo@example.com',
    },
    {
      'nombre': 'Miguel',
      'telefono': '+9503127507',
      'correo': 'miguel@example.com',
    },
    {
      'nombre': 'Corey',
      'telefono': '+352313017',
      'correo': 'corey@example.com',
    },
    {
      'nombre': 'Messi',
      'telefono': '+9501287507',
      'correo': 'messi@example.com',
    },
  ];
  // Obtener el color de fondo de la superficie

// Crear un widget Color con el color de fondo de la superficie

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 255, 255, 255)),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.person_add_alt),
                      color: Colors.blue,
                      iconSize: 28,
                    ),
                    const Text(
                      'Crear nuevo contacto',
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: contactos.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Color(
                                    (math.Random().nextDouble() * 0xFFFFFF)
                                        .toInt())
                                .withOpacity(1.0),
                            radius: 23,
                            child: Center(
                              child: Text(
                                contactos[index]['nombre']
                                    .toString()
                                    .substring(0, 1),
                                style: const TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                            ),
                          ),
                          title: Text(contactos[index]['nombre'],
                              style: const TextStyle(fontSize: 17)),
                          trailing: const Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //Map<String, dynamic> contacto = contactos[index];
                            Navigator.pushNamed(
                              context,
                              ExtractArgumentsScreen.routeName,
                              arguments: ListaContacto(),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: InkWell(
        borderRadius: BorderRadius.circular(3),
        child: IconButton(
          icon: const Icon(Icons.call),
          iconSize: 40,
          color: const Color.fromARGB(255, 255, 255, 255),
          padding: const EdgeInsets.all(10),
          style: IconButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 74, 43, 227),
              elevation: 25),
          onPressed: () {},
        ),
      ),
    );
  }
}
