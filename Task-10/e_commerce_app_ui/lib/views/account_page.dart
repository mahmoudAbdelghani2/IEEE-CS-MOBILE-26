import 'package:e_commerce_app_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroungColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroungColor,
        title: Text(
          "MyProfile",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                elevation: 4,
                child: Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  height: 250,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.greyColor,
                  ),
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadiusGeometry.all(
                          Radius.circular(70),
                        ),
                        child: SizedBox(
                          height: 120,
                          width: 120,
                          child: Image.asset(
                            "images/boy.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Hello 7ambola",
                        style: TextStyle(
                          fontSize: 25,
                          color: AppColors.primaryTxtColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        textAlign: TextAlign.center,
                        "mahmoud7ambola@gmail.com",
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.secondryTxtColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              _buildMyCard(
                title: "Account Settings",
                icon: Icons.person_outline,
              ),
              _buildMyCard(
                title: "My Orders",
                icon: Icons.receipt_long_outlined,
              ),
              _buildMyCard(
                title: "Saved Addresses",
                icon: Icons.location_on_outlined,
              ),
              _buildMyCard(
                title: "Payment & Cards",
                icon: Icons.credit_card_outlined,
              ),
              _buildMyCard(
                title: "Notifications",
                icon: Icons.notifications_none_outlined,
              ),
              _buildMyCard(title: "Help & Support", icon: Icons.help_outline),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildMyCard({required String title, required IconData icon}) {
  return Card(
    margin: EdgeInsets.only(bottom: 10),
    elevation: 4,
    color: AppColors.greyColor,
    child: Container(
      height: 70,
      padding: EdgeInsets.all(8),
      child: ListTile(
        leading: Icon(icon, size: 40),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        trailing: Icon(Icons.arrow_forward_ios, size: 40),
      ),
    ),
  );
}
