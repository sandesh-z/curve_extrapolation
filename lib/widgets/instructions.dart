import 'package:flutter/material.dart';

class InstructionWidget extends StatelessWidget {
  final void Function()? onTap;
  const InstructionWidget({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 50, 20, 0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: Colors.deepPurple.withOpacity(.7)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              const Icon(Icons.info),
              const SizedBox(width: 10),
              const Text(
                "Information",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              InkWell(
                  onTap: onTap,
                  child: Icon(
                    Icons.cancel,
                    color: Colors.red.withOpacity(.7),
                  )),
            ],
          ),
          const Text(
            "Please tap inside box to place drawing points. Note that you can only place five points.Tap next after placing all desire points to generate draggable curve.",
            overflow: TextOverflow.visible,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
