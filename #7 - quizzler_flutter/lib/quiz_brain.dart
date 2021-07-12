import 'question.dart';

class QuizBrain{

  int _questionNumber = 0;
  int _countCorrect = 0;

  List<Question> _questionBank = [
    Question('1. Se llama software al conjunto de programas, instrucciones y reglas informáticas para ejecutar ciertas tareas en una computadora.', true),
    Question('2. El software es el soporte lógico de un sistema informático.', true),
    Question('3. Los ordenadores y las máquinas de lógica cableadas tienen un funcionamiento basada en la lógica programada.', false),
    Question('4. En un ordenador la única limitación es la capacidad del hardware.', true),
    Question('5. Los programas informáticos no permiten utilizar el hardware para multitud de aplicaciones y controlar su uso.', false),
    Question('6. El software de sistema es el que gestiona el hardware.', true),
    Question('7. El software de programación son las herramientas que no permiten realizar programas, traduciendo las instrucciones a lenguaje máquina.', false),
    Question('8. El software de aplicación son los programas con una función más o menos específica en cualquier campo subceptible de ser controlado informáticamente.', true),
    Question('9. El software libre es el que otorga libertad de uso, copia y distribución a los usuarios.', true),
    Question('10. El software de propietario es aquel cuyas condiciones de uso, copia y distribución están sometidas a normas o restricciones.', true),
    Question('11. El software libre se considera un bien privado.', false),
    Question('12. Un sistema operativo es el software de sistema que permite al ordenador el arranque, la gestión de los recursos y la comunicación usuario-dispositivos físicos.', true),
    Question('13. El sistema operativo debe gestionar los recursos del hardware.', true),
    Question('14. El sistema operativo no sirve de interfaz entre el usuario y la computadora.', false),
    Question('15. El sistema operativo no gestiona la información en forma de archivos que contienen los datos.', false),
    Question('16. El sistema operativo gestiona las tareas en ejecución, asignando tiempos y prioridades.', true),
    Question('17. El sistema operativo no proporciona seguridad en la gestión de recursos.', false),
    Question('18. El sistema operativo es capaz de actualizarse, diagnosticar y resolver problemas.', true),
    Question('19. La evolución de los sistemas operativos ha estado marcada por su forma de gestionar los datos, número de usuarios y capacidad de ejecutar varias tareas al mismo tiempo.', true),
    Question('20. El software propietario es aquel que no es libre, tiene limitados los derechos de uso, copia, distribución o modificación.', true)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  bool getAnswer(bool ans) {
    bool res = true;
    if (getCorrectAnswer() == ans){
      res = true;
      _countCorrect++;
    }else{
      res = false;
    }
    return res;
  }

  void reset() {
    _questionNumber = 0;
    _countCorrect=0;
  }

  int getCountCorrect(){
    return _countCorrect;
  }

  int getSizeBank(){
    return _questionBank.length;
  }


}


