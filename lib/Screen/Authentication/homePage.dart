import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(color: Color(0xff848584)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 52, left: 320),
              child: Row(
                children: const [
                  Text(
                    'En',
                    style: TextStyle(fontSize: 14),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Icon(
                      Icons.arrow_drop_down_circle,
                      size: 18,
                      color: Color(0xff0F50A4),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 52, left: 133, right: 132),
              child: Center(
                child: Image.asset('asset/image/cic.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 61, left: 10, right: 10.5),
              child: Center(
                child: Image.asset('asset/image/Frame.png'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 65, bottom: 8),
              child: Text(
                'Open your new account with',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w400,
                    color: Color(0xffFFFFFF)),
              ),
            ),
            const Text(
              'CiC Mobile App',
              style: TextStyle(
                  fontSize: 18,
                  fontFamily: 'DM Sans',
                  fontWeight: FontWeight.w500,
                  color: Color(0xffFFFFFF)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 34, left: 20, right: 20),
              child: GestureDetector(
                onTap: () {
                  // con.removeStorage(context);
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.white)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 14,
                      bottom: 14,
                      left: 16,
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.call,
                          color: Colors.white,
                          size: 18,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            'Logout',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
