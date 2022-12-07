import 'package:shopping/Model/models.dart';

final Roles=[
  TB_Role(1, "Admin"),
  TB_Role(2, "Shoper"),
  TB_Role(3, "User"),
];
final Usersmodel=[
  TB_User(1,"معتز البر",1,8890998,"Detailes","images/r0.webp","Alsheher","MB123","112233"),
  TB_User(2,"شالم علي",2,8890998,"Detailes","images/r4.webp","Alsheher","MB12","112233"),
  TB_User(3,"فؤاد محمد",2,8890998,"Detailes","images/r1.webp","GHile","MB13","112233"),
  TB_User(4,"عبدالله غيثان",2,8890998,"Detailes","images/r3.webp","MUKALL","MB1","112233"),
  TB_User(5,"علي محمد",3,8890998,"Detailes","images/r2.webp","Alsheher","MB","112233"),
  TB_User(6," علي",2,8890998,"Detailes","images/r6.webp","Alsheher","MB1324","112233"),
  TB_User(7," محمد",2,8890998,"Detailes","images/r5.webp","GHile","MB133","112233"),
  TB_User(8," غيثان",2,8890998,"Detailes","images/r7.webp","MUKALL","MB13","112233"),


];
final Itemsmodel=[
  TB_Item(1, 2,1 ,"Tomats", 1200, "This us Tomates", "images/f1.jpg"),
  TB_Item(2, 2,1, "frage", 700, "This us ff", "images/f2.jpg"),
  TB_Item(3, 2,6, "Know", 1300, "This us w", "images/f3.jpg"),
  TB_Item(4, 2,5, "Chere", 1400, "This wates", "images/f4.jpg"),
  TB_Item(5, 2,4, "js", 2200, "Thrres", "images/f5.jpg"),
  TB_Item(6, 3,4, "draf", 1200, "This us Tomates", "images/r3.webp"),
  TB_Item(7, 3,2, "frash", 700, "This us ff", "images/r2.webp"),
  TB_Item(8, 3,4, "petze", 1300, "This us w", "images/r4.webp"),
  TB_Item(9, 3,2, "car", 1400, "This wates", "images/r5.webp"),
  TB_Item(10, 3,3, "omg", 2200, "Thrres", "images/r7.webp"),
  TB_Item(10, 1,2, "exr", 2200, "Thrres", "images/food.png"),
];
final Likesmodel=[
  TB_Likes(1, 1, 1),
  TB_Likes(2, 2, 1),
  TB_Likes(3, 3, 1),
  TB_Likes(4, 4, 1),
  TB_Likes(5, 2, 2),
  TB_Likes(5, 2, 3),

];
final faverot=[
  TB_Faverote(1, 1, 1),
  TB_Faverote(3, 3, 1),
  TB_Faverote(4, 4, 1),
  TB_Faverote(5, 2, 2),
  TB_Faverote(5, 2, 4),
];
final Categorymodel=[
  TB_Category(1, "كهربئيات", "images/electronic.jfif"),
  TB_Category(2, "سيارات", "images/cars.jfif"),
  TB_Category(3, "معدات", "images/tools.png"),
  TB_Category(4, "عقارات", "images/home.jfif"),
  TB_Category(5, "قطع غيار", "images/parts.png"),
  TB_Category(6, "هواتف", "images/phons.webp"),
  TB_Category(7, "ملابس وموضة", "images/clothes.png"),
  TB_Category(8, "وظائف", "images/job.jpg"),
  TB_Category(9, "الاثاث والديكور", "images/furniture.png"),
  TB_Category(10, "المطبخ والمطاعم", "images/food.png"),
  TB_Category(11, "الالعاب", "images/plays.webp"),
  TB_Category(12, " الصحةوالرياضة", "images/play.png"),
  TB_Category(13, "المناسبات والهدايا", "images/gift.png"),
  TB_Category(14, "حيوانات", "images/anmial.jfif"),
  TB_Category(15, "اخرى", "images/other.png"),
];
final Alertsmodel=[
  TB_Alerts(1,1,2,"19:10:10 22/12/2022","This is message",false),

  TB_Alerts(2,3,2,"19:10:10 22/12/2022","This is message2",true),
  TB_Alerts(3,1,3,"19:10:10 22/12/2022","This is message3",false),
  TB_Alerts(4,1,4,"19:10:10 22/12/2022","This is message4",false),
  TB_Alerts(5,1,4,"19:10:10 22/12/2022","This is message5",false),
  TB_Alerts(6,1,5,"19:10:10 22/12/2022","This is message6",false),
  TB_Alerts(7,2,3,"19:10:10 22/12/2022","This is message to 3",false),
];