import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  addCount() {
    _count++;
    notifyListeners();
  }
}

class ChangeNotifierDemo extends StatefulWidget {
  const ChangeNotifierDemo({super.key});

  @override
  State<ChangeNotifierDemo> createState() => _ChangeNotifierDemoState();
}

class _ChangeNotifierDemoState extends State<ChangeNotifierDemo> {
  final _listenable = Counter();

  @override
  void dispose() {
    _listenable.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListenableBuilder(
            listenable: _listenable,
            builder: (context, child) {
              return Text('${_listenable.count}');
            },
          ),
          const SizedBox(height: 50.0),
          FilledButton(
            onPressed: _listenable.addCount,
            child: const Text('add count'),
          ),
        ],
      ),
    );
  }
}

class FutureBuilderDemo extends StatefulWidget {
  const FutureBuilderDemo({super.key});

  @override
  State<FutureBuilderDemo> createState() => _FutureBuilderDemoState();
}

class _FutureBuilderDemoState extends State<FutureBuilderDemo> {
  final _buildFuture = Future.delayed(const Duration(seconds: 3), () => 'Future value');

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _buildFuture,
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        return Container();
      },
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const ChangeNotifierDemo(),
    );
  }
}
