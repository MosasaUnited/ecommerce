import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'image_asset.dart';

class DotsLoading extends StatelessWidget {
  const DotsLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        AppImageAsset.dotsLoading,
        height: 150,
        repeat: true,
      ),
    );
  }
}

class NoData extends StatelessWidget {
  const NoData({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        heightFactor: 250,
        widthFactor: 250,
        child: Lottie.asset(AppImageAsset.noData));
  }
}

class Offline extends StatelessWidget {
  const Offline({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        heightFactor: 250,
        widthFactor: 250,
        child: Lottie.asset(AppImageAsset.offline));
  }
}

class ServerError extends StatelessWidget {
  const ServerError({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        heightFactor: 250,
        widthFactor: 250,
        child: Lottie.asset(AppImageAsset.serverError));
  }
}

class LogoAuth extends StatelessWidget {
  const LogoAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        AppImageAsset.loginLogo,
        height: 150,
        repeat: true,
      ),
    );
  }
}

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Lottie.asset(
        AppImageAsset.resetPassword,
        height: 300,
        width: 300,
        repeat: true,
      ),
    );
  }
}
