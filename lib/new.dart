import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NikeStorePage(),
    );
  }
}

class NikeStorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10,
      ),
      body: SingleChildScrollView(
       child: Padding(
       padding: EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Container(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Nike Store',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 24,
                      fontWeight: FontWeight.w800 ,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Image.network(
              'https://s3-alpha-sig.figma.com/img/d051/7aeb/b7ddf49ddc01788bcc9365177a8aed2f?Expires=1716768000&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=cp1cXJQKJ4Il10SMmWhaCalm0sVJYmepv5Y1s8c8a-PABFc3447nijfwNqeAhLEZ2tQFYTVLT3P6CTgxjgUurWSJZBootgGPLovGN2n9FT6a-cDtWRU-qropXwUrFY3zWtphnzIlNNScena5hIlJrMWNn0S2qK9M5m4bEIMsH0vIAGjjecKrfnkPj26P0OKPgyA36bl0BvKyzWf24qbxagvJbj6fLEdQSbWoSQOvF-8b1EGu05gv241zq6hZ6P9SXtZzvb9gR21TNMoKRs4Dkv2bD7wYNc2r-iaoUqb~tiKGUGCCZVch3iZyZ28n3rbsGI7qdnSgZSmer-hH6wH59g__',
              width: 350, // Set the desired width
              height: 214, // Set the desired height
              fit: BoxFit.cover,
            ),
         Container(
           alignment: Alignment.centerLeft,
           child: Text('Nike Air Max (Pink)',
              style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 24,
              fontWeight: FontWeight.w800 ,
            ),
            ),
         ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8.0),

                  child: Text(
                    '\$1200',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      color:  Colors.deepPurple,
                    ),
                  ),
                ),
                Row(
                  children: List.generate(
                    5,
                        (index) => Icon(Icons.star, color: Colors.yellow),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
         Container(
           alignment: Alignment.centerLeft,
           child: Text('Description',
              textAlign: TextAlign.left,
              style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),),),
            SizedBox(height: 8),
            Text(
              'Nike Air Max is a sneakers from the Nike Collection, it has various colors from various sizes that is affordable in all form. Check out for the Original Nike because there are lot of Fake product out there and they seem to pose like Nike but they absolutly not Nike. Always wash with designated washing materials and wash with clean water', // Replace with actual description
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Reviews',
                  style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
            ),),
                Text('See all' ,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.5)
                  ),),
              ],
            ),
            SizedBox(height: 8),
            ReviewCard(
              name: 'Sabinus',
              time: '2 weeks ago',
              rating: 5, // Replace with actual rating
              comment: 'The sneakers is really very good and i love the color, i will be buying another one very soon for my brother and also my sister, i recomend this sneaker to anybody. it’s great', // Replace with actual comment
            ),
          ],
        ),
      ),
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String name;
  final String time;
  final int rating;
  final String comment;

  const ReviewCard({
    Key? key,
    required this.name,
    required this.time,
    required this.rating,
    required this.comment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name, style: TextStyle(fontWeight: FontWeight.bold)),
                Text(time, style: TextStyle(color: Colors.black.withOpacity(0.5))),
              ],
            ),
            Row(
              children: List.generate(
                rating,
                    (index) => Icon(Icons.star, color: Colors.yellow),
              ),
            ),
            Text(comment),
          ],
        ),
      ),
    );
  }
}
