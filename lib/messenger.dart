import 'package:flutter/material.dart';

class Messanger extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 80,
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(6.0),
          child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTh1O2A0GAvuzCV60uMUnXfMij8MKpX8wXo9A&usqp=CAU')),
        ),
        title: Text('Chats',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.0)),
        actions: [
          CircleAvatar(
              child: IconButton(
                  onPressed: () {
                    print('Camera IconButton...');
                  },
                  icon: Icon(Icons.camera_alt))),
          SizedBox(width: 10.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                child: IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print('Search IconButton...');
              },
            )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsetsDirectional.only(
                        start: 10, end: 5, bottom: 5, top: 5),
                    child: Icon(Icons.search),
                  ),
                  SizedBox(width: 20),
                  Text('Search')
                ]),
              ),
              SizedBox(height: 20),
              Container(
                // important :: لازم تحجمها ب طول معين عشان تشتغل
                height: 100,
                child: ListView.separated(
                    // shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => buildStories(),
                    separatorBuilder: (context, index) => SizedBox(width: 20),
                    itemCount: 20),
              ),
              ListView.separated(
                  // create all first (important)
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => messagesItems(),
                  separatorBuilder: (context, index) => SizedBox(height: 15),
                  itemCount: 30)
            ],
          ),
        ),
      ),
    );
  }

  // 1.build item.
  // 2.build list items.
  // 3.add item to the list.
  Widget buildStories() {
    return Container(
      width: 75,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomRight,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkk0vM6SchWGrj_p2X0PZV8UgmhYSBy50Cyw&usqp=CAU'),
                // radius: 30,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 5.5,
              ),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 5.0,
              )
            ],
          ),
          Text(
            'Mazen Glal Abden Ahmed Amer',
            maxLines: 2,
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }

  Widget messagesItems() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 75,
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqmCj95Euts21uBU1PJHRYEpGUS4ei81Etpw&usqp=CAU'),
                    // radius: 30,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 5.5,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 5.0,
                  )
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mahemoud Gmal',
                  maxLines: 1,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      overflow: TextOverflow.ellipsis),
                ),
                SizedBox(height: 4),
                Text(
                  'i will meet you in the party firday i will meet you in the party firday ',
                  maxLines: 1,
                  style: TextStyle(overflow: TextOverflow.ellipsis),
                ),
              ],
            ),
          ),
        ),
        Text('.11:45 pm')
      ],
    );
  }
}
