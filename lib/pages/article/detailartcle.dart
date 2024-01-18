import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:mental_zone/shared/theme/color.dart';

import '../../shared/theme/font.dart';

class detailsArticleScreen extends StatelessWidget {
  static const routeName = '/article/detailarticle';
  const detailsArticleScreen({super.key});
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(bottom: 65),
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _navRow(context),
                const Gap(25),
                Text(
                    'Penyebab Sering Terbangun Saat Tengah Malam yang Bisa Mengganggu Kesehatan ',
                    style: TextStyle(
                        color: Color(0xFF263238),
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                    ),
                ),
                const Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                        'CNN Indonesia',
                        style: TextStyle(
                            color: Color(0xFF5F6164),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 0.14,
                        ),
                    ),
                    const Gap(10),
                    Container(
                        width: 4,
                        height: 4,
                        decoration: ShapeDecoration(
                            color: Color(0xFF5F6164),
                            shape: OvalBorder(),
                        ),
                    ),
                    const Gap(10),
                    Text(
                        '21 Juni 2023',
                        style: TextStyle(
                            color: Color(0xFF5F6164),
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 0.14,
                        ),
                    )
                  ],
                ),
                const Gap(20),
                _imageArticle(),
                const Gap(20),
                _textContainer()
            ]),
          )
        ],
      ),
    ); 
  }

  // navbar detail article
  Row _navRow(context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/articlescreen');
          },
          child: Icon(Icons.arrow_back),
        ),
        Text(
          'Article',
          style: sectionHeader,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.black.withOpacity(0.08),
                width: 0.4,
              ),
            ),
            child: Icon(Icons.share),
          ),
        ),
      ],
    );
  }


  //image
  Container _imageArticle() {
    return Container(
      width: 340,
      height: 172,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage('assets/img/article/detailarticle.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  //text
  Container _textContainer() {
    return Container(
        width: 340,
        height: 543,
        child: Text.rich(
            TextSpan(
                children: [
                    TextSpan(
                        text: 'Sering terbangun malam hari bisa menjadi masalah serius bagi kesehatan seseorang karena dapat mengganggu pola ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 1.2,
                        ),
                    ),
                    TextSpan(
                        text: 'tidur ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            height: 1.2,
                        ),
                    ),
                    TextSpan(
                        text: 'yang sehat. Gangguan ini juga dapat mengakibatkan kualitas tidur yang buruk, kelelahan, dan bahkan gangguan kesehatan lainnya. Oleh karena itu, penting bagi kita untuk memahami penyebab terbangun malam serta cara mengatasinya.\n\nBeberapa penyebab umum ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 1.2,
                        ),
                    ),
                    TextSpan(
                        text: 'terbangun',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            decoration: TextDecoration.underline,
                            height: 1.2,
                        ),
                    ),
                    TextSpan(
                        text: ' malam hari termasuk stres, kegelisahan, konsumsi alkohol atau kafein sebelum tidur. Selain itu, faktor lingkungan seperti suhu kamar tidur yang terlalu panas atau terlalu dingin juga dapat menjadi penyebab seseorang terbangun malam.\n\n',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 1.2,
                        ),
                    ),
                    TextSpan(
                        text: 'Penyebab Sering Terbangun Saat Tengah Malam :\n\n',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            height: 1.2,
                        ),
                    ),
                    TextSpan(
                        text: '1. Stres\nSalah satu penyebab utama sering terbangun di malam hari adalah stres. Stres dapat menyebabkan pikiran yang tidak tenang dan sulit untuk tidur nyenyak. Ketika seseorang terlalu banyak berpikir tentang masalah atau kecemasan, ini dapat mengganggu tidur di malam hari, dan menyebabkan bangun-bangun dalam tidur.\n\n2. Gangguan Tidur\nSelain stres, gangguan tidur seperti sleep apnea juga dapat menjadi penyebab seseorang sering terbangun di malam hari. Sleep apnea adalah gangguan tidur yang menyebabkan penderitanya mengalami berhenti bernapas secara periodik selama tidur, yang dapat membangunkannya dari tidur.',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w400,
                            height: 1.2,
                        ),
                    ),
                ],
            ),
            textAlign: TextAlign.justify,
        ),
    );
  }
  
}