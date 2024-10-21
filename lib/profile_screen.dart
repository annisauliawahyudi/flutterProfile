import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart'; // Ganti impor dari main.dart ke login_screen.dart
import 'detail_page.dart'; // Import halaman detail

class ProfileScreen extends StatelessWidget {
  final String nama;
  final String sekolah;

  const ProfileScreen({Key? key, required this.nama, required this.sekolah})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage(
                  'assets/images/fotoprofil.jpg'), // Pastikan gambar ada di direktori assets
            ),
            const SizedBox(height: 20),
            itemProfile(
                context,
                'Name',
                nama, // Menggunakan data yang di-pass dari DataDiriForm
                CupertinoIcons.person,
                "My name is $nama, and I’m a 12th-grade student at $sekolah. I enjoy programming, especially in web and mobile app development. I'm actively involved in projects to enhance my skills. After graduation, I aspire to build a career in IT and continue expanding my knowledge of technology."),
            const SizedBox(height: 10),
            itemProfile(
                context,
                'School',
                sekolah, // Menggunakan data sekolah dari form
                CupertinoIcons.location,
                'Jl. Raya Wangun, RT.01/RW.06, Sindangsari, Kec. Bogor Tim., Kota Bogor, Jawa Barat 16146'),
            const SizedBox(height: 10),
            itemProfile(context, 'Email', 'annisaaulia@gmail.com',
                CupertinoIcons.mail, 'Contact Me!'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Logout dan kembali ke halaman LoginScreen
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          LoginScreen()), // Hapus const jika error
                );
              },
              child: const Text('Logout'),
              // style: ElevatedButton.styleFrom(
              //   primary: Colors.deepOrange,
              // ),
            ),
          ],
        ),
      ),
    );
  }

  Widget itemProfile(BuildContext context, String title, String subtitle,
      IconData iconData, String detail) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 5),
            color: Colors.deepOrange.withOpacity(.2),
            spreadRadius: 2,
            blurRadius: 10,
          )
        ],
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        trailing: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailPage(
                  title: title,
                  subtitle: subtitle,
                  detail: detail,
                  iconData: iconData,
                ),
              ),
            );
          },
          child: const Text('See More',
              style: TextStyle(color: Color.fromARGB(255, 201, 157, 190))),
        ),
      ),
    );
  }
}
