c1 + c2 * t + c3*(t^2) = y

A' * A * c = A' * b

c = (A' * A) \ (A' * b)
c = A\b
rasp = c(1,:) + c(2,:) .* A(:,2) +  c(3,:) .* A(:,3)

err = b - rasp

remp = norm(err) / sqrt(length(b))



A(:, 3) = x0 .^2

A =

     1     0     0
     1     1     1
     1     2     4
     1     3     9
     1     4    16
     1     5    25
     1     6    36
     1     7    49
     1     8    64
     1     9    81

A(:, 4) = x0 .^3

A =

     1     0     0     0
     1     1     1     1
     1     2     4     8
     1     3     9    27
     1     4    16    64
     1     5    25   125
     1     6    36   216
     1     7    49   343
     1     8    64   512
     1     9    81   729

c = (A' * A) \ (A' * y0)

c =

   66.5455
    2.4601
   -0.3182
    0.0182

ans  =  c(1,:) + c(2,:) .* A(:,2) + c(3, :) .* A(:, 3) + c(4, :) .* A(:, 4)

ans =

   66.5455
   68.7057
   70.3386
   71.5537
   72.4601
   73.1672
   73.7842
   74.4204
   75.1851
   76.1876

err = y0 - ans

err =

    0.5065
   -0.6977
   -0.5356
    0.4703
    0.9399
   -1.1042
    0.8848
    0.0666
   -1.1201
    0.5894

remp = norm(err) / sqrt(length(y0))

remp =

    0.7578