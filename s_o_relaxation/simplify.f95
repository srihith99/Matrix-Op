subroutine simplify(a,k,n)
    implicit none
     integer,intent(in)::n
    real,dimension(n,n+1),intent(in)::a
    real,dimension(n),intent(inout)::k
    real,dimension(n)::X
    integer::m,l,key=1
    real::summ=0,TOL=0.0000001
    do while(key.eq.1)
      key=0
     do l=1,n
       summ=0
        do m=1,n
         if(m.ne.l) then
         summ=summ+a(l,m)*x(m)
        end if
        end do
        X(l)=k(l)
        k(l)=(a(l,n+1)-summ)/a(l,l)
       if(abs(k(l)-X(l)).ge.TOL) then
         key=1
      end if
      end do
      do l=1,n
      k(l)=(1.500)*k(l)-(0.500)*X(l)
      end do
    end do
end subroutine simplify
