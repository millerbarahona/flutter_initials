import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class ListViewBuilderScreen extends StatefulWidget {
   
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {

  final List<int> imagesIds = [1,23,4,5,6,7,8,9,10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {     // es el primer paso en el ciclo de vida de un widget en flutter 
    super.initState();

    scrollController.addListener(() { //le agregamos un addlistener para oír todos sus cambios
      //print('${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');
      if ((scrollController.position.pixels +500) >=scrollController.position.maxScrollExtent){
        //add_10();
        fetchData();
      }
    });
  }

  Future fetchData() async{

    if( isLoading ) return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));
    add_10();
    
    isLoading = false;
    setState(() {});
    if(scrollController.position.pixels + 100 <= scrollController.position.maxScrollExtent) return;
    
    scrollController.animateTo(
      scrollController.position.pixels + 120,
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn
    );
  }

  void add_10 () {
    final lastId = imagesIds.last;
    imagesIds.addAll([1,2,3,4,5,6,7,8,9,10].map((e) => lastId+e)); //agregarle 10 elementos 
    setState(() {});
  }

  Future<void> onRefresh () async{
    await Future.delayed(const Duration(seconds: 2));
    int lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    add_10();    
  }

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size; //contiene el ancho y el alto de la pantalla

    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primaryColor,
              onRefresh: onRefresh,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(), //efecto ios para las listas
                controller: scrollController,
                itemCount: imagesIds.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: const AssetImage('assets/jar-loading.gif'),
                    image: NetworkImage('https://picsum.photos/500/300?image=${imagesIds[index]}')
                  );
                },
              ),
            ),

            if ( isLoading )
              Positioned( //widget para posicionar el child donde se quiera
                bottom: 40,
                left: size.width * 0.5 - 30,
                child: const _LoadingIcon()
              )
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 60,
      height: 60,      
      child: const CircularProgressIndicator( color: AppTheme.primaryColor),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        shape: BoxShape.circle
      ),
    );
  }
}