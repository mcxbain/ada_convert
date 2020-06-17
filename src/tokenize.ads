-----------------------------------------------------------------------------
-- Tokenize Example
-----------------------------------------------------------------------------
--   with Ada.Text_IO; use Ada.Text_IO;
--   with Tokenize;
--
--   procedure Main is
--
--   My_Vector : Tokenize.String_Vector_Type;
--   EOL       : String(1..1) := (1 => ASCII.EOL);   -- End of File Character
--   LF        : String(1..1) := (1 => ASCII.LF);    -- End of Line Character
--
--   begin
--
--   My_Vector:=Tokenize.Tokenize("192#168#0#1" , "#");
--   Tokenize.PrintVector(My_Vector);
--
--   end Main;
-----------------------------------------------------------------------------

with Ada.Containers.Indefinite_Vectors;
use Ada.Containers;

package Tokenize is

package Vector_Container   is new Indefinite_Vectors(Index_Type => Positive, Element_Type => String);
subtype String_Vector_Type is Vector_Container.Vector;

function Tokenize (My_String:in String; Delimiter:in String) return String_Vector_Type;

procedure PrintVector(My_Vector:in String_Vector_Type);


end Tokenize;
