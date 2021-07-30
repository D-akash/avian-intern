import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants/assets_file_constant.dart';
import '../../../constants/string.dart';
import '../widgets/company_stats_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _style =
        GoogleFonts.archivoBlack(color: Colors.white, fontSize: 34.0);

    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildTagLineBackground(size: _size, style: _style),
            const SizedBox(height: 8.0),
            CompanyStatsCards()
          ],
        ),
      ),
    );
  }

  Stack _buildTagLineBackground(
      {required Size size, required TextStyle style}) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          height: size.height * .4,
          width: double.infinity,
          child: Image.network(
            kHomePageBackgroundImage,
            fit: BoxFit.cover,
            color: Colors.black45,
            colorBlendMode: BlendMode.multiply,
          ),
        ),
        Positioned(
          left: 32.0,
          right: 32.0,
          child: RichText(
            text: TextSpan(
              style: style,
              children: [
                TextSpan(text: kHomePageTagLineFirst),
                TextSpan(
                  text: kHomePageTagLineSecond,
                  style: style.copyWith(color: Colors.blue[200]),
                ),
                TextSpan(
                  text: kAboutUsPageInfoTitleText,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
