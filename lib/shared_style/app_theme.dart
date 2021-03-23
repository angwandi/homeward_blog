import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    visualDensity: VisualDensity(vertical: 0.5, horizontal: 0.5),
    primarySwatch: MaterialColor(
      0xff163d76,
      <int, Color>{
        01: homeward_primary,
        02: homeward_primary_light,
        03: homeward_primary_dark,
        04: homeward_secondary,
        05: homeward_secondary_light,
        06: homeward_secondary_dark,
        07: homeward_text_on_primary,
        08: homeward_text_on_secondary,
      },
    ),
    primaryColor: Color(0xff163d76),
    primaryColorBrightness: Brightness.light,
    primaryColorLight: Color(0xff4c67a5),
    primaryColorDark: Color(0xff00184a),
    accentColor: Color(0xff03cea4),
    accentColorBrightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white70,
    selectedRowColor: Colors.grey,
    unselectedWidgetColor: Colors.grey.shade400,
    disabledColor: Colors.grey.shade200,
    buttonTheme: ButtonThemeData(
      buttonColor: Color(0xff163d76),
      //button themes
    ),
    toggleButtonsTheme: ToggleButtonsThemeData(
        //toggle button theme
        ),
    buttonColor: Color(0xff163d76),
    secondaryHeaderColor: Colors.grey,
    textSelectionColor: Color(0xffB5BFD3),
    cursorColor: Color(0xff163d76),
    textSelectionHandleColor: Color(0xff163d76),
    dialogBackgroundColor: Colors.white,
    hintColor: Colors.grey,
    errorColor: Colors.red,
    textTheme: TextTheme(
        //text themes that contrast with card and canvas
        ),
    primaryTextTheme: TextTheme(
        //text theme that contrast with primary color
        ),
    accentTextTheme: TextTheme(
        //text theme that contrast with accent Color
        ),
    inputDecorationTheme: InputDecorationTheme(
        // default values for InputDecorator, TextField, and TextFormField
        ),
    iconTheme: IconThemeData(
        //icon themes that contrast with card and canvas
        ),
    primaryIconTheme: IconThemeData(
        //icon themes that contrast primary color
        ),
    accentIconTheme: IconThemeData(
        //icon themes that contrast accent color
        ),
    sliderTheme: SliderThemeData(
        // slider themes
        ),
    tabBarTheme: TabBarTheme(
        // tab bat theme
        ),
    tooltipTheme: TooltipThemeData(
        // tool tip theme
        ),
    cardTheme: CardTheme(
        // card theme
        ),
    chipTheme: ChipThemeData(
        backgroundColor: Color(0xff936F3E),
        disabledColor: Color(0xaaF5E0C3),
        shape: StadiumBorder(),
        brightness: Brightness.light,
        labelPadding: EdgeInsets.all(8),
        labelStyle: TextStyle(),
        padding: EdgeInsets.all(8),
        secondaryLabelStyle: TextStyle(),
        secondarySelectedColor: Colors.white38,
        selectedColor: Colors.white
        // chip theme
        ),
    platform: TargetPlatform.android,
    materialTapTargetSize: MaterialTapTargetSize.padded,
    applyElevationOverlayColor: true,
    pageTransitionsTheme: PageTransitionsTheme(
        //page transition theme
        ),
    appBarTheme: AppBarTheme(
        //app bar theme
        ),
    bottomAppBarTheme: BottomAppBarTheme(
        // bottom app bar theme
        ),
    colorScheme: ColorScheme(
        primary: Color(0xff163d76),
        primaryVariant: Color(0x1aF5E0C3),
        secondary: Color(0xff03cea4),
        secondaryVariant: Color(0xff009c75),
        brightness: Brightness.light,
        background: Color(0xffffffff),
        error: Colors.red,
        onBackground: Color(0xffB5BFD3),
        onError: Colors.red,
        onPrimary: Color(0xffEDD5B3),
        onSecondary: Color(0xffC9A87C),
        onSurface: Color(0xff457BE0),
        surface: Color(0xff457BE0)),
    snackBarTheme: SnackBarThemeData(
        // snack bar theme
        ),
    dialogTheme: DialogTheme(
        // dialog theme
        ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        // floating action button theme
        ),
    navigationRailTheme: NavigationRailThemeData(
        // navigation rail theme
        ),
    typography: Typography.material2018(),
    cupertinoOverrideTheme: CupertinoThemeData(
        //cupertino theme
        ),
    bottomSheetTheme: BottomSheetThemeData(
        //bottom sheet theme
        ),
    popupMenuTheme: PopupMenuThemeData(
        //pop menu theme
        ),
    bannerTheme: MaterialBannerThemeData(
        // material banner theme
        ),
    dividerTheme: DividerThemeData(
        //divider, vertical divider theme
        ),
    buttonBarTheme: ButtonBarThemeData(
        // button bar theme
        ),
    fontFamily: 'ROBOTO',
    splashFactory: InkSplash.splashFactory);
ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    visualDensity: VisualDensity(vertical: 0.5, horizontal: 0.5),
    primarySwatch: MaterialColor(
      0xff163d76,
      <int, Color>{
        501: homeward_primary,
        02: homeward_primary_light,
        03: homeward_primary_dark,
        04: homeward_secondary,
        05: homeward_secondary_light,
        06: homeward_secondary_dark,
        07: homeward_text_on_primary,
        08: homeward_text_on_secondary,
      },
    ),
    primaryColor: Color(0xff163d76),
    primaryColorBrightness: Brightness.light,
    primaryColorLight: Color(0xff4c67a5),
    primaryColorDark: Color(0xff00184a),
    accentColor: Color(0xff03cea4),
    accentColorBrightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white70,
    selectedRowColor: Colors.grey,
    unselectedWidgetColor: Colors.grey.shade400,
    disabledColor: Colors.grey.shade200,
    buttonTheme: ButtonThemeData(
//button themes
        ),
    toggleButtonsTheme: ToggleButtonsThemeData(
//toggle button theme
        ),
    buttonColor: Color(0xff483112),
    secondaryHeaderColor: Colors.grey,
    textSelectionColor: Color(0x1a483112),
    cursorColor: Color(0xff483112),
    textSelectionHandleColor: Color(0xff483112),
    backgroundColor: Color(0xff457BE0),
    dialogBackgroundColor: Colors.white,
    indicatorColor: Color(0xff457BE0),
    hintColor: Colors.grey,
    errorColor: Colors.red,
    toggleableActiveColor: Color(0xff6D42CE),
    textTheme: TextTheme(
//text themes that contrast with card and canvas
        ),
    primaryTextTheme: TextTheme(
//text theme that contrast with primary color
        ),
    accentTextTheme: TextTheme(
//text theme that contrast with accent Color
        ),
    inputDecorationTheme: InputDecorationTheme(
// default values for InputDecorator, TextField, and TextFormField
        ),
    iconTheme: IconThemeData(
//icon themes that contrast with card and canvas
        ),
    primaryIconTheme: IconThemeData(
//icon themes that contrast primary color
        ),
    accentIconTheme: IconThemeData(
//icon themes that contrast accent color
        ),
    sliderTheme: SliderThemeData(
        // slider themes
        ),
    tabBarTheme: TabBarTheme(
        // tab bat theme
        ),
    tooltipTheme: TooltipThemeData(
        // tool tip theme
        ),
    cardTheme: CardTheme(
        // card theme
        ),
    chipTheme: ChipThemeData(
        backgroundColor: Color(0xff2F1E06),
        disabledColor: Color(0xa15D4524),
        shape: StadiumBorder(),
        brightness: Brightness.dark,
        labelPadding: EdgeInsets.all(8),
        labelStyle: TextStyle(),
        padding: EdgeInsets.all(8),
        secondaryLabelStyle: TextStyle(),
        secondarySelectedColor: Colors.white38,
        selectedColor: Colors.white
        // chip theme
        ),
    platform: TargetPlatform.android,
    materialTapTargetSize: MaterialTapTargetSize.padded,
    applyElevationOverlayColor: true,
    pageTransitionsTheme: PageTransitionsTheme(
        //page transition theme
        ),
    appBarTheme: AppBarTheme(
        //app bar theme
        ),
    bottomAppBarTheme: BottomAppBarTheme(
        // bottom app bar theme
        ),
    colorScheme: ColorScheme(
        primary: Color(0xff5D4524),
        primaryVariant: Color(0x1a311F06),
        secondary: Color(0xff457BE0),
        secondaryVariant: Color(0xaa457BE0),
        brightness: Brightness.dark,
        background: Color(0xffB5BFD3),
        error: Colors.red,
        onBackground: Color(0xffB5BFD3),
        onError: Colors.red,
        onPrimary: Color(0xff5D4524),
        onSecondary: Color(0xff457BE0),
        onSurface: Color(0xff457BE0),
        surface: Color(0xff457BE0)),
    snackBarTheme: SnackBarThemeData(
        // snack bar theme
        ),
    dialogTheme: DialogTheme(
        // dialog theme
        ),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        // floating action button theme
        ),
    navigationRailTheme: NavigationRailThemeData(
        // navigation rail theme
        ),
    typography: Typography.material2018(),
    cupertinoOverrideTheme: CupertinoThemeData(
        //cupertino theme
        ),
    bottomSheetTheme: BottomSheetThemeData(
        //bottom sheet theme
        ),
    popupMenuTheme: PopupMenuThemeData(
        //pop menu theme
        ),
    bannerTheme: MaterialBannerThemeData(
        // material banner theme
        ),
    dividerTheme: DividerThemeData(
        //divider, vertical divider theme
        ),
    buttonBarTheme: ButtonBarThemeData(
        // button bar theme
        ),
    fontFamily: 'Poppins',
    splashFactory: InkSplash.splashFactory);
