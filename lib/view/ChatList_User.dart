import 'package:flutter/material.dart';
import 'package:job_hunt_app/view/ChatRoom_User.dart';
class ChatListUser extends StatefulWidget {
  const ChatListUser({super.key});

  @override
  State<ChatListUser> createState() => _ChatListUserState();
}

class _ChatListUserState extends State<ChatListUser> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text("Message",style: TextStyle(fontSize: 30,color: Colors.white),),
        centerTitle: true,
        backgroundColor: Color(0xff557688),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
             physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 10,
              itemBuilder: (context, index) {
              return Padding(
                padding:  EdgeInsets.symmetric(vertical: h*0.008),
                child: ListTile(
                  enabled: true,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ChatRoomUser(profile: '$index',),));
                  },
                  leading: CircleAvatar(
                    radius: h*0.03,
                    child: Text("$index"),
                  ),
                  title: Text("Admin"),
                  subtitle: Text("hi",style: TextStyle(color: Colors.grey),),
                  trailing: Text("5:01 pm",style: TextStyle(color: Colors.grey),),
                ),
              );
            },),
          )
        ],
      ),
    );
  }
}
