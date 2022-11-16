import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ProjectPieChart extends StatelessWidget {

  const ProjectPieChart({ Key? key }) : super(key: key);


  

   @override
   Widget build(BuildContext context) {
    final theme = Theme.of(context);
       return SizedBox(
        width: 200,
        height: 200,
        child: Stack(
          fit: StackFit.loose,
          children: [
            PieChart(
              PieChartData(
                sections: [
                  PieChartSectionData(
                    color: theme.primaryColor,
                    showTitle: true,
                    title: '50h',
                    titleStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                    value: 50
                  ),
                  PieChartSectionData(
                    color: theme.primaryColorLight,
                    showTitle: true,
                    title: '50h',
                    titleStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                    value: 50
                  )
                ]
              )
            ),
            Align(
              alignment: Alignment.center,
              child: Text('200h' ,style: TextStyle(
                fontSize: 25,
                color: theme.primaryColor,
                fontWeight: FontWeight.bold
              ),)
            )
          ],
        ),
       );
  }
}