import 'package:flutter/material.dart';
import 'account_detail.dart';
import 'contact_us.dart';

/// ======================================================
/// PROFILE PAGE
/// ======================================================
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool notificationEnabled = true;
  static const Color primaryBlue = Color(0xFF053886);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// ================= PROFILE HEADER =================
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(
                      'assets/icon/profile.jpg',
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Darren Samuel Nathan',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'darrensamuelnathan@gmail.com',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            _sectionTitle('Detail Personal'),

            /// 👉 ACCOUNT DETAILS (LINK)
            _menuItem(
              icon: Icons.person,
              title: 'Account Details',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => AccountDetailsPage(),
                  ),
                );
              },
            ),
            _divider(),

            _menuItem(
              icon: Icons.lock,
              title: 'Change Password',
              onTap: () {},
            ),
            _divider(),

            _switchItem(
              icon: Icons.notifications,
              title: 'Notifications',
            ),

            _sectionTitle('Other'),

            /// 👉 CONTACT US (LINK)
            _menuItem(
              icon: Icons.contact_support,
              title: 'Contact Us',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ContactUsPage(),
                  ),
                );
              },
            ),
            _divider(),

            _menuItem(
              icon: Icons.logout,
              title: 'Log out',
              onTap: () {},
              isLogout: true,
            ),
          ],
        ),
      ),
    );
  }

  /// ================== COMPONENTS ==================

  Widget _sectionTitle(String title) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      color: Colors.grey.shade200,
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _menuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
    bool isLogout = false,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: isLogout ? Colors.red : primaryBlue,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: isLogout ? Colors.red : Colors.black,
        ),
      ),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }

  Widget _switchItem({
    required IconData icon,
    required String title,
  }) {
    return ListTile(
      leading: Icon(icon, color: primaryBlue),
      title: Text(title),
      trailing: Switch(
        value: notificationEnabled,
        activeColor: primaryBlue,
        onChanged: (value) {
          setState(() {
            notificationEnabled = value;
          });
        },
      ),
    );
  }

  Widget _divider() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Divider(height: 1),
    );
  }
}
