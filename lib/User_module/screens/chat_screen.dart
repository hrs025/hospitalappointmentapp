import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

User? loggedInUser;

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _messageTextController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  late String messageText;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  void messageStream() async {
    await for (var snapshot in _firestore.collection('messages').snapshots()) {
      for (var message in snapshot.docs) {
        print(message.data().cast());
      }
    }
  }

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser!.email);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            _auth.signOut();
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.blue[200],
        title: Row(
          children: [
            Image.asset('assets/chat.png', height: 25),
            SizedBox(width: 10),
            Text('Doc-Chat',style: TextStyle(color: Colors.black),)
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              _auth.signOut();
              Navigator.pop(context);
            },
            icon: Icon(Icons.close),
            color: Colors.black,
          )
        ],
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              MessagesStream(firestore: _firestore),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: TextField(
                              controller: _messageTextController,
                              onChanged: ((value) {
                                messageText = value;
                              })),
                        )),
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                      child: ElevatedButton(
                          onPressed: () {
                            _messageTextController.clear();
                            _firestore.collection('messages').add({
                              'text': messageText,
                              'sender': loggedInUser!.email,
                              'timestamp': new DateTime.now(),
                            });
                          },
                          child: Text('send')),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}

class MessagesStream extends StatelessWidget {
  const MessagesStream({
    Key? key,
    required FirebaseFirestore firestore,
  })  : _firestore = firestore,
        super(key: key);

  final FirebaseFirestore _firestore;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream:
      _firestore.collection('messages').orderBy('timestamp').snapshots(),
      builder: (context, snapshot) {
        List<Widget> messageWidgets = [];
        if (!snapshot.hasData) {
          return Center(child: CircularProgressIndicator());
        }

        final messages = snapshot.data!.docs.reversed;

        for (var message in messages) {
          final messageText = message.get('text');
          final messageSender = message.get('sender');
          final currentUser = loggedInUser!.email;
          if (currentUser == messageSender) {
            //
          }
          final messageWidget = MessageBubble(
              sender: messageSender,
              text: messageText,
              isSame: currentUser == messageSender);
          messageWidgets.add(messageWidget);
        }

        return Expanded(
            child: ListView(reverse: true, children: messageWidgets));
      },
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String sender;
  final String text;
  final bool isSame;
  MessageBubble(
      {required this.sender, required this.text, required this.isSame});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
          crossAxisAlignment:
          isSame ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            Text(
              '$sender',
              style: TextStyle(fontSize: 13, color: Colors.black54),
            ),
            Material(
                borderRadius: isSame
                    ? BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(10))
                    : BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                elevation: 5,
                color: isSame ? Colors.lightBlueAccent : Colors.grey,
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text(
                    '$text ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                )),
          ]),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
//
// class ChatScreen extends StatefulWidget {
//   const ChatScreen({Key? key}) : super(key: key);
//
//   @override
//   _ChatScreenState createState() => _ChatScreenState();
// }
//
// class _ChatScreenState extends State<ChatScreen> {
//   final _firestore = FirebaseFirestore.instance;
//   final _auth = FirebaseAuth.instance;
//   late User signedInUser; // gives the mail
//   String? messageText; //gives the message
//   @override
//   void initState() {
//     super.initState();
//     getCurrentUser();
//   }
//
//   void getCurrentUser() {
//     try {
//       final user = _auth.currentUser;
//       if (user != null) {
//         signedInUser = user;
//         print(signedInUser.email);
//       }
//     } catch (e) {
//       print(e);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: GestureDetector(
//           onTap: () {
//             _auth.signOut();
//             Navigator.pop(context);
//           },
//           child: Icon(
//             Icons.arrow_back,
//             color: Colors.black,
//           ),
//         ),
//         backgroundColor: Colors.blue[200],
//         title: Row(
//           children: [
//             Image.asset('assets/chat.png', height: 25),
//             SizedBox(width: 10),
//             Text('Doc-Chat',style: TextStyle(color: Colors.black),)
//           ],
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {
//               _auth.signOut();
//               Navigator.pop(context);
//             },
//             icon: Icon(Icons.close),
//             color: Colors.black,
//           )
//         ],
//       ),
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             MessagesStream(firestore: _firestore),
//             Container(
//               decoration: const BoxDecoration(
//                 border: Border(
//                  top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
//                 ),
//               ),
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 border: Border(
//                   top: BorderSide(
//                     color: Colors.orange,
//                     width: 2,
//                   ),
//                 ),
//               ),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Expanded(
//                     child: TextField(
//                       onChanged: (value) {
//                         messageText = value;
//                       },
//                       decoration: InputDecoration(
//                         contentPadding: EdgeInsets.symmetric(
//                           vertical: 10,
//                           horizontal: 20,
//                         ),
//                         hintText: 'Write your message here...',
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                   TextButton(
//                     onPressed: () {
//                       _firestore.collection('messages').add({
//                         'text': messageText,
//                         'sender': signedInUser.email,
//                       });
//                     },
//                     child: Text(
//                       'send',
//                       style: TextStyle(
//                         color: Colors.blue[800],
//                         fontWeight: FontWeight.bold,
//                         fontSize: 18,
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
