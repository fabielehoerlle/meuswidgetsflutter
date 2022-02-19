import 'package:flutter/widgets.dart';
import 'package:w20211019/widgets/Conta.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: const Conta(),
    );
  }
}
