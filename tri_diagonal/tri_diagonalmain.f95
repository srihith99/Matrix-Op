program tri_diagonalmain
    implicit none
    double precision a(5),b(5),c(4),d(5),x(5)
    integer::n,i  !here n denotes no of variables
    n = 5
    data (a(i), i=1,5) /0, -1, -1, -1, -1/  !here a denotes sub-diagonal
    data (b(i), i=1,5) /3, 3, 3, 3, 3/      !here b denotes the main diagonal
    data (c(i), i=1,4) /-1, -1, -1, -1/     !here c denotes sup-diagonal
    data (d(i), i=1,5) /2, 1, 1, 1, 2/      !here d denotes right part
   call solve_tridiagonal(a,b,c,d,x,n)      !here x denotes the answer
   print*,"The value of x",x
   end program tri_diagonalmain
    subroutine solve_tridiagonal(a,b,c,d,x,n)
      implicit none
        integer,intent(in) :: n
        real(8),dimension(n),intent(in) :: a,b,c,d
        real(8),dimension(n),intent(out) :: x
        real(8),dimension(n) :: cp,dp       ! cp = c-prime , dp = d-prime
        real(8) :: m
        integer i
        cp(1) = c(1)/b(1)                   !solving c-p & d-p
        dp(1) = d(1)/b(1)
         do i = 2,n
           m = b(i)-cp(i-1)*a(i)            !solving successive c-p & d-p
           cp(i) = c(i)/m
           dp(i) = (d(i)-dp(i-1)*a(i))/m
         enddo
         x(n) = dp(n)                       !solving for x
        do i = n-1, 1, -1
          x(i) = dp(i)-cp(i)*x(i+1)         !solving for x from c-p and d-p
        end do
end subroutine solve_tridiagonal
