With Tokenize;


Package Body Convert Is


Function StringToIpv4(My_String:String) Return Ipv4_Type Is

My_Vector : Tokenize.String_Vector_Type;
My_Ipv4   : Ipv4_Type;

Begin

My_Vector:=Tokenize.Tokenize(My_String , ".");

For I In My_Vector.First_Index .. My_Vector.Last_Index Loop

   My_Ipv4(I):=integer'Value(My_Vector.Element (Index => I));

End Loop;

Return  My_Ipv4;


End StringToIpv4;


End Convert;
