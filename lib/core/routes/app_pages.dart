import 'package:flutter/material.dart';

import '../../features/splash/presentation/screens/splash_screen.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/otp_screen.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/profile/presentation/screens/profile_screen.dart';
import '../../features/send_money/presentation/screens/send_money_screen.dart';
import '../../features/cash_out/presentation/screens/cash_out_screen.dart';
import '../../features/recharge/presentation/screens/recharge_screen.dart';
import '../../features/payment/presentation/screens/payment_screen.dart';
import '../../features/add_money/presentation/screens/add_money_screen.dart';
import '../../features/history/presentation/screens/transaction_history_screen.dart';

import 'app_routes.dart';

class AppPages {
  static Route<dynamic> generateRoute(
      RouteSettings settings) {

    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );

      case AppRoutes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );

      case AppRoutes.otp:
        return MaterialPageRoute(
          builder: (_) => const OtpScreen(),
        );

      case AppRoutes.home:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

      case AppRoutes.profile:
        return MaterialPageRoute(
          builder: (_) => const ProfileScreen(),
        );

      case AppRoutes.sendMoney:
        return MaterialPageRoute(
          builder: (_) => const SendMoneyScreen(),
        );

      case AppRoutes.cashOut:
        return MaterialPageRoute(
          builder: (_) => const CashOutScreen(),
        );

      case AppRoutes.recharge:
        return MaterialPageRoute(
          builder: (_) => const RechargeScreen(),
        );

      case AppRoutes.payment:
        return MaterialPageRoute(
          builder: (_) => const PaymentScreen(),
        );

      case AppRoutes.addMoney:
        return MaterialPageRoute(
          builder: (_) => const AddMoneyScreen(),
        );

      case AppRoutes.history:
        return MaterialPageRoute(
          builder: (_) =>
              const TransactionHistoryScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Route Not Found'),
            ),
          ),
        );
    }
  }
}