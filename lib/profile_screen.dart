import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'detail_page.dart'; // Import halaman detail

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 40),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage(
                  'assets/images/fotoprofil.jpg'), // Pastikan gambar ada di direktori assets
            ),
            const SizedBox(height: 20),
            itemProfile(
                context,
                'Name',
                'Annisa Aulia Wahyudi',
                CupertinoIcons.person,
                "My name is Annisa Aulia Wahyudi, and I’m a 12th-grade student at SMK Wikrama Bogor, majoring in Software Engineering. I enjoy programming, especially in web and mobile app development, and I'm actively involved in projects to enhance my skills. After graduation, I aspire to build a career in IT and continue expanding my knowledge of technology."),
            const SizedBox(height: 10),
            itemProfile(
                context,
                'School',
                'Vocational High School Student at SMK Wikrama Bogor',
                CupertinoIcons.location,
                'Jl. Raya Wangun, RT.01/RW.06, Sindangsari, Kec. Bogor Tim., Kota Bogor, Jawa Barat 16146'),
            const SizedBox(height: 10),
            itemProfile(
                context,
                'Email',
                'annisaaulia9706@gmail.com',
                CupertinoIcons.mail,
                'Contact Me!'),
            const SizedBox(height: 20),
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
          child: Text('See More', style: TextStyle(color: Colors.deepOrange)),
        ),
      ),
    );
  }
}
