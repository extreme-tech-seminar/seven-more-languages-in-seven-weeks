function ends_in_3(n)
   return n % 10 == 3
end

function is_prime(n)
   if n == 1 then return false
   elseif n < 4 then return true
   elseif n % 2 == 0 then return false
   elseif n < 9 then return true
   elseif n % 3 == 0 then return false
   else
      local f = math.sqrt(n)
      function checkprime(x)
         return (n % x == 0) or (n % (x + 2) == 0)
      end
      local i = 5
      while math.floor(f) >= i do
         if checkprime(i) then return false end
         i = i + 6
      end
      return true
   end
end

function first_primes_ending_in_3(n)
   local results = 0
   local i = 1
   while results < n do
      if ends_in_3(i) and is_prime(i) then
         print(i)
         results = results + 1
      end
      i = i + 1
   end
end
