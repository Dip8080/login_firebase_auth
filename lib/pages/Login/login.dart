import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_firebase_auth/pages/Login/Reginster.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
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
                          "img/loginimg3.jpg"
                        ),
                        fit: BoxFit.cover
                      )
                    ),
                  ) ,
                  //end of image container
                  Container(
                    margin: const EdgeInsets.only(left: 20 , right: 20),
                    width: w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                            fontSize: 70,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "plese login into your account",
                          style: TextStyle(
                            fontSize : 20,
                            color: Colors.grey[500]
                          ),
                        )
                      //end of text greeting
                        ,
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
                            decoration: InputDecoration(
                              hintText: "Enter your Email",
                              prefixIcon: Icon(Icons.email, color: Colors.green,),
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
                            decoration: InputDecoration(
                              hintText: "Enter your Password",
                              prefixIcon: Icon(Icons.password_sharp , color: Colors.green,),
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
                        Row(
                          children: [
                            Expanded(child: Container(),),
                            Text(
                          "Forgot your password ?",
                          style: TextStyle(
                            fontSize : 20,
                            color: Colors.grey[500]
                          ),
                        )
                            
                            ],
                        )
                        
                      ],
                    ),
                  )
                  ,
                  SizedBox(height: 70,), 
                   Container(
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
                            "Log in",
                            style: TextStyle(
                              fontSize : 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                          ),
                    ),
                  ) ,
                
                SizedBox(height: w*0.05,),

                RichText(text: TextSpan(
                  text: "don't have an accont ?",
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 20,
                  ),
                  children: [
                    TextSpan(
                      text: "Create",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      )
                      ,
                      //to route the user into register page ;
                      recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>Register())
                    )
                  ]
                ))
                ],
              ),  


    );
  }
}