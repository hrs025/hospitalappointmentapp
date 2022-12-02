import 'package:doctorappointment/User_module/provider/Appointment_provider.dart';
import 'package:doctorappointment/User_module/screens/appointments.dart';
import 'package:doctorappointment/User_module/screens/chat_screen.dart';
import 'package:doctorappointment/User_module/screens/editprofile.dart';
import 'package:doctorappointment/User_module/screens/homedoctor.dart';
import 'package:doctorappointment/User_module/screens/test.dart';
import 'package:doctorappointment/User_module/screens/test2.dart';
//import 'package:doctor_appointment/screens/google_map.dart';
import 'package:doctorappointment/User_module/screens/viewappointments.dart';
import 'package:doctorappointment/User_module/services/auth.dart';
import 'package:doctorappointment/User_module/widget/toprated.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:typicons_flutter/typicons_flutter.dart';
import 'Hospital_module/HSPHomepage.dart';
import 'User_module/screens/signup.dart';
import 'User_module/screens/home_page.dart';
import 'User_module/screens/doctor_details.dart';
import 'User_module/screens/login.dart';
import 'User_module/screens/editprofile.dart';
import 'User_module/screens/first_screen.dart';
import 'User_module/screens/booking.dart';
import 'User_module/screens/notifications.dart';
import 'package:doctorappointment/User_module/screens/ratingpage.dart';
import 'User_module/screens/drprofile.dart';
import 'User_module/screens/aboutus.dart';
import 'User_module/screens/settings.dart';
import 'User_module/screens/Home2Docprof.dart';
import 'Doctor_module/DCHomePage.dart';
import 'Doctor_module/login.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => AppoimentProvider())],
      child: MyApp()));
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => AuthService(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hospital Appointment',
        initialRoute: '/',
        routes: {

            // '/': (context) => firstscreen(),
            '/': (context) => Login(),
            '/signup': (context) => SignUp(),
            '/home': (context) => HomePage(),
            '/details': (context) => DoctorDetailPage(),
            '/editprofile': (context) => EditProfileUI(),
            '/doctorreserve': (context) => Booking(glbimg,glbName,glbcategotry,glbrate),
            '/rate': (context) => RatingsPage(),
            '/notify': (context) => Notifications(),
            '/viewappoint': (context) => ViewAppointment(),
            '/appoiment': (context) => Appoiments(),
            '/drprofile': (context) => Drprofile(),
            '/aboutus': (context) => AboutUs(),
            '/settings': (context) => SettingsPage(),
            '/homedoctor': (context) => Doctorhome(),
            '/chat':(context) => ChatScreen(),
            '/h2doc':(context) => Home2Booking(glbimg,glbName,glbcategotry,glbrate),
            '/hspHome': (context) => HSPhomepage(),
            '/dclogin': (context) => DClogin(),
            '/dcHome': (context) => dchomepage(),

            //'/login':(context) => LoginPage(),
            //'/signup':(context) => SignupPage()
        },
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: fontFamily,
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   final _fbApp =Firebase.initializeApp();
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         Provider<AuthenticationService>(
//           create: (_) => AuthenticationService(FirebaseAuth.instance),
//         ),
//         StreamProvider(
//           create: (context) => context.read<AuthenticationService>().authStateChanges,
//           initialData: null,
//         )
//       ],
//       child: MaterialApp(
//         title: 'Doctor Appointment',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//           visualDensity: VisualDensity.adaptivePlatformDensity,
//         ),
//          initialRoute: '/',
//          routes: {
//        '/': (context) => firstscreen(),
//        '/signup': (context) => SignupPage(),
//        '/login': (context) => LoginPage(),
//        '/home': (context) => HomePage(),
//        '/details': (context) => DoctorDetailPage(),
//        '/editprofile': (context) => EditProfileUI(),
//        '/doctorreserve': (context) => Booking(),
//        '/rate': (context) => RatingsPage(),
//        '/notify': (context) => Notifications(),
//        '/viewappoint': (context) => ViewAppointment(),
//        '/appoiment': (context) => Appoiments(),
//        '/drprofile': (context) => Drprofile(),
//         '/aboutus': (context) => AboutUs(),
//        '/settings': (context) => SettingsPage(),
//      },
//         home: FutureBuilder(
//           future: _fbApp,
//           builder: (context,snapshot){
//             if (snapshot.hasError){
//               //return Dialog();
//               return Text("text");

//             }else if (snapshot.hasData){
//               return Text("text");
//             }
//             else {
//              // return CircularProgressIndicator();
//              return Text("text2");
//             }
//           }
//         ),
//       ),
//     );
//   }
// }

// class AuthenticationWrapper extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final firebaseUser = context.watch<User?>();

//     if (firebaseUser != null) {
//       return HomePage();
//     }
//     return LoginPage();
//   }
// }
