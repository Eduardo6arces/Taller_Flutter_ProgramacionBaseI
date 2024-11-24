import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hola Ejemplo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
        textTheme: GoogleFonts.robotoTextTheme(),
      ),
      home: Scaffold(
        body: Column(
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(20),
              color: Colors.teal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Garces APP',
                    style: GoogleFonts.roboto(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Icon(
                    MdiIcons.accountCircleOutline,
                    size: 35,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  // Sidebar
                  Container(
                    color: Colors.grey[200],
                    width: 200,
                    child: ListView(
                      children: [
                        ListTile(
                          leading: Icon(MdiIcons.projectorScreen,
                              color: Colors.teal),
                          title: const Text('Proyectos'),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(MdiIcons.fileDocumentOutline,
                              color: Colors.teal),
                          title: const Text('Documentos'),
                          onTap: () {},
                        ),
                        ListTile(
                          leading:
                              Icon(MdiIcons.shareVariant, color: Colors.teal),
                          title: const Text('Compartir'),
                          onTap: () {},
                        ),
                        const Divider(),
                        ListTile(
                          leading:
                              Icon(MdiIcons.cogOutline, color: Colors.teal),
                          title: const Text('Configuracion'),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(MdiIcons.accountPlusOutline,
                              color: Colors.teal),
                          title: const Text('Invitar Miembros'),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  // Main Content
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                        ),
                        itemCount: 4,
                        itemBuilder: (context, index) => nota(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Note card widget
  Widget nota() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 15,
                width: 15,
                decoration: const BoxDecoration(
                  color: Colors.teal,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                'Titulo X',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla nec odio nec nisl sodales fermentum.',
                style: TextStyle(color: Colors.grey[700]),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.edit, size: 18),
            label: const Text('Editar'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.teal[50],
              foregroundColor: Colors.teal[700],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
