import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:photo_view/photo_view.dart';

class DetailScreen extends StatefulWidget {
  final int index;
  const DetailScreen({Key? key, required this.index}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/house${widget.index + 1}.jpg",
                  ),
                  Image.asset(
                    "assets/images/interior1.jpg",
                  ),
                  Image.asset(
                    "assets/images/interior3.jpg",
                  ),
                  SizedBox(
                    width: 150,
                  ),
                  SizedBox(
                    width: 380,
                    child: SafeArea(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 20),
                          Text(
                            'รายละเอียด',
                            style: TextStyle(fontSize: 40),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'ประเภทอสังหาร: บ้านเดี่ยว ขาย\n\nเจ้าของโครงการ: Homedi',
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            '\nพิ้นที่ใช้สอย: 165 ตร.ม\n\nราคาต่อตร.ม: ฿19,535/ตารางเมตร ',
                            style: TextStyle(fontSize: 20),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
