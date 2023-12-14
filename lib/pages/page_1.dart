import 'package:flutter/material.dart';
import 'package:learn_api/pages/models/user_model.dart';
import 'package:learn_api/pages/page1_controller.dart';


class Page1 extends StatefulWidget {
  const Page1({ Key? key }) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
final UsersController usersController = UsersController();

  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning API'),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Users>>(
        future: usersController.fetchUsers(),
        builder: (context, snapshot){
          
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator()
            );
          }else if(snapshot.hasError){
            return Center(
              child: Text('Error : ${snapshot.error}'),
            );
          }else{
             List<Users> users = snapshot.data!;
              return ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
               color: Colors.grey[300],
              elevation: 8.0,
              child: Container(
                 padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                height: 200,
                width: MediaQuery.of(context).size.width,
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage( 'https://webstockreview.net/images/male-clipart-professional-man-3.jpg'),
                        
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                           Container(
                              margin: const EdgeInsets.only(top: 8),
                              width: 150,
                              color: Colors.black54,
                              height: 2,
                            ),
                            const SizedBox(height: 4),
                             Text(users[index].phone),
                             Text(users[index].address.city),
                             Text(users[index].address.suite),
                        ],
                      )
                     ],
            
            
                    ),
                    SizedBox(width: 0.0, height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(
                      users[index].name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                     Text(users[index].username),
                          ],
                        ),
                         const SizedBox(width: 32),

                         Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                                Text(
                      users[index].company.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                     Text(users[index].website),
                          ],
                         )
                      ],
                    )
                  ],

                ),
              ),
            ),
          ),
        ],
      );
                },
              );
          }
        })
    );


  }
}
