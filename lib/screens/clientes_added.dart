import 'package:flutter/material.dart';

class ClientesAgregados extends StatefulWidget {
  @override
  _ClientesAgregadosState createState() => _ClientesAgregadosState();
}

class _ClientesAgregadosState extends State<ClientesAgregados> {
  List<String> _emails = [
    'Cliente 1',
    'Cliente 2',
    'Cliente 3',
    'Cliente 4',
    'Cliente 5',
    'Cliente 6',
    'Cliente 7',
    'Cliente 8',
    'Cliente 9',
    'Cliente 10'
  ];
  List<String> _selectedEmails = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _emails.length,
        itemBuilder: (BuildContext context, int index) {
          final String email = _emails[index];
          return Dismissible(
            key: Key(email),
            onDismissed: (DismissDirection direction) {
              setState(() {
                _emails.removeAt(index);
              });
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('$email eliminado')),
              );
            },
            background: Container(
              color: Colors.red,
              child: Icon(Icons.delete, color: Colors.white),
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(right: 16.0),
            ),
            child: CheckboxListTile(
              title: Text(_emails[index]),
              value: _selectedEmails.contains(_emails[index]),
              onChanged: (bool? selected) {
                setState(() {
                  if (selected ?? false) {
                    _selectedEmails.add(_emails[index]);
                  } else {
                    _selectedEmails.remove(_emails[index]);
                  }
                });
              },
              secondary: Icon(Icons.add_photo_alternate),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('${_selectedEmails.length} seleccionados'),
              IconButton(
                icon: Icon(Icons.forward),
                onPressed: () {
                  // Aquí puedes implementar la lógica para enviar los correos seleccionados a otro lado
                },
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(horizontal: 16.0),
        ),
      ),
    );
  }
}
