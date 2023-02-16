! simple quadratic solver in Fortran 95
! Hayden Walker, 2023-02-03

program quadratic

real :: a, b, c, determinant

! get input
print *, 'ax^2 + bx + c = 0'
print *, 'enter a, b, and c:'
read *, a, b, c

! the determinant: b^2 - 4ac
determinant = b ** 2 - 4 * a * c

! two roots if determinant is greater than 0
if (determinant > 0) then
    print *, 'two real roots:'
    print *, (-1 * b + determinant ** 0.5) / (2 * a)
    print *, (-1 * b - determinant ** 0.5) / (2 * a)

! one root if 0
else if (determinant == 0) then
    print *, 'one real root:'
    print *, (-1 * b) / (2 * a)

! no roots if less than 0
else
    print *, 'no real roots.'

end if

end program quadratic