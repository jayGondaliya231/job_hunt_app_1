import 'package:flutter/material.dart';
class RecentJobScreen extends StatefulWidget {
  const RecentJobScreen({super.key});

  @override
  State<RecentJobScreen> createState() => _RecentJobScreenState();
}

class _RecentJobScreenState extends State<RecentJobScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.sizeOf(context).height;
    final w = MediaQuery.sizeOf(context).width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0.1),
        color: Colors.white
      ),
      child: Column(
        children: [
          Row(
            children: [
              // Image.asset('assets/images/S3.svg',height: h * 0.50),
              // Spacer(),
              // Text('\$1k - \$1.5k',style: Theme.of(context).textTheme.titleSmall)
            ],
          ),
          SizedBox(height: h *0.01),

        ],
      )

    );

  }
}
