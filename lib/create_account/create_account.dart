import 'package:flutter/material.dart';
import 'package:my_fitness_app/common/colo_extension.dart';
import 'package:my_fitness_app/common/common_widgets/button_elevation.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios) ,
          onPressed: () {},
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Create Your Account",style: TextStyle(fontWeight: FontWeight.bold),),

            SizedBox(height: 15,),

            Center(
                child: ButtonElevation(
                  onPressed: (){}, btnText: 'Sign Up',
                )
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(child: Text("OR")),
            ),

            OutlinedButton.icon(
              onPressed: (){},
              icon: Image.asset("assets/images/googleimg.png"),
              label: Text("Sign Up with Google"),
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7) ),
                  backgroundColor: Colors.white,
                  foregroundColor: TColor.black,
                  minimumSize: Size(MediaQuery.of(context).size.width, 20),
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )
              ),

            ),

            SizedBox(height: 10,),

            OutlinedButton.icon(
              onPressed: (){},
              icon: Icon(Icons.email_outlined),
              label: Text("Sign Up with Email"),
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7) ),
                  backgroundColor: Colors.white,
                  foregroundColor: TColor.black,
                  minimumSize: Size(MediaQuery.of(context).size.width, 20),
                  textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )
              ),
            ),
            SizedBox(height: 10,),

            Center(
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                          color: TColor.black,
                          fontSize: 14
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: "Already have an account?"
                        ),
                        TextSpan(
                            text: "Login here",
                            style: TextStyle(
                              color: Colors.red,
                            )
                        )
                      ]
                  )
              ),
            )
          ],
        ),
      ),
    );
  }
}
