import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TransactionDetails extends StatelessWidget {
  const TransactionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(171719),
      body: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                "assets/images/logoVertical.svg",
                height: 80,
                color: Colors.white,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      color: Color(0xffEF2F62),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'THE WEEKEND',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'Star boy',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Weekend Song',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.4),
                      ),
                    ),
                    Text(
                      'Owned By Lipsum.eth',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.4),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Image.asset('assets/images/strboy.jpeg'),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text('Buy now'),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Color(171719).withOpacity(0.2)),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Get the royality'),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Color(171719).withOpacity(0.2)),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
