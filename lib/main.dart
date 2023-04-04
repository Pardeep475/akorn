
import 'package:akorn/common/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'common/app_strings.dart';
import 'common/binding/application_binding.dart';
import 'common/routes/route_strings.dart';
import 'common/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1080, 2170),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppStrings.appName,
          theme: ThemeData(
            inputDecorationTheme: const InputDecorationTheme(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xFF9FA0A5),
                ),
              ),
            ),
            backgroundColor: AppColor.backgroundColor,
            scaffoldBackgroundColor: AppColor.backgroundColor,
            // colorScheme: ColorScheme(
            //   background: Colors.white,
            //   brightness: null, primary: null, onPrimary: null, secondary: null, onSecondary: null, error: null, onError: null, onBackground: null, surface: null, onSurface: null,
            // ),
          ),
          builder: (context, child) => Scaffold(
            // Global GestureDetector that will dismiss the keyboard
            body: GestureDetector(
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              child: child,
            ),
          ),
          // defaultTransition: Transition.fadeIn,
          // transitionDuration: const Duration(milliseconds: 500),
          initialRoute: RouteString.splashScreen,
          initialBinding: ApplicationBinding(),
          getPages: Routes.generateRoute(),
        );
      },
    );
  }
}
