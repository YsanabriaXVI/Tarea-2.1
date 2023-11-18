import 'package:flutter/material.dart';

class InfoContacto extends StatelessWidget {
  const InfoContacto({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtiene los datos recibidos
    List<Map<String, dynamic>> datos = ModalRoute.of(context)!
        .settings
        .arguments as List<Map<String, dynamic>>;

    // Accede al nombre y el teléfono
    final String nombre = datos[0]['nombre'].toString();
    final String telefono = datos[0]['telefono'].toString();
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: const Color.fromARGB(255, 226, 94, 136),
                radius: 50,
                child: Text(
                  nombre,
                  style: const TextStyle(fontSize: 50, color: Colors.white),
                ),
              ),
              const SizedBox(height: 40),
              Text(
                nombre,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
              ),
              const SizedBox(height: 20),

              // Botones fuera del Card
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildButtonColumn(Icons.call_outlined, 'Llamar', 28, 15,
                      const Color.fromARGB(255, 100, 107, 132)),
                  _buildButtonColumn(Icons.message_outlined, 'Mensaje de texto',
                      28, 15, const Color.fromARGB(255, 100, 107, 132)),
                  _buildButtonColumn(Icons.videocam_outlined, 'Video', 33, 15,
                      const Color.fromARGB(255, 100, 107, 132)),
                ],
              ),
              const SizedBox(height: 18),

              // Linea de division
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.grey[350],
              ),
              const SizedBox(height: 20),

              Card(
                elevation: 0,
                color: const Color.fromARGB(124, 255, 255, 255),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Información de contacto',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                      const SizedBox(height: 15),

                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: const Icon(Icons.call_outlined, size: 28),
                        title: Text(telefono),
                        subtitle: const Text('Celular'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            _buildIconColumn(Icons.message_outlined, 28),
                            _buildIconColumn(Icons.videocam_outlined, 33),
                          ],
                        ),
                      ),

                      // Botones dentro del Card
                      Column(
                        children: [
                          _buildContactOptionColumn(
                              'Enviar mensaje a +$telefono',
                              Icons.mobile_screen_share_rounded),
                          _buildContactOptionColumn('Llamar a +$telefono',
                              Icons.mobile_screen_share_rounded),
                          _buildContactOptionColumn('Videollamar a +$telefono',
                              Icons.mobile_screen_share_rounded),
                          _buildContactOptionColumn(
                              'Mensaje al +$telefono', Icons.telegram),
                          _buildContactOptionColumn(
                              'Llamada de voz al +$telefono', Icons.telegram),
                          _buildContactOptionColumn(
                              'Videollamada al +$telefono', Icons.telegram),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButtonColumn(IconData icon, String label, double iconSize,
      double fontSize, Color color) {
    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            icon,
            size: iconSize,
            color: color,
          ),
        ),
        Text(
          label,
          style: TextStyle(
            color: color,
            fontSize: fontSize,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _buildIconColumn(IconData icon, double iconSize) {
    return IconButton(
      onPressed: () {},
      icon: Icon(
        icon,
        size: iconSize,
      ),
    );
  }

  Widget _buildContactOptionColumn(String label, IconData icon) {
    return Column(
      children: [
        Row(
          children: [
            _buildIconColumn(icon, 27),
            const SizedBox(width: 8),
            Text(label),
          ],
        ),
        const SizedBox(height: 8), // Espaciado entre botones
      ],
    );
  }
}
