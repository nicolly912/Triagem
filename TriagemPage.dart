import 'package:flutter/material.dart';

class TriagemPage extends StatefulWidget {
  const TriagemPage({super.key});

  @override
  State<TriagemPage> createState() => _TriagemPageState();
}

class _TriagemPageState extends State<TriagemPage> {

  final TextEditingController idadeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildappbar(),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/imagem.png', width: 70),
                  const SizedBox(width: 25),
                  ElevatedButton(
                    onPressed: () {

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Idade digitada: ${idadeController.text}"),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF7cb2d6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        side: const BorderSide(
                          color: Color(0xFF7CB2D6),
                          width: 2,
                        ),
                      ),
                      minimumSize: const Size(200, 60),
                    ),
                    child: const Text(
                      'TRIAGEM',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              const Text(
                'INFORMAÇÕES PESSOAIS',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.2,
                ),
                textAlign: TextAlign.start,
              ),

              const SizedBox(height: 15),

              TextField(
                controller: idadeController,
                keyboardType: TextInputType.number, // teclado numérico
                decoration: InputDecoration(
                  labelText: "Idade",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildappbar() {
    return AppBar(
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 30.0),
          child: const Icon(
            Icons.home,
            size: 40,
            color: Colors.white,
          ),
        ),
      ],
      toolbarHeight: 100,
      centerTitle: true,
      backgroundColor: const Color(0xFF7cb2d6),
      title: const Text(
        'TRIAGEM',
        style: TextStyle(
          fontSize: 32,
          fontFamily: 'Carrois Gothic SC',
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
