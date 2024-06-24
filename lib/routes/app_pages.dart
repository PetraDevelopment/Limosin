
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:limousine/screens/add_car/add_car_binding.dart';
import 'package:limousine/screens/change_password/change_password_binding.dart';
import 'package:limousine/screens/change_password/change_password_screen.dart';
import 'package:limousine/screens/profile/profile_binding.dart';
import 'package:limousine/screens/profile/profile_screen.dart';

import '../screens/add_car/add_car_details_screen.dart';
import '../screens/car_details/car_details_binding.dart';
import '../screens/car_details/cars_details_screen.dart';
import '../screens/log_in/log_in_binding.dart';
import '../screens/log_in/sign_in_screen.dart';
import '../screens/register/register_binding.dart';
import '../screens/register/sign_up_screen.dart';
import '../screens/ride_details/ride_details_binding.dart';
import '../screens/ride_details/ride_details_screen.dart';
import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.register,
      page: () => SignUpScreen(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: AppRoutes.LogIn,
      page: () => SignInScreen(),
      binding: LogInBinding(),
    ),
    GetPage(
      name: AppRoutes.ChangePassword,
      page: () => ChangePasswordScreen(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: AppRoutes.Profile,
      page: () => ProfileScreen(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: AppRoutes.AddCar,
      page: () => AddCarDetailsScreen(),
      binding: AddCarBinding(),
    ),
    GetPage(
      name: AppRoutes.CarDetails,
      page: () => CarsDetailsScreen(),
      binding: CarDetailsBinding(),
    ),
    GetPage(
      name: AppRoutes.AvaliableCar,
      page: () => RideDetailsScreen(),
      binding: RideDetailsBinding(),
    ),

  ];
}
