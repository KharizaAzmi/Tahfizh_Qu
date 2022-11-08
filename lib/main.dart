import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:tahfizh_qu_app/features/alQuran_feature/view_model/alQuran_view_model.dart';
import 'package:tahfizh_qu_app/res/tahfidzqu_colors.dart';
import 'package:tahfizh_qu_app/utils/routes/routes.dart';
import 'package:tahfizh_qu_app/utils/routes/routes_names.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AlQuranViewModel())],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: TahfidzQuColors.whiteBackground,
        ),
        initialRoute: RoutesNames.home,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
