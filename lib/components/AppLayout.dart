import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wallet/components/bottomNavigation.dart';
import 'package:wallet/utilities/sizes.dart';

class CustomMyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(65);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppSizes.medium, vertical: AppSizes.small),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(AppSizes.large),
                    child: const Image(
                      image: NetworkImage(
                        'https://media.licdn.com/dms/image/D5603AQHHmt8PXfCO9g/profile-displayphoto-shrink_800_800/0/1674280204453?e=1687996800&v=beta&t=h5i2c7p9y0aG6xoxIkNESdHzLtfQwLA7sVZU1K-hg_w',
                      ),
                      width: 35,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: AppSizes.extraSmall,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Morning',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: AppSizes.tweenSmall,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Text(
                        'Powell, Diriangen',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: AppSizes.small,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.settings),
                  SizedBox(
                    width: AppSizes.extraSmall,
                  ),
                  Icon(Icons.notifications),
                ],
              )
            ],
          )),
    );
  }
}

class AppLayout extends StatefulWidget {
  Widget? body;
  AppLayout(this.body);

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomMyAppBar(),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: SvgPicture.asset(
          'assets/scan.svg',
        ),
      ),
      bottomNavigationBar: AppBottomNavigation(),
      body: SafeArea(child: widget.body!),
    );
  }
}
