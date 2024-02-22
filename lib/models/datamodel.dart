
class products
{
  String? image;
  String? text;
  String? text1;
  String? ratings;
  String? price;


  products(this.image,this.text,this.text1,this.ratings,this.price);
}

List lis = modelData.map((a) => products(a["image"], a["text"],a["text1"],a["ratings"],a["price"])).toList();

var modelData = [
  {"image":"https://cdn.shopify.com/s/files/1/2627/1860/files/best-instant-coffee-consumer-reports-1_8b62c17f-80ad-490f-9001-911278099929_large.jpg?v=1553220766","text":"Espresso","text1":"With Milk","ratings":"4.3","price":"12.54"},
  {"image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWxC-Td4peftSi12YMTNcWQcCRnsDFBxlMagUimRf2y6ukfq7eYcli-VJ-VYfHMGt_ow4&usqp=CAU","text":"Espresso","text1":"With Cream + Cookies","ratings":"4.2","price":"24.4"},
  {"image":"https://portfoliocoffee.ca/cdn/shop/articles/espresso_Coffee.jpg?v=1657808012","text":"Espresso","text1":"Without Milk","ratings":"4.1","price":"9.43"},
  {"image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK5A_LOjyZ-teG-ypfZdRWJntVbH2zFq5nEf9BegSt3h-iUVHZ7xkI2X5Rb_jr8slOv3I&usqp=CAU","text":"Espresso","text1":"Chocolate Coffee","ratings":"4.7","price":"23.11"},
  {"image":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRiKJ8zPm4H1ZZxCV9V784plmmAwHjXzQNH8cSSWe8KglN3ktAMcrwz6j4Qz7E7QiAPKOI&usqp=CAU","text":"Espresso","text1":"Cold Coffee","ratings":"4.5","price":"20.87"},

];