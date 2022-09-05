import 'package:flutter/material.dart';
import 'package:plantapp/theme.dart';

class DetailAbjad extends StatelessWidget {
  const DetailAbjad({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> abjad = [
      {
        'abjad': 'C',
        'detail_abjad': [
          'CACTUS',
          'CISTUS',
          'CAESALPINIA',
          'CINNAMOMUM',
          'CIRSIUM',
          'CISSUS',
        ]
      },
      {
        'abjad': 'D',
        'detail_abjad': [
          'DIERAMA',
          'DIGITALIS',
          'DAHLIA',
          'DAPHNE',
        ]
      },
      {
        'abjad': 'E',
        'detail_abjad': [
          'ECHINACEA',
          'ECHINOPS',
          'EHLIA',
          'EPHNEK',
        ]
      }
    ];

    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: abjad.map((data) {
          List detail_abjad = data['detail_abjad'];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data['abjad'],
                style: greenTextStyle.copyWith(
                  fontSize: 17,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: detail_abjad.map((data) {
                  return Container(
                    margin: EdgeInsets.only(
                      bottom: 15,
                    ),
                    child: Text(
                      data.toString(),
                      style: abjadTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: semiBold,
                      ),
                    ),
                  );
                }).toList(),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
