import 'dart:ffi';

import 'package:flutterrevisao1410/database/app.database.dart';
import 'package:flutterrevisao1410/domain/animal.dart';
import 'package:get/get.dart';

class AnimalController extends GetxController{
  //criar variavel pra ver se salvou e der certo
  //variavel reativa Rx
  final Rx<bool> _status = Rx(false);
  AnimalDataBase animalDataBase = AnimalDataBase.instance;

  AnimalController();

  saveAnimal(Animal value) async{
    animalDataBase.insert(value);
    _status.value = true;

  }
}