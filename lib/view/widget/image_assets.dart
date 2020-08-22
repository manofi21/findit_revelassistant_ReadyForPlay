import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

String logo_full = "assets/default_icon.svg";
String sale_growUP = "assets/sale_growUP.svg";
String circle_profile = "assets/Simons.svg";
String telp = "assets/telepon.svg";
String message = "assets/message.svg";
String splash_logo = "assets/splash_logo.png";
String titleLogo = "assets/Revel Assistant di Pelayan.svg";
String background = "assets/background.png";
String landing_logo = "assets/image login.png";

String account = "assets/Akun.png";
String home = "assets/Beranda.png";
String notif = "assets/Notifikasi lonceng";

String complete_logo = "assets/Regis selesai.svg";

Container get account_icon => Container(
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(account))),
    );

SvgPicture get complete_icon => SvgPicture.asset(
      complete_logo,
      width: 225,
    );

DecorationImage get background_png =>
    DecorationImage(image: AssetImage(background));

Container get home_icon => Container(
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(home))),
    );

Container get notif_icon => Container(
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(notif))),
    );

Image get logoFull => Image.asset(
      splash_logo,
      width: 250,
      fit: BoxFit.cover,
    );

SvgPicture get svgIcon => SvgPicture.asset(
      sale_growUP,
      // width: 150,
      // fit: BoxFit.cover,
    );

SvgPicture get circleAvatar => SvgPicture.asset(circle_profile);

SvgPicture get smallLogo => SvgPicture.asset(
      logo_full,
      height: 18,
      width: 20,
    );

SvgPicture get telp_icon => SvgPicture.asset(
      telp,
      width: 20,
      height: 18,
    );

SvgPicture get message_icon => SvgPicture.asset(
      message,
      width: 20,
      height: 18,
    );

SvgPicture get background_menu => SvgPicture.asset(
      background,
      width: 20,
      height: 18,
    );

Image get landing_picture => Image.asset(
      landing_logo,
      // width: 20,
      // height: 18,
    );
