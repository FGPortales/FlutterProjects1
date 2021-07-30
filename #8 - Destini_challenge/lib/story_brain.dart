

import 'package:destini_challenge/story.dart';

class StoryBrain {

  int _storyNumber = 0;

  List<Story> _storyData = [
    Story(
        storyTitle:
        'Su automóvil ha explotado una llanta en una carretera sinuosa en medio de la nada sin recepción de teléfono celular. Decides hacer autostop. Una camioneta oxidada se detiene a tu lado. Un hombre con un sombrero de ala ancha y ojos desalmados abre la puerta del pasajero y te pregunta: "¿Necesitas que te lleven, muchacho?".',
        choice1: 'Entraré. ¡Gracias por la ayuda!',
        choice2: 'Mejor pregúntale primero si es un asesino.'),
    Story(
        storyTitle: 'Asiente lentamente, sin inmutarse por la pregunta.',
        choice1: 'Al menos es honesto. Subiré.',
        choice2: 'Espera, sé cómo cambiar un neumático.'),
    Story(
        storyTitle:
        'Cuando comienza a conducir, el extraño comienza a hablar sobre su relación con su madre. Se enoja más y más a cada minuto. Te pide que abras la guantera. En el interior se encuentra un cuchillo ensangrentado, dos dedos cortados y una cinta de casete de Elton John. Alcanza la guantera.',
        choice1: '¡Amo a Elton John! Entrégale la cinta de casete.',
        choice2: '¡Es él o yo! Coges el cuchillo y lo apuñalas.'),
    Story(
        storyTitle:
        '¿Qué? ¡Qué policía fuera! ¿Sabía que los accidentes de tráfico son la segunda causa principal de muerte accidental para la mayoría de los grupos de edad adulta?',
        choice1: 'Reanudar',
        choice2: ''),
    Story(
        storyTitle:
        'A medida que atraviesa la barandilla y se precipita hacia las rocas irregulares que se encuentran debajo, reflexiona sobre la dudosa sabiduría de apuñalar a alguien mientras conduce un automóvil en el que se encuentra.',
        choice1: 'Reanudar',
        choice2: ''),
    Story(
        storyTitle:
        'Te relacionas con el asesino mientras canta versos de "¿Puedes sentir el amor esta noche?". Te deja en la siguiente ciudad. Antes de que te vayas, te pregunta si conoces algún buen lugar para tirar cuerpos. Respondes: "Prueba el muelle".',
        choice1: 'Reanudar',
        choice2: '')
  ];

  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  void nextStory(int userChoice) {
    if ((userChoice == 1 && _storyNumber == 0) || (userChoice == 1 && _storyNumber == 1)){
      _storyNumber = 2;
    }else if (userChoice == 2 && _storyNumber == 0){
      _storyNumber = 1;
    }else if (userChoice == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    }else if (userChoice == 1 && _storyNumber == 2){
      _storyNumber = 5;
    }else if (userChoice == 2 && _storyNumber == 2){
      _storyNumber = 4;
    }else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5){
      restart();
    }
  }

  void restart(){
    _storyNumber = 0;
  }

  int getStoryNumber(){
    return _storyNumber;
  }

  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}