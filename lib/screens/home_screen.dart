import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      backgroundColor: Colors.grey.shade300,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                width: 300,
                child: Column(
                  children: [
                    Image(
                      image: NetworkImage('https://picsum.photos/800/400'),
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Bonita lugar a visitar',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. "),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              FlutterLogo(),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.share,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                              onPressed: () => {}, child: Text('Visitar')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
