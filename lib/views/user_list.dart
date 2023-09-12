import 'package:flutter/material.dart';
import 'package:flutter_crud/components/user_tile.dart';
import 'package:flutter_crud/data/dummy_users.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    final users = {...DUMMY_USERS};

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de usuarios'),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (ctx, i) => Usertile(users.values.elementAt(i)),
      ),
    );
  }
}
