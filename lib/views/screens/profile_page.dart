import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constant/app_color.dart';
import '../widgets/main_app_bar_widget.dart';
import '../widgets/menu_tile_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(
        cartValue: 2,
        chatValue: 2,
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: [
          // Section 1 - Profile Picture - Username - Name
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                // Profile Picture
                Container(
                  width: 96,
                  height: 96,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.grey,
                    image: const DecorationImage(
                      image: AssetImage('assets/images/pp.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // Fullname
                Container(
                  margin: const EdgeInsets.only(bottom: 4, top: 14),
                  child: const Text(
                    'Rachel',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ),
                // Username
                Text(
                  '@ndombe',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.6), fontSize: 14),
                ),
              ],
            ),
          ),
          // Section 2 - Account Menu
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: Text(
                    'C O M P T E',
                    style: TextStyle(
                        color: AppColor.secondary.withOpacity(0.5),
                        letterSpacing: 6 / 100,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                MenuTileWidget(
                  onTap: () {},
                  margin: const EdgeInsets.only(top: 10),
                  icon: SvgPicture.asset(
                    'assets/icons/Heart.svg',
                    color: AppColor.secondary.withOpacity(0.5),
                  ),
                  title: 'Wishlist',
                  subtitle: 'Lorem ipsum Dolor sit Amet',
                ),
                MenuTileWidget(
                  onTap: () {},
                  margin: const EdgeInsets.all(12),
                  icon: SvgPicture.asset(
                    'assets/icons/Show.svg',
                    color: AppColor.secondary.withOpacity(0.5),
                  ),
                  title: 'dernière vue',
                  subtitle: 'Lorem ipsum Dolor sit Amet',
                ),
                MenuTileWidget(
                  onTap: () {},
                  margin: const EdgeInsets.all(12),
                  icon: SvgPicture.asset(
                    'assets/icons/Heart.svg',
                    color: AppColor.secondary.withOpacity(0.5),
                  ),
                  title: 'Liste des souhaits',
                  subtitle: 'Lorem ipsum Dolor sit Amet',
                ),
                MenuTileWidget(
                  onTap: () {},
                  margin: const EdgeInsets.all(12),
                  icon: SvgPicture.asset(
                    'assets/icons/Bag.svg',
                    color: AppColor.secondary.withOpacity(0.5),
                  ),
                  title: 'Ordres',
                  subtitle: 'Lorem ipsum Dolor sit Amet',
                ),
                MenuTileWidget(
                  onTap: () {},
                  margin: const EdgeInsets.all(12),
                  icon: SvgPicture.asset(
                    'assets/icons/Wallet.svg',
                    color: AppColor.secondary.withOpacity(0.5),
                  ),
                  title: 'Portefeuille',
                  subtitle: 'Lorem ipsum Dolor sit Amet',
                ),
                MenuTileWidget(
                  onTap: () {},
                  margin: const EdgeInsets.all(12),
                  icon: SvgPicture.asset(
                    'assets/icons/Location.svg',
                    color: AppColor.secondary.withOpacity(0.5),
                  ),
                  title: 'Addresses',
                  subtitle: 'Lorem ipsum Dolor sit Amet',
                ),
              ],
            ),
          ),

          // Section 3 - Settings
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: Text(
                    'PARAMETRES',
                    style: TextStyle(
                        color: AppColor.secondary.withOpacity(0.5),
                        letterSpacing: 6 / 100,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                MenuTileWidget(
                  onTap: () {},
                  margin: const EdgeInsets.only(top: 10),
                  icon: SvgPicture.asset(
                    'assets/icons/Filter.svg',
                    color: AppColor.secondary.withOpacity(0.5),
                  ),
                  title: 'Languages',
                  subtitle: 'Lorem ipsum Dolor sit Amet',
                ),
                MenuTileWidget(
                  onTap: () {},
                  margin: const EdgeInsets.all(12),
                  icon: SvgPicture.asset(
                    'assets/icons/Log Out.svg',
                    color: Colors.red,
                  ),
                  iconBackground: Colors.red[100],
                  title: 'Se deconnecter',
                  titleColor: Colors.red,
                  subtitle: '',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
