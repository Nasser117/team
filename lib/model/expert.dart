import 'package:flutter/material.dart';

class Expert {
  final String id;

  final String title;

  final String body;

  const Expert({
    required this.id,
    required this.title,
    required this.body,

  });


}

class ExpertCard extends StatelessWidget {
  final int id;
  final String title;


  ExpertCard({
    required this.id,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => {},
        child: Container(
            margin: const EdgeInsets.symmetric(vertical: 2.5, horizontal: 5),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.2,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              border: Border.all(width: 5, color: Theme.of(context).accentColor),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('$id',style: const TextStyle(fontSize: 20),),
            const Padding(padding: EdgeInsets.only(top: 20)),
                  Text(
             title.length <= 40 ? title : "${title.substring(0, 40)}_",
             style: const TextStyle(fontSize: 20),),
                  Text(
                    title.length <= 40 ? "" : title.substring(40, title.length),
                    style: const TextStyle(fontSize: 20),),
                    ],
            ),
     ),
    );
  }
}
