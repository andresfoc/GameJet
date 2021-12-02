import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:game_jet/src/widgets/gjet_background.dart';

class InputPost extends StatefulWidget {
  const InputPost({Key? key}) : super(key: key);

  @override
  _InputPostState createState() => _InputPostState();
}

class _InputPostState extends State<InputPost> {
  String _nombre = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlue[100],
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 60.0),
          children: <Widget>[_crearInput()],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              print('hello');
            });
          },
        ));
  }

  Widget _crearInput() {
    return TextField(
        //autofocus: false,
        textCapitalization: TextCapitalization.sentences,
        maxLines: null,
        textAlign: TextAlign.justify,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 3.0)),
          counter: Text('Letras ${_nombre.length}'),
          hintText: 'Escribe un comentario',
          labelText: 'Comentario',
        ),
        onChanged: (valor) {
          setState(() {
            _nombre = valor;
          });
        });
    ;
  }

  Widget _crearComentario() {
    return ListTile(
      title: Text('$_nombre'),
    );
  }
}
