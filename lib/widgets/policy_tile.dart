import 'package:flutter/material.dart';

class PolicyTile extends StatefulWidget {
  const PolicyTile({
    super.key,
  });

  @override
  State<PolicyTile> createState() => _PolicyTileState();
}

class _PolicyTileState extends State<PolicyTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('title'), Text('subtitle')],
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
