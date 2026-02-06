import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_taste/config/constants/ui_config.dart';
import 'package:task_taste/config/routes/app_router.dart';
import 'package:task_taste/core/lang/app_localizations.dart';

class TaskTaste extends StatelessWidget {
  const TaskTaste({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
      child: ScreenUtilInit(
        designSize: UiConfig.designSize,
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp.router(
            routerConfig: AppRouter.routers,
            debugShowCheckedModeBanner: false,
            title: 'TaskTaste',
            supportedLocales: [Locale('vi'), Locale('en')],
            locale: Locale('vi'),
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            builder: (context, child) {
              return Placeholder();
            },
          );
        },
      ),
    );
  }
}
