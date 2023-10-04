class Restaurants {
  String name;
  String address;
  String rating;
  String timeOperation;
  String phone;
  String imageAssets;
  List<String> imageUrl;

  Restaurants(
      {required this.name,
      required this.address,
      required this.rating,
      required this.timeOperation,
      required this.phone,
      required this.imageAssets,
      required this.imageUrl});
}

var restaurantsList = [
  Restaurants(
      name: 'Mie Gacoan',
      address:
          'Jl. Perum Griya Madukoro Asri, Bumireso, Kec. Wonosobo, Kab. Wonosobo, Jawa Tengah 56317',
      rating: '4.3',
      timeOperation: '08.00 - 23.00',
      phone: '081393832267',
      imageAssets: 'images/mie-gacoan.jpg',
      imageUrl: [
        'https://assets.pikiran-rakyat.com/crop/0x288:1080x1028/x/photo/2021/11/14/2111694223.jpg',
        'https://assets.pikiran-rakyat.com/crop/0x0:0x0/750x500/photo/2021/12/07/1065078900.jpg', 
        'https://bontangpost.id/wp-content/uploads/2020/01/ceker-setan.jpg'
      ]),
  Restaurants(
      name: 'Dapur Cuilik',
      address: 'Jl. Mayjen Bambang Sugeng No.2, Bumireso, Kec. Wonosobo, Kab. Wonosobo, Jawa Tengah 56351',
      rating: '4.5',
      timeOperation: '08.00 - 16.00',
      phone: '08213763281',
      imageAssets: 'images/dapur-cuilik.jpg',
      imageUrl: [
        'https://i0.wp.com/i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/7f104978-dbe5-497b-bdfb-29e31fbc5d21_Go-Biz_20220815_183746.jpeg',
        'https://i0.wp.com/i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/1efd299a-db9f-40d4-b6e9-973ee536bd3c_GENERIC_RESTAURANT_IMAGE.jpg', 
        'https://www.kabarsumbar.com/wp-content/uploads/2021/03/maxresdefault-1-e1615990626700.jpg'
      ]),
  Restaurants(
      name: 'Mie Ongklok Longkrang',
      address: 'Jl. Pasukan Ronggolawe No.14, Kec. Wonosobo, Kab. Wonosobo, Jawa Tengah 56311',
      rating: '4.5',
      timeOperation: '09.00 - 22.00',
      phone: '081802774111',
      imageAssets: 'images/mie-ongklok-longkrang.jpg',
      imageUrl: [
        'https://phinemo.com/wp-content/uploads/2017/06/mie-ongklok-longkrang.jpg',
        'https://imgcdn.solopos.com/@space/2023/03/Mi-Ongklok-Khas-Wonosobo.jpg',
        'https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEjFRZtemDbEQmlYpNA2Qf0DQL6Fc8cAtkW4Z-Ki9LsqbYCow6hc3Tl3StAferU0ABT-uM8IaXZm0X1aRdA0rpjZ-CMt0esY5twYbqtfvUWwXlOkyKbw6NTpwGJ-GQFXyQrhw_ccLHNR8Yxc8dX0YNGA6nLW_PDAX7qQihXFfn_q7kWzfAgxjuGQqjL0/s620/Mie%20ongklok_024.JPG'
      ]),
  Restaurants(
      name: 'Resto Ongklok',
      address: 'Jl. Dieng, Kalianget, Kec. Wonosobo, Kabupaten Wonosobo, Jawa Tengah 56319',
      rating: '4.1',
      timeOperation: '10.00 - 22.00',
      phone: '08122794668',
      imageAssets: 'images/resto-ongklok.jpg',
      imageUrl: [
        'https://cdn-2.tstatic.net/travel/foto/bank/images/kedai-mi-ongklok-di-dieng.jpg',
        'https://cdn.idntimes.com/content-images/community/2019/06/52933111-1121607411344867-3021216309387744130-n-69101df62d44b43cfffb64c01aa22503.jpg',
        'https://phinemo.com/wp-content/uploads/2017/06/resto-ongklok.jpg'
      ]),
  Restaurants(
      name: 'Bunto\'s Chicken',
      address:
          'Jl. A. Yani No.40, Wonosobo Timur, Kabupaten Wonosobo, Jawa Tengah 56311',
      rating: '4.0',
      timeOperation: '08.00 - 20.45',
      phone: '(0286) 325222',
      imageAssets: 'images/bunto-chicken.jpg',
      imageUrl: [
        'https://media-cdn.tripadvisor.com/media/photo-s/1b/3b/cf/3c/bunto-s-chicken-wonosobo.jpg',
        'https://tmbl.nyc3.cdn.digitaloceanspaces.com/food96/zGaruEpGdRy4bR4H.jpeg',
        'https://10619-2.s.cdn12.com/rests/original/102_397542631.jpg'
      ]),
  Restaurants(
      name: 'La Vintage',
      address:
          'Jl. A. Yani, Singkir, Jaraksari, Kec. Wonosobo, Kabupaten Wonosobo, Jawa Tengah 56313',
      rating: '5.0',
      timeOperation: '09.00 - 21.00',
      phone: '08562776624',
      imageAssets: 'images/la-vintage.jpg',
      imageUrl: [
        'https://radarlampung.disway.id/upload/f4daaa4ea2e9f3c9f255ff91c6a86ade.jpg',
        'https://i0.wp.com/i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/79cd9ca0-b6e7-4eb3-b10e-3496579b6c11_Go-Biz_20220609_095210.jpeg',
        'https://www.samin-news.com/wp-content/uploads/2023/01/IMG-20230116-WA0008.jpg'
      ]),
  Restaurants(
      name: 'Soto Bening Pororojo',
      address: 'Jl. Lurah Sudarto, Mudal, Kec. Mojotengah, Kab. Wonosobo, Jawa Tengah 56318',
      rating: '4.3',
      timeOperation: '07.00 - 20.00',
      phone: '085230988122',
      imageAssets: 'images/soto-pororojo.jpg',
      imageUrl: [
        'https://media-cdn.yummyadvisor.com/store/85695384-47dc-4aa6-bd65-14862ec5c68f.jpg',
        'https://assets.ayobandung.com/crop/0x0:0x0/750x500/webp/photo/2023/05/28/Soto-Cemara-3772000790.jpg',
        'https://cdn.idntimes.com/content-images/post/20220712/download-6-01bdfe797da4607d0f42000a9b75364b.jpg'
      ])
];
