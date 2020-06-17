-----------------------------------------------------------------------------
-- Convert Example
-----------------------------------------------------------------------------
--   with Ada.Text_IO; use Ada.Text_IO;
--
--   procedure Main is
--
--   My_String:String:="192.168.23.45";
--   My_Ipv4:Ipv4_Type;

--   Begin

--   Put_Line(My_String);
 
--   My_Ipv4:=StringToIpv4(My_String);
 
--   Put(Octet_Type'Image(My_Ipv4(1)));
--   Put(".");
--   Put(Octet_Type'Image(My_Ipv4(2)));
--   Put(".");
--   Put(Octet_Type'Image(My_Ipv4(3)));
--   Put(".");
--   Put(Octet_Type'Image(My_Ipv4(4)));
--
--   end Main;
-----------------------------------------------------------------------------

Package Convert Is


    -- Octet Type For Ipv4 Internet Address    
    Subtype Octet_Type  Is Integer Range 0 .. 255;
    
    -- Ipv4 Internet Address Type 
    Type Ipv4_Type Is Array (Integer Range 1 ..4) Of Octet_Type;
   
    -- Convert String Type To Ipv4 Internet Address Type 
    Function StringToIpv4(My_String : in String) Return Ipv4_Type;
   
   
End Convert;
