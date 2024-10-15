import 'package:flutter/material.dart';
import 'package:flutterrevisao1410/screens/animals/animal.controller.dart';

import '../../domain/animal.dart';
import '../../util/snippets.dart';

class AnimalCreateScreen extends StatefulWidget {
  const AnimalCreateScreen({super.key});

  @override
  State<AnimalCreateScreen> createState() => _AnimalCreateScreenState();
}

class _AnimalCreateScreenState extends State<AnimalCreateScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _raceController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  late AnimalController _animalController;

  @override
  void initState() {
    _animalController = AnimalController();
    super.initState();
  }

  _onPressed(){
    final animal = Animal(
        name: _nameController.text,
        race: _raceController.text,
        age: _ageController.text
    );
    _animalController.saveAnimal(animal);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastrar pet"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: TextFormField(
              controller: _nameController,
              decoration: inputDecoration(label: "Informe nome"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: TextFormField(
              controller: _raceController,
              decoration: inputDecoration(label: "Informe raça"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: TextFormField(
              controller: _ageController,
              decoration: inputDecoration(label: "Informe a idade"),
            ),
          ),
          ElevatedButton(onPressed: _onPressed, child: const Text("Entrar"))
        ],
      ),
    );



  }
}
