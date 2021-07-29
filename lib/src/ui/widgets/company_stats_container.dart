import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class CompanyStatsContainer extends StatelessWidget {
  const CompanyStatsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildContainer(
            color: kClientAndRetentionStatContainerColor,
            textColor: kClientAndRetentionStatContainerTextColor,
            label: "CLIENTS",
            stats: "30+"),
        _buildContainer(
            color: kProjectAndTeamStatContainerColor,
            textColor: kProjectAndTeamStatContainerTextColor,
            label: "PROJECTS",
            stats: "50+"),
        _buildContainer(
            color: kClientAndRetentionStatContainerColor,
            textColor: kClientAndRetentionStatContainerTextColor,
            label: "RETENTION",
            stats: "75%"),
        _buildContainer(
            color: kProjectAndTeamStatContainerColor,
            textColor: kProjectAndTeamStatContainerTextColor,
            label: "TEAM",
            stats: "15+"),
      ],
    );
  }

  Widget _buildContainer({
    required Color color,
    required String label,
    required String stats,
    required Color textColor,
  }) {
    final _statStyle = TextStyle(color: Colors.white, fontSize: 42.0);
    final _labelStyle = TextStyle(color: textColor, fontSize: 18.0);

    return Container(
      margin: const EdgeInsets.only(bottom: 4.0),
      width: double.infinity,
      height: 120.0,
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
      decoration: BoxDecoration(color: color),
    );
  }
}
