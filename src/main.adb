With Ada.Text_Io; Use Ada.Text_Io;
With Convert; Use Convert;


Procedure Main Is
   
   My_String:String:="192.168.23.45";
   My_Ipv4:Ipv4_Type;

Begin

   Put_Line(My_String);
 
   My_Ipv4:=StringToIpv4(My_String);
 
   Put(Octet_Type'Image(My_Ipv4(1)));
   Put(".");
   Put(Octet_Type'Image(My_Ipv4(2)));
   Put(".");
   Put(Octet_Type'Image(My_Ipv4(3)));
   Put(".");
   Put(Octet_Type'Image(My_Ipv4(4)));
 
End Main;
