import 'package:avian_design_intern/constants/string.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Column(
            children: [
              Text(
                kAboutUsPageTitleText,
                style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8.0),
              Text(kAboutUsPageSubtitleText),
              Image.network(
                  "https://static.wixstatic.com/media/ec9816_73022ee799ad448f8de0010419d0ea08~mv2.png/v1/fill/w_600,h_338,al_c,q_85,usm_0.66_1.00_0.01/Avian%20Design%20ASset_001.webp"),
              Text(
                kAboutUsPageInfoTitleText,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  kAboutUsPageInfoSubtitleText,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                kAboutUsPageSecondTitle,
                style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w500),
              ),
              _buildAboutUsCard(
                  imgUrl:
                      "https://static.wixstatic.com/media/ec9816_b4222f214cff46fc81ece4b4b332bff8~mv2.gif",
                  title: "Reliable",
                  subTitle:
                      "We believe in long-lasting relationships based on trust and reliability; we have a very professional workflow and follow the design sprint framework."),
              _buildAboutUsCard(
                imgUrl:
                    "https://static.wixstatic.com/media/ec9816_0de94d468d5048819e6ccf6e4e68845f~mv2.gif",
                title: "Empathetic",
                subTitle: kAboutUsPageEmpatheticDetailText,
              ),
              _buildAboutUsCard(
                imgUrl:
                    "https://static.wixstatic.com/media/ec9816_c11e4f80453c467b975b1ae1f98e3791~mv2.gif",
                title: "Agile",
                subTitle: kAboutUsPageAgileDetailText,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAboutUsCard({
    required String imgUrl,
    required String title,
    required String subTitle,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 12.0,
      ),
      height: 200.0,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        color: Color(0xFF2F2E2E),
        elevation: 6.0,
        child: Column(
          children: [
            SizedBox(
              height: 100.0,
              child: Image.network(
                imgUrl,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              title,
              style: TextStyle(color: Color(0xFF1ABAD7), fontSize: 20.0),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
              child: Text(
                subTitle,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14.0, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
