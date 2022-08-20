import 'package:flutter/material.dart';
import 'package:hw7/circle.dart';
import 'package:hw7/square.dart';

class HomePage extends StatelessWidget {
  final List _post = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
  ];

  final List _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
    'story 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            child: ListView.builder(
                itemCount: _stories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
              return MyCircle(
                child: _stories[index],
              );
            }),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _post.length,
              itemBuilder: (context, index) {
              return MySquare(
                child: _post[index],
              );
            }),
          ),
        ],
      ),
    );
  }
}


