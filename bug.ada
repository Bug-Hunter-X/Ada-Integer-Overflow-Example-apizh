```ada
function Add_One (X : Integer) return Integer is
begin
  return X + 1;
end Add_One;

procedure Main is
   Result : Integer;
begin
   Result := Add_One(5);
   Ada.Text_IO.Put_Line(Integer'Image(Result));
   -- The following line is incorrect, it will raise Constraint_Error exception if the value of result is larger than the max integer value.
   Result := Add_One(Integer'Last);
end Main;
```