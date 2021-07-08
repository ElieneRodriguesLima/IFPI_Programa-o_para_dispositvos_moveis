import 'package:flutter/material.dart';
import 'package:trabalhofinal/models/usuarios.dart';
import 'package:trabalhofinal/routes/rotas.dart';

class UserTile extends StatelessWidget {

  final User user;

  const UserTile(this.user);

  @override
  Widget build(BuildContext context) {
    final CircleAvatar avatar;
    if (user.avatarUrl == null || user.avatarUrl.isEmpty) {
      avatar = CircleAvatar(child: Icon(Icons.person));
    } else {
      avatar = CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));
    }
    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.email),
      
      trailing: Container(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.edit), 
              color: Colors.orange,
              onPressed: () {
              Navigator.of(context).pushNamed(
                AppRoutes.USER_FORM,
                arguments: user,
              );  
              }
            ),
            IconButton(
              icon: Icon(Icons.delete),
              color: Colors.red, 
              onPressed: () {
                showDialog(
                  context: context, 
                  builder: (context) => AlertDialog(
                    title: Text("Excluir usuário"),
                    content: Text("Tem certeza??"),
                    actions: <Widget>[
                      // ignore: deprecated_member_use
                      FlatButton(
                        child: Text("Não"),
                        onPressed: () => Navigator.of(context).pop(false),
                      ),
                      // ignore: deprecated_member_use
                      FlatButton(
                        child: Text("Sim"),
                        onPressed: () => Navigator.of(context).pop(true),
                      ),
                    ],
                  )
                );                
              },
            )
          ],
        ),
      ),
    );
  }
}
