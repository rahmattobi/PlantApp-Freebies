import 'package:flutter/material.dart';
import 'package:plantapp/theme.dart';

class AbjadCard extends StatelessWidget {
  const AbjadCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> abjad = [
      '#',
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I',
      'J',
      'K',
      'L',
      'M',
      'N',
      'O',
      'P',
      'Q',
      'R',
      'S',
      'T',
      'U',
      'V',
      'W',
      'X',
      'Y',
      'Z',
    ];

    return Container(
      child: Column(
        children: abjad.map((data) {
          return Container(
            margin: EdgeInsets.only(
              bottom: 10,
            ),
            child: Text(
              data,
              style: data == 'C'
                  ? greenTextStyle.copyWith(
                      fontSize: 15,
                      fontWeight: semiBold,
                    )
                  : abjadTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: semiBold,
                    ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
