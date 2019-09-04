import 'package:flutter/material.dart';


class NewCicloEstudo extends StatefulWidget {
  @override
  _NewCicloEstudoState createState() => _NewCicloEstudoState();
}

class _NewCicloEstudoState extends State<NewCicloEstudo> {

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title: Text("Novo Ciclo de Estudo"),
      ),
      body:

       Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            validator: (value) {
              if (value.isEmpty) {
                return 'Informe o concurso!';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false
                // otherwise.
                if (_formKey.currentState.validate()) {
                  // If the form is valid, display a Snackbar.
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Novo ciclo de estudos'),
            ),
          ),
        ],
      ),
    )



    );
  }
}
