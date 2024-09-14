import 'package:get/get.dart';

class FavoriteController extends GetxController{

final RxSet<int> favorites =<int>{1,2,3 }.obs;
void addtofavorites(int id){

  favorites.add(id);

}

void removefavorites(int id){

  favorites.remove(id);
}

bool isFavorite(int id){

  return favorites.contains(id);
}
 }
