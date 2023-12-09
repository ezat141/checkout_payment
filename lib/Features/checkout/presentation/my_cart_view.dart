import 'package:checkout_payment/Features/checkout/presentation/widgets/my_cart_view_body.dart';
import 'package:checkout_payment/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Center(
          child: SvgPicture.asset('assets/images/arrow.svg'),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'My Cart',
          style: Styles.style25,
        ),
      ),
      body: const MyCartViewBody(),
    );
  }
}
