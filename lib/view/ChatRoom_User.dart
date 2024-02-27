import 'package:flutter/material.dart';
import 'package:neon_widgets/neon_widgets.dart';

class ChatRoomUser extends StatefulWidget {
  final String profile;
  const ChatRoomUser({super.key, required this.profile});

  @override
  State<ChatRoomUser> createState() => _ChatRoomUserState();
}

class _ChatRoomUserState extends State<ChatRoomUser> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        toolbarHeight: h * 0.07,
        elevation: 2,
        backgroundColor: Color(0xff557688),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        title: Row(
          children: [
            CircleAvatar(
              radius: h * 0.025,
              child: Text("${widget.profile}"),
            ),
            SizedBox(
              width: w * 0.02,
            ),
            Text("Sagar Sahil"),
          ],
        ),
      ),
      bottomNavigationBar: TextFormField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.blue,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          )
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {

                }
            ),
          )
        ],
      ),
    );
  }
}
