import 'package:flutter/material.dart';
import 'package:trabalhofinal/components/user_tile.dart';
import 'package:trabalhofinal/data/dummy_users.dart';
import 'package:trabalhofinal/routes/rotas.dart';

class UserList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final users = {...DUMMY_USERS};

    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Usuario", style: TextStyle(fontSize: 26)),
        centerTitle: true,
        backgroundColor: Colors.orange,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add), 
            onPressed: () { 
              Navigator.of(context).pushNamed(
                AppRoutes.USER_FORM
              );          
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, i) => UserTile(users.values.elementAt(i)),
      ),
    );
  }
}
