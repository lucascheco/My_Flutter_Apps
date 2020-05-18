import 'PhrasescClass.dart';
import 'package:flutter/material.dart';

class PackPhrases {
  int _indice = 0;

  // ignore: non_constant_identifier_names
  List<Phrase> _Prhases = [
    Phrase(
      phrase: 'Não pare até se orgulhar.',
    ),
    Phrase(
      phrase: 'Não deixe seus sonhos serem apenas sonhos',
    ),
    Phrase(
      phrase: 'Uma coisa é certa tudo passa!',
    ),
    Phrase(
      phrase: 'Nenhuma tempestade dura para sempre',
    ),
    Phrase(
      phrase: 'O segredo é confiar em Deus',
    ),
    Phrase(
      phrase: 'Um dia de cada vez',
    ),
    Phrase(
      phrase: 'Voce é um universo de coisas boas',
    ),
    Phrase(
      phrase: 'A enerdia flui para onde o foco vai',
    ),
    Phrase(
      phrase: 'Você pode mais do que imagina',
    ),
    Phrase(
      phrase: 'Faça vão te criticar do mesmo jeito',
    ),
    Phrase(
      phrase: 'Celebre suas pequenas vitórias',
    ),
    Phrase(
      phrase: 'Há sempre algo para agradecer',
    ),
    Phrase(
      phrase: 'Você pode e vai muito além',
    ),
    Phrase(
      phrase: 'Pequenos passos todos os dias',
    ),
    Phrase(
      phrase: 'Ser melhor a cada dia',
    ),
    Phrase(
      phrase: 'Deixe seus sonhos serem suas asas',
    ),
    Phrase(
      phrase: 'Só depende de você para fazer acontecer',
    ),
    Phrase(
      phrase: 'Sonhar Planejar Fazer',
    ),
    Phrase(
      phrase: 'Faça mais por você',
    ),
  ];

  void addPhrase(String newPhrase) {
    Phrase n = Phrase(phrase: newPhrase);
    _Prhases.add(n);
  }

  getPhrase() {
    return _Prhases[_indice].phrase;
  }

  void nextPhrase() {
    if (_indice == _Prhases.length - 1) {
      _indice = 0;
    } else {
      _indice++;
    }
  }

  bool searchPhrase(String searchString) {
    bool achou = false;
    for (int i = 0; i < _Prhases.length; i++) {
      if (searchString == _Prhases[i].phrase) {
        achou = true;
      }
    }
    return achou;
  }

  void printListPhrase() {
    for (int i = 0; i < _Prhases.length; i++) {
      print(_Prhases[i].phrase);
    }
  }
}
