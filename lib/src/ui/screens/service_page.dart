import 'package:avian_design_intern/constants/assets_file_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final images = imageList;

    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "What We do?",
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            Text(
              "UX/UI Design!",
              style: TextStyle(fontSize: 16.0),
            ),
            _buildStaggeredGridImages(images),
            const SizedBox(height: 8.0),
            Text(
              "How we do it?",
              style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8.0),
            _buildDesignSprint(),
            const SizedBox(height: 8.0),
            _buildSprintStep(
              imgUrl:
                  "https://static.wixstatic.com/media/ec9816_f186e877669f4e33ac88bcba4aff4b1c~mv2.png/v1/fill/w_122,h_122,al_c,q_85,usm_0.66_1.00_0.01/EMPATHISE.webp",
              number: "01",
              label: "EMPATHISE",
            ),
            _buildSprintStep(
              imgUrl:
                  "https://static.wixstatic.com/media/ec9816_6b8ffb5b4eb2450fb1ec6e1f2eb59335~mv2.png/v1/fill/w_122,h_122,al_c,q_85,usm_0.66_1.00_0.01/ideate.webp",
              number: "02",
              label: "IDEATE",
            ),
            _buildSprintStep(
              imgUrl:
                  "https://static.wixstatic.com/media/ec9816_f22b64242d854ddca2045df44f14b127~mv2.png/v1/fill/w_122,h_122,al_c,q_85,usm_0.66_1.00_0.01/PROTOTYPE.webp",
              number: "03",
              label: "PROTOTYPE",
            ),
            _buildSprintStep(
              imgUrl:
                  "https://static.wixstatic.com/media/ec9816_914495d5e6204b46910bffbfb411619d~mv2.png/v1/fill/w_122,h_122,al_c,q_85,usm_0.66_1.00_0.01/USER-TEST.webp",
              number: "04",
              label: "USER-TEST",
            ),
            _buildSprintStep(
              imgUrl:
                  "https://static.wixstatic.com/media/ec9816_a89e896ece1249a9bbda543e30fee51c~mv2.png/v1/fill/w_122,h_122,al_c,q_85,usm_0.66_1.00_0.01/RE-ITERATE.webp",
              number: "05",
              label: "RE-ITERATE",
            )
          ],
        ),
      ),
    );
  }

  Widget _buildSprintStep(
      {required String imgUrl, required String number, required String label}) {
    final _style = TextStyle(fontSize: 22.0, color: Colors.white);
    return Container(
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        color: Color(0xFF2F2E2E),
        child: Column(
          children: [
            Image.network(imgUrl),
            const SizedBox(height: 8.0),
            Text(
              number,
              style: _style,
            ),
            const SizedBox(height: 8.0),
            Container(
              height: 5.0,
              width: 25.0,
              color: Colors.blue,
            ),
            const SizedBox(height: 8.0),
            Text(
              label,
              style: _style,
            ),
            const SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }

  Widget _buildDesignSprint() {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xFF1ABAD7),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              "https://static.wixstatic.com/media/ec9816_f224233779b4446293e51d0f67ba224b~mv2.png/v1/fill/w_1390,h_235,al_c,q_85/ec9816_f224233779b4446293e51d0f67ba224b~mv2.webp"),
        ),
      ),
      height: 160.0,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "DESIGN SPRINT",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 42.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8.0),
          Divider(
              thickness: 5,
              color: Colors.white,
              indent: 170.0,
              endIndent: 160.0)
        ],
      ),
    );
  }

  Widget _buildStaggeredGridImages(List<String> images) {
    return StaggeredGridView.countBuilder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: images.length,
      crossAxisCount: 4,
      itemBuilder: (context, index) {
        return Card(
          child: Image.asset(
            images[index],
            fit: BoxFit.cover,
          ),
        );
      },
      staggeredTileBuilder: (index) {
        return StaggeredTile.count(2, index.isEven ? 2 : 1);
      },
    );
  }
}
