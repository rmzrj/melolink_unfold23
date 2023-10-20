import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TransactionDetails extends StatelessWidget {
  const TransactionDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(171719),
      body: SingleChildScrollView(
        child: Column(
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
                    backgroundColor: MaterialStateProperty.all(
                        Color(171719).withOpacity(0.2)),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Get the royality'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color(171719).withOpacity(0.2)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                color: Color(171719).withOpacity(0.2),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Sale ends 25 Octobar 2023 at 5:20 PM',
                      style: TextStyle(
                        color: Color(0xffEF2F62),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      'Primarily a R&B and pop album Starboy incorporates elements of new wave, disco, dance-punk, electro-rock, electropop, electro-dance, 2-step, and disco-house.',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.4),
                      ),
                    ),
                  ),
                  Divider(),
                  Text(
                    'Item Activity',
                    style: TextStyle(color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Price',
                          style:
                              TextStyle(color: Colors.white.withOpacity(0.4)),
                        ),
                        Text(
                          'USD Price',
                          style:
                              TextStyle(color: Colors.white.withOpacity(0.4)),
                        ),
                        Text(
                          'Floor Difference',
                          style:
                              TextStyle(color: Colors.white.withOpacity(0.4)),
                        ),
                        Text(
                          'From',
                          style:
                              TextStyle(color: Colors.white.withOpacity(0.4)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '234.3 ETH',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '\$ 377047.28',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '134.4%',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Drjill',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '174 ETH',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '\$ 280009.50',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '83.3%',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Pisjlia',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '145.7 ETH',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '\$ 234467.72',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          '75%',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'abzil.eth',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )
                ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
