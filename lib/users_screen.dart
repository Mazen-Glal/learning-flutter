import 'package:flutter/material.dart';

class UserModel {
  final int id ;
  final String name ;
  final String phone ;

  UserModel( 
    {
      required this.id,
      required this.name,
      required this.phone
    }
  );
}

class UsersScreen extends StatelessWidget {
  @override
  List <UserModel> users = [
    UserModel(id: 1, name: 'Mazen Glal', phone: '01129547302'),
    UserModel(id: 2, name: 'Mazen Glal', phone: '01226929816'),
    UserModel(id: 3, name: 'Mazen Glal', phone: '01129547302'),
    UserModel(id: 4, name: 'Mazen Glal', phone: '01226929816'),
    UserModel(id: 5, name: 'Mazen Glal', phone: '01129547302'),
    UserModel(id: 6, name: 'Mazen Glal', phone: '01226929816'),
    UserModel(id: 7, name: 'Mazen Glal', phone: '01129547302'),
    UserModel(id: 8, name: 'Mazen Glal', phone: '01226929816'),
    UserModel(id: 1, name: 'Adel Ashraf', phone: '01129547302'),
    UserModel(id: 2, name: 'Adel Ashraf', phone: '01226929816'),
    UserModel(id: 3, name: 'Adel Ashraf', phone: '01129547302'),
    UserModel(id: 4, name: 'Adel Ashraf', phone: '01226929816'),
    UserModel(id: 5, name: 'Adel Ashraf', phone: '01129547302'),
    UserModel(id: 6, name: 'Adel Ashraf', phone: '01226929816'),
    UserModel(id: 7, name: 'Adel Ashraf', phone: '01129547302'),
    UserModel(id: 8, name: 'Adel Ashraf', phone: '01226929816'),
    UserModel(id: 1, name: 'Mahemoud Gmal', phone: '01129547302'),
    UserModel(id: 2, name: 'Mahemoud Gmal', phone: '01226929816'),
    UserModel(id: 3, name: 'Mahemoud Gmal', phone: '01129547302'),
    UserModel(id: 4, name: 'Mahemoud Gmal', phone: '01226929816'),
    UserModel(id: 5, name: 'Mahemoud Gmal', phone: '01129547302'),
    UserModel(id: 6, name: 'Mahemoud Gmal', phone: '01226929816'),
    UserModel(id: 7, name: 'Mahemoud Gmal', phone: '01129547302'),
    UserModel(id: 8, name: 'Mahemoud Gmal', phone: '01226929816'),
    UserModel(id: 1, name: 'Mazen Glal', phone: '01129547302'),
    UserModel(id: 2, name: 'Mazen Glal', phone: '01226929816'),
    UserModel(id: 3, name: 'Mazen Glal', phone: '01129547302'),
    UserModel(id: 4, name: 'Mazen Glal', phone: '01226929816'),
    UserModel(id: 5, name: 'Mazen Glal', phone: '01129547302'),
    UserModel(id: 6, name: 'Mazen Glal', phone: '01226929816'),
    UserModel(id: 7, name: 'Mazen Glal', phone: '01129547302'),
    UserModel(id: 8, name: 'Mazen Glal', phone: '01226929816'),
    UserModel(id: 1, name: 'Mazen Glal', phone: '01129547302'),
    UserModel(id: 2, name: 'Mazen Glal', phone: '01226929816'),
    UserModel(id: 3, name: 'Mazen Glal', phone: '01129547302'),
    UserModel(id: 4, name: 'Mazen Glal', phone: '01226929816'),
    UserModel(id: 5, name: 'Mazen Glal', phone: '01129547302'),
    UserModel(id: 6, name: 'Mazen Glal', phone: '01226929816'),
    UserModel(id: 7, name: 'Mazen Glal', phone: '01129547302'),
    UserModel(id: 8, name: 'Mazen Glal', phone: '01226929816'),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 30,
        title: Text(
          'Users :',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => userItem(users[index]),
          separatorBuilder: (context, index) => Container(
                width: double.infinity,
                height: 2,
                color: Colors.grey[300],
              ),
          itemCount: users.length),
    );
  }

  Widget userItem(UserModel user) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CircleAvatar(
            radius: 25,
            child: Text('${user.id}.', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${user.name}',
                  maxLines: 1,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      overflow: TextOverflow.ellipsis),
                ),
                Text(
                  '${user.phone}',
                  maxLines: 1,
                  style:
                      TextStyle(fontSize: 15, overflow: TextOverflow.ellipsis),
                )
              ],
            ),
          ),
          CircleAvatar(backgroundColor: Colors.green, radius: 5),
          Text('11:50 pm')
        ],
      ),
    );
  }
}
