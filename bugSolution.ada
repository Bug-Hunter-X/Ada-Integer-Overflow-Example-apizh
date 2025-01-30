```ada
function Add_One (X : Integer) return Integer is
begin
  if X = Integer'Last then
     raise Constraint_Error; --Or return Integer'Last;  
  else
     return X + 1;
  end if;
end Add_One;

procedure Main is
   Result : Integer;
begin
   Result := Add_One(5);
   Ada.Text_IO.Put_Line(Integer'Image(Result));
   begin
     Result := Add_One(Integer'Last);
     Ada.Text_IO.Put_Line(Integer'Image(Result));
   exception
     when Constraint_Error =>
       Ada.Text_IO.Put_Line("Integer Overflow");
   end;
end Main;

--Alternative solution using a larger type
function Add_One_Long (X : Integer) return Long_Integer is
begin
  return Long_Integer(X) + 1;
end Add_One_Long;
```