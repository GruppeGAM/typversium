import 'package:flutter/material.dart';

class CockpitPage extends StatelessWidget {
  const CockpitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: Placeholder(
                  child: Center(child: Text('Explorer')),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Placeholder(
                        child: Center(child: Text('Editor')),
                      ),
                    ),
                    Expanded(
                      child: Placeholder(
                        child: Center(child: Text('Terminal')),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Placeholder(
                        child: Center(child: Text('Status')),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Placeholder(
                        child: Center(child: Text('Map')),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
