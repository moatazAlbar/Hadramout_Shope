class TB_Role{
  final int IdRole;
  final String RoleName;
  TB_Role(this.IdRole, this.RoleName);
}
class TB_User{
  final int IdUser;
  final String FullName;
  final int RoleId;
  final int Number;
  final String Detailes;
  final String Picutre;
  final String Location;
  final String UserName;
  final String Password;
  TB_User(this.IdUser, this.FullName, this.RoleId, this.Number, this.Detailes, this.Picutre, this.Location, this.UserName, this.Password);
}
class TB_Item{
  final int IdItem;
  final int UserId;
  final int IdCategory;
  final String FullName;
  final int Price;
  final String Detailes;
  final String Picutre;
  TB_Item(this.IdItem, this.UserId,this.IdCategory ,this.FullName, this.Price, this.Detailes, this.Picutre);
}

class TB_Likes{
  final int Id_Likes;
  final int UsersId;
  final int CategoryId;
  TB_Likes(this.Id_Likes, this.UsersId, this.CategoryId);
}
class TB_Faverote{
  final int Id_Faverote;
  final int UsersId;
  final int CategoryId;
  TB_Faverote(this.Id_Faverote, this.UsersId, this.CategoryId);
}
class TB_Category{
  final int Id_Category;
  final String Name;
  final String Picure;
  TB_Category(this.Id_Category, this.Name, this.Picure);
}
class TB_Alerts{
  final int IdAlert;
  final int IduserSend;
  final int IduserRecive;
  final String Message;
  final bool Reed;
  final String dateTime;
  TB_Alerts(this.IdAlert, this.IduserSend, this.IduserRecive,this.dateTime, this.Message,this.Reed);
}