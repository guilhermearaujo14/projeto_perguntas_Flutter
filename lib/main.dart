import 'package:flutter/material.dart';
import './questao.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp> {

  var perguntaSelecionada = 0;

  void responder(){
    setState(() {
      if(perguntaSelecionada == 1){
        perguntaSelecionada--;
      }else {
        perguntaSelecionada++;
      }
    });
    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context){
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];


    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
            children: [
              Questao(perguntas[perguntaSelecionada]),     //MOSTRO O TEXTO REFERENTE AO VALOR DA VARIAVEL PERGUNTASELECIONADA QUE SE REFERE AO INDICE DA VARIAVEL PERGUNTAS.
              RaisedButton(child: Text('Resposta 1'),
                onPressed: responder,
              ),
              RaisedButton(child: Text('Resposta 2'),
                onPressed: responder,
              ),
              RaisedButton(child: Text('Resposta 3'),
                onPressed: responder,
              ),
            ]),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget{

  PerguntaAppState createState() {
    return PerguntaAppState();
  }

}
