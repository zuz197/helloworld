import 'package:flutter/material.dart';

class myplace extends StatelessWidget {
  const myplace({super.key});

  @override
    Widget build(BuildContext context){
        return Scaffold(
          body:Column(
            children: [
              block1(),block2(),block3(),block4()

            ],
          ),
        );
    }
  Widget block1(){
    var src="https://images.unsplash.com/photo-1722917123868-f6e4a2d29652?q=80&w=792&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";
    
    return Image.network(src);
  }
  Widget block2(){
    return Padding(
     
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Thành phố Huế",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text("Phường Kim Trà"),
            ],
          ),
          Row(
            children: const [
              Icon(Icons.star, color: Colors.grey),
              SizedBox(width: 4),
              Text("41"),
            ],
          ),
        ],
      ),
    );
  }
  Widget block3(){
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
        Column(children: [
          Icon(Icons.phone, color:Colors.blue),
          Text("CALL", style: TextStyle(color:Colors.blue))
        ],
        ),
        Column(children: [
          Icon(Icons.navigation,color:Colors.blue),
          Text("ROUTE",style: TextStyle(color: Colors.blue))
        ],
        ),
        Column(children: [
          Icon(Icons.share),
          Text("SHARE",style:TextStyle(color:Colors.blue))
        ],
        ),
      ],
    ),
    );
  }
  Widget block4(){
    var data="Chúng tôi,quân nhân trong quân đội nhân dân Việt Nam,lấy danh dự người chiến sĩ cách mạng,xin thề dưới lá cờ vinh quang của Tổ quốc";
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Text(data),
    );
  }
}