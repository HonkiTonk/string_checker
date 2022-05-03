pragma Warnings (Off, "*array aggregate*");

package body ContainsOnlyNumbers is
   
   function UnboundedString
     (UnboundedStringExtern : in Ada.Strings.Unbounded.Unbounded_String)
      return Boolean
   is begin
      
      return NormalString (StringExtern => Ada.Strings.Unbounded.To_String (Source => UnboundedStringExtern));
      
   end UnboundedString;
   
   

   function NormalString
     (StringExtern : in String)
      return Boolean
   is begin
      
      case
        StringExtern'Length
      is
         when 0 =>
            return False;
         
         when others =>
            null;
      end case;
      
      StringLoop:
      for StringLoopvalue in StringExtern'Range loop
         
         case
           StringExtern (StringLoopvalue)
         is
            when '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' =>
               null;
            
            when others =>
               return False;
         end case;
            
      end loop StringLoop;
      
      return True;
      
   end NormalString;
   
   
   
   function UnboundedWideString
     (UnboundedWideStringExtern : in Ada.Strings.Wide_Unbounded.Unbounded_Wide_String)
      return Boolean
   is begin
      
      return WideString (WideStringExtern => Ada.Strings.Wide_Unbounded.To_Wide_String (Source => UnboundedWideStringExtern));
      
   end UnboundedWideString;
   
   
      
   function WideString
     (WideStringExtern : in Wide_String)
      return Boolean
   is begin
      
      case
        WideStringExtern'Length
      is
         when 0 =>
            return False;
         
         when others =>
            null;
      end case;
      
      WideStringLoop:
      for WideStringLoopvalue in WideStringExtern'Range loop
         
         case
           WideStringExtern (WideStringLoopvalue)
         is
            when '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' =>
               null;
            
            when others =>
               return False;
         end case;
            
      end loop WideStringLoop;
      
      return True;
      
   end WideString;
   
   
   
   function UnboundedWideWideString
     (UnboundedWideWideStringExtern : in Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String)
      return Boolean
   is begin
      
      return WideWideString (WideWideStringExtern => Ada.Strings.Wide_Wide_Unbounded.To_Wide_Wide_String (Source => UnboundedWideWideStringExtern));
      
   end UnboundedWideWideString;
   
   
   
   function WideWideString
     (WideWideStringExtern : in Wide_Wide_String)
      return Boolean
   is begin
      
      case
        WideWideStringExtern'Length
      is
         when 0 =>
            return False;
         
         when others =>
            null;
      end case;
      
      WideWideStringLoop:
      for WideWideStringLoopvalue in WideWideStringExtern'Range loop
         
         case
           WideWideStringExtern (WideWideStringLoopvalue)
         is
            when '0' | '1' | '2' | '3' | '4' | '5' | '6' | '7' | '8' | '9' =>
               null;
            
            when others =>
               return False;
         end case;
            
      end loop WideWideStringLoop;
      
      return True;
      
   end WideWideString;

end ContainsOnlyNumbers;
