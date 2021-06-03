import 'package:get/get.dart';
//get category from database
//.1 image
//.2 name
// go to category_model
class HomeViewModel extends GetxController{
  //List<CategoryModel> get categoryModel  => _categoryModel
  //list<CategoryModel> _categoryModel = [];
  //final CategoryR _category = ------.collection('Category');
  HomeViewModel(){
    getCategory();
  }
  getCategory()async {
    //_category.get().then(value) {
    //for(int 1 = 0; i < value .docs.length ; ++){ _categoryModel.add( CategoryModel.fromJson(value.docs[i].data());
    //}
    //update();
    //});
  }
}