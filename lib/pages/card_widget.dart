import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({ Key? key }) : super(key: key);

  @override
  _CardWidgetState createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Widget'),
        centerTitle: true,
      ),
      body: Column(
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
                width: 350,
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
                            const Text('+2348012345678'),
                            const Text('Chelsea City'),
                            const Text('Flutteria'),
                        ],
                      )
                     ],
            
            
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                      'John Doe',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text('JohnDee'),
                          ],
                        ),
                         const SizedBox(width: 32),

                         Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                               const Text(
                      'Mobile App Developer',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    const Text('FlutterStars Inc'),
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
      ),
    );
  }
}