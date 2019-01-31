import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: 'Data Transfer',
    home: ProductList(
      products: List.generate(
        20,
          (i)=>Product('Product $i', 'This is product :$i')
      ),
    )
  ));
}
class Product{
  String title;
  String description;
  Product(this.title, this.description);
}

class ProductList extends StatelessWidget{

  List<Product> products;


  ProductList({Key key, this.products}):super(key:key);

  @override
  Widget build(BuildContext context) {
   return  Scaffold(
      appBar: AppBar(title: Text('Product Sample'),),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(products[index].title),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context)=> new ProductDetail(product: products[index])
                )
              );

            },
          );
        },
      ),
    );
  }

}

class ProductDetail extends StatelessWidget{
  Product product;
  ProductDetail({Key key,@required this.product}):super(key:key);

  @override
  Widget build(BuildContext context) {
   return  new Scaffold(
      appBar: AppBar(
        title: Text('${product.title}'),
      ),

      body: Center(
        child: Text('${product.description}'),
      ),
    );
  }

}