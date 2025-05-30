import 'package:flutter/material.dart';
import 'package:navegacao_entre_telas/profile.dart';
import 'main.dart';

class Qrcode extends StatelessWidget {
  const Qrcode({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('QRCODE')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Voltar para a Tela 1
            Navigator.pop(context);
          },
          child: Text('Voltar para a Tela 1'),
        ),
      ),
      // RODAPÉ (Layout Inferior)
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue[50],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.qr_code_scanner_sharp),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Você já está na tela.'),
                      duration:
                          Duration(seconds: 2),
                      ),
                  );
                },
              ),
              IconButton(
                icon: Icon(Icons.person_2_sharp),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
