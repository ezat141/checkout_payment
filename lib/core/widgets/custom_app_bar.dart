import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/styles.dart';

AppBar buildAppBar({required final String title}) {
    return AppBar(
      leading: Center(
        child: SvgPicture.asset('assets/images/arrow.svg'),
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title:  Text(
        title,
        style: Styles.style25,
      ),
    );
  }
