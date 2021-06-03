import 'package:flutter/material.dart';
import 'package:flutter_shop/constance/constance.dart';
import 'package:flutter_shop/core/view_model/home_view_model.dart';
import 'package:flutter_shop/view/widgets/custom_text.dart';
import 'package:get/get.dart';


class HomeView extends StatelessWidget {
  //static list
  final List<String> names = <String>[
    'Men',
    'Women',
    'Devices',
    'Gadgets',
    'Gaming',
    's',
    's',
    's',
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      builder:(controller) => Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 100,left: 20,right: 20),
            child: Column(
              children:
              [
               _searchTextFormField(),
                SizedBox(height: 30,),
                CustomText(
                  text: 'Categories',
                ),
                SizedBox(height: 30,),
                _listViewCategory(),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:
                  [
                    CustomText(text: 'Best Selling',fontSize: 18,),
                    CustomText(text: 'See all',fontSize: 16,),
                  ],
                ),
                SizedBox(height: 30,),
                _listViewProducts(),
              ],
            ),
          ),
        ),

      ),
    );
  }

  Widget _searchTextFormField() {
    return  Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade200,
      ),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search,color: Colors.black,)
        ),
      ),
    );
  }

  Widget _listViewCategory() {
    return Container(
      height: 102,
      child: ListView.separated(
        physics:BouncingScrollPhysics(),
        itemCount: names.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context , index){
          return Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.shade100,
                ),
                height: 60,
                width: 60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  //Images
                  child: Image.asset('assets/images/Shoe.png'),
                ),
              ),
              SizedBox(height: 20,),
              CustomText(text: names[index],),
            ],
          );
        },
        separatorBuilder: ( context, int index)=>SizedBox(
          width: 20,
        ),
      ),
    );
  }

  Widget _listViewProducts() {
    return Container(
      height: 350,
      child: ListView.separated(
        physics:BouncingScrollPhysics(),
        itemCount: names.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context , index){
          return Container(
            width: MediaQuery.of(context).size.width *.4,

            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey.shade100,
                  ),
                  child: Container(
                    height: 220,
                    width: MediaQuery.of(context).size.width *.4,
                      child: Image.asset(
                          'assets/images/w.png',
                      fit: BoxFit.cover,
                      ),

                  ),
                ),
                SizedBox(height: 6,),
                CustomText(text: 'BeoPlay Speaker',
                alignment: Alignment.bottomLeft,),
                SizedBox(height: 10,),
                CustomText(text: 'BeoPlay Speaker',
                alignment: Alignment.bottomLeft,
                color: Colors.grey,),
                SizedBox(height: 10,),
                CustomText
                  (text: '\$755',
                alignment: Alignment.bottomLeft,
                color: kPrimaryColor,),


              ],
            ),
          );
        },
        separatorBuilder: ( context, int index)=>SizedBox(
          width: 20,
        ),
      ),
    );
  }


}
