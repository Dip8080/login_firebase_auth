import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_firebase_auth/pages/Login/auth_controller.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    List images = [
      "g.png",
      "t.png",
      "f.png"
      
    ];
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
       backgroundColor: Colors.white,
              body: Column(
                children: [
                  Container(
                    width: w,
                    height: h*0.3, //will h*3 will always take one third of actual screen
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "img/signup.png"
                        ),
                        fit: BoxFit.cover
                      )
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: h*.13,),
                        CircleAvatar(
                          backgroundColor: Colors.white70,
                          radius: 60,
                          backgroundImage: AssetImage(
                            "img/profile.png"
                          ),
                        )
                      ],
                    ),
                  ) ,
                  //end of image container
                  Container(
                    margin: const EdgeInsets.only(left: 20 , right: 20),
                    width: w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Text(
                        //   "Greetings",
                        //   style: TextStyle(
                        //     fontSize: 70,
                        //     fontWeight: FontWeight.bold
                        //   ),
                        // ),
                        // Text(
                        //   "plese login into your account",
                        //   style: TextStyle(
                        //     fontSize : 20,
                        //     color: Colors.grey[500]
                        //   ),
                        // )
                      //end of text greeting
                        
                        SizedBox(height:10),
                        Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            
                            color: Colors.white,
                            borderRadius:  BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                offset: Offset(1,1),
                                color: Colors.grey.withOpacity(0.5),  
                              )
                            ]
                          ),
                          child: TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                              hintText: "Your Email Address",
                              prefixIcon: Icon(Icons.email, color: Colors.deepOrange),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0
                                )
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0
                                )
                              ),
                               border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                              )
                            ),
                          ),
                        ),
                        
                        SizedBox(height: 20,),
                        
                        Container(
                          margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            
                            color: Colors.white,
                            borderRadius:  BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 10,
                                offset: Offset(1,1),
                                color: Colors.grey.withOpacity(0.5),  
                              )
                            ]
                          ),
                          child: TextField(
                            controller: passwordController,
                            decoration: InputDecoration(
                              hintText: "Password",
                              prefixIcon: Icon(Icons.password,color: Colors.deepOrange,),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0
                                )
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0
                                )
                              ),
                               border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)
                              )
                            ),
                          ),
                        ),
                        SizedBox(height: 20,),
                        // Row(
                        //   children: [
                        //     Expanded(child: Container(),),
                        //     Text(
                        //   "Forgot your password ?",
                        //   style: TextStyle(
                        //     fontSize : 20,
                        //     color: Colors.grey[500]
                        //   ),
                        // )
                            
                        //     ],
                        // )
                        
                      ],
                    ),
                  )
                  ,
                  SizedBox(height: 70,), 
                   GestureDetector(
                    onTap: () {
                      AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
                    },
                     child: Container(                      
                      width: w*0.5,
                      height: h*0.08,
                       //will h*3 will always take one third of actual screen
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(
                            "img/loginbtn.png"
                          ),
                          fit: BoxFit.cover
                        )
                      ),
                      
                      child: Center(
                        child: Text(
                              "Sign up",
                              style: TextStyle(
                                fontSize : 36,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            ),
                      ), 
                                     ),
                   ) ,
                  RichText(text: 
                    TextSpan(
                      recognizer:  TapGestureRecognizer()..onTap=()=>Get.back(),
                      text: "have an account ? ",
                      style: TextStyle(
                        fontSize: 20,
                        color:Colors.grey[500]
                      )
                    )
                  ),
                
                SizedBox(height: w*0.05,),

                RichText(text: TextSpan(
                  text: "Sign up using on the following method",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 16,
                  ),
                  // children: [
                  //   TextSpan(
                  //     text: "Create",
                  //     style: TextStyle(
                  //       color: Colors.black,
                  //       fontSize: 20,
                  //       fontWeight: FontWeight.bold
                  //     )
                  //   )
                  // ]
                )),
                SizedBox(height: w*.05,),

                Wrap(
                  children: List<Widget>.generate(3, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey[500],
                        backgroundImage:  AssetImage(
                          "img/"+images[index]
                        ),
                      ),
                    );
                  }),
                )
                ],
              ),  



    );
  }
}