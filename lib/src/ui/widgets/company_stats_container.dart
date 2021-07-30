import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class CompanyStatsCards extends StatelessWidget {
  const CompanyStatsCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildCard(
            color: kClientAndRetentionStatContainerColor,
            textColor: kClientAndRetentionStatContainerTextColor,
            label: "CLIENTS",
            stats: "30+"),
        _buildCard(
            color: kProjectAndTeamStatContainerColor,
            textColor: kProjectAndTeamStatContainerTextColor,
            label: "PROJECTS",
            stats: "50+"),
        _buildCard(
            color: kClientAndRetentionStatContainerColor,
            textColor: kClientAndRetentionStatContainerTextColor,
            label: "RETENTION",
            stats: "75%"),
        _buildCard(
            color: kProjectAndTeamStatContainerColor,
            textColor: kProjectAndTeamStatContainerTextColor,
            label: "TEAM",
            stats: "15+"),
      ],
    );
  }

  Widget _buildCard({
    required Color color,
    required String label,
    required String stats,
    required Color textColor,
  }) {
    final _statStyle = TextStyle(color: Colors.white, fontSize: 42.0);
    final _labelStyle = TextStyle(color: textColor, fontSize: 18.0);

    return Container(
      width: double.infinity,
      height: 140.0,
      child: Card(
        elevation: 6.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              stats,
              style: _statStyle,
            ),
            Text(
              label,
              style: _labelStyle,
            ),
          ],
        ),
      ),
    );
  }
}
