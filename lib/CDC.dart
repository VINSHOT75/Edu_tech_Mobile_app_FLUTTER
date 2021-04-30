import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testing3/studentscreen.dart';


class CDC extends StatefulWidget {
  @override
  _CDCState createState() => _CDCState();
}
class _CDCState extends State<CDC> {
  Color mainColor = Color(0xff305049);
  Color secColor = Color(0xffD0BEA5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton (icon:Icon(Icons.arrow_back_ios
        ),
          onPressed:() {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> Vinayak()));
          },
        ),
        backgroundColor: mainColor,
        title: Center(
          child: Text(
            'CDC           '
          ),
        ),
      ),
     body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                padding: const EdgeInsets.all(12.0),

                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/cdc.jpeg"),
                      fit: BoxFit.fill,
                    )
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                  Text('CDC Acropolis Operates and functions as the central body in Placement, Entrepreneurship and  Career development function with a team of dynamic.\n\nThe main emphasis of the Career Development Cell is to define and implement processes for career development, career awareness, career exploration, career preparation, and industry exposure. Our purpose is to expose the students to options that best fit their individual career needs.\n\nThe Placement Cell plays a crucial role in locating job opportunities for Under Graduates and Post Graduates passing out from the college by reputed firms and industrial establishments.\n\n   ',
                        style:
                        TextStyle(
                            fontSize: 20,
                             color: Colors.black),
               ),

                  ),
                ),

            ],
          ),
      ),
    );
  }
}




class Yavnika extends StatefulWidget {
  @override
  _YavnikaState createState() => _YavnikaState();
}
class _YavnikaState extends State<Yavnika> {
  Color mainColor = Color(0xff305049);
  Color secColor = Color(0xffD0BEA5);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton (icon:Icon(Icons.arrow_back_ios
        ),
          onPressed:() {
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=> Vinayak()));
          },
        ),
        backgroundColor: mainColor,
        title: Center(
          child: Text(
              'Yavnika Club           '
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              padding: const EdgeInsets.all(12.0),

              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/yavnika.jfif"),
                    fit: BoxFit.fill,
                  )
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                Text('Each one of us is gifted and each one of us has a different set of hidden talents. “Yavnika” -Hobby club is an excellent avenue to unwrap these natural gifts & discover our potentials, polish them, embellish them and be a proud beholder of many skills. It’s not about how smart you are, it’s all about how you are smart. Hobby Club draws its inspiration from the Multiple Intelligence faction of the ‘The Eclectic Approach\'.\n\nThe focus of these club activities is primarily to help the students explore their hidden talents in activities that range from personal cultural hobbies to technical interest.The ‘Hobby Club’ not only helps to bring out the potential of the students but also fosters development in areas such as personality development and inculcating in the students the spirit of learning together.\n\n We intend to make students smarter the way they already are. Each individual has a different permutation and combination of the different intelligences he/she possess.In today’s world, the pressures and demands on students are phenomenal. Pressure of exams, peer pressure, parental pressure and pressure for career results in tension among the students. This stress prevents them from performing skillful actions which in turn deprives them of the results that they deserve to achieve. For reducing stress, the Hobby Club provides an answer. Hobby is focusing attention on a single thought to the exclusion of all other thoughts under the supervision of the intellect.',
                      style:
                      TextStyle(
                          fontSize: 20,
                          color: Colors.black),
                    ),

                ),
              ),

          ],
        ),
      ),
    );
  }
}
