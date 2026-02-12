import 'package:flutter/material.dart';

void main() => runApp(AppPetco());

class AppPetco extends StatelessWidget {
  const AppPetco({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Petco',
      debugShowCheckedModeBanner: false,
      home: Mascotas(),
    );
  }
} // fin clase AppPetcp

class Mascotas extends StatelessWidget {
  const Mascotas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
            // Color de fondo azul claro
            backgroundColor: const Color.fromARGB(255, 255, 154, 154),
            centerTitle: true,
            title: const Text(
              "Petco Contreras",
              style: TextStyle(
                // Color de texto guinda oscuro
                color: Color(0xFF0047AB), 
                fontWeight: FontWeight.bold,
              ),
            ),
            // Icono de mascota a la izquierda
            leading: const Icon(
              Icons.pets,
              color: Color(0xFF0047AB), 
            ),
            // Acciones a la derecha
            actions: [
              IconButton(
                icon: const Icon(Icons.inventory_2), // Caja
                color: const Color(0xFF0047AB), 
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.sell), // Vender / Etiqueta
                color: const Color(0xFF0047AB), 
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.medical_services), // Medicina
                color: const Color(0xFF0047AB), 
                onPressed: () {},
              ),
            ],
          ),
body: ListView(
          padding: const EdgeInsets.all(10), // Espaciado alrededor de la lista
          children: [
            ListTile(
              tileColor: const Color.fromARGB(255, 204, 233, 253), // Color de fondo
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              leading: const Icon(Icons.person, color: Colors.blue),
              title: const Text('Perfil de Usuario'),
              trailing: const Icon(Icons.edit),
            ),
            const SizedBox(height: 8), // Espacio entre elementos
            ListTile(
              tileColor: const Color.fromARGB(255, 217, 245, 219),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              leading: const Icon(Icons.shopping_cart, color: Colors.green),
              title: const Text('Carrito de Compras'),
              trailing: const Icon(Icons.arrow_forward),
            ),
            const SizedBox(height: 8),
            ListTile(
              tileColor: const Color.fromARGB(255, 255, 234, 199),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              leading: const Icon(Icons.settings, color: Colors.orange),
              title: const Text('Ajustes del Sistema'),
              trailing: const Icon(Icons.tune),
            ),
            const SizedBox(height: 8),
            ListTile(
              tileColor: const Color.fromARGB(255, 241, 207, 247),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              leading: const Icon(Icons.account_balance_wallet, color: Colors.purple),
              title: const Text('Pagos y Facturas'),
              trailing: const Icon(Icons.history),
            ),
            const SizedBox(height: 8),
            ListTile(
              tileColor: const Color.fromARGB(255, 252, 211, 217),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              leading: const Icon(Icons.info, color: Colors.red),
              title: const Text('Información Legal'),
              trailing: const Icon(Icons.description),
            ),
          ],
        ),
    );
  }
}