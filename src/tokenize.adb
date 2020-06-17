with Ada.Text_IO; use Ada.Text_IO;

package body Tokenize is

function Tokenize (My_String:in String; Delimiter:in String) return String_Vector_Type is

Result_Vector: String_Vector_Type;
Current_Position:Natural:=1;

begin


for K in 1 .. My_String'Last loop


  --den ersten string
  if(My_String(K..K) = Delimiter) then

    Result_Vector.Append(My_String(Current_Position .. K-1));
    Current_Position:=K+1;

  end if;

  --den letzten string
  if K = My_String'Last then

     Result_Vector.Append (My_String(Current_Position .. K));
     Current_Position := K + 1;

  end if;


end loop;


return Result_Vector;


end Tokenize;



procedure PrintVector(My_Vector:in String_Vector_Type) is

begin

put_line("-------------------------------------------------------------");
put_line("Print Vector");
put_line("-------------------------------------------------------------");

--for I of My_Vector loop
for i in My_Vector.First_Index .. My_Vector.Last_Index loop

put("Line" & Integer'Image(I) & " => ");

put_line(My_Vector.Element (Index => I));

end loop;

put_line("-------------------------------------------------------------");


end PrintVector;

end Tokenize;
