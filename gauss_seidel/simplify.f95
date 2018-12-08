subroutine simplify(a,k,n)
    implicit none
    integer,intent(in)::n
    real,dimension(n,n+1),intent(in)::a
    real,dimension(n),intent(inout)::k
    real::summ,variable,TOL=0.0000001
    integer::l,m,key=1
    do while(key.eq.1)
        key=0
        do l=1,n
            summ=0
            do m=1,n
                if(m.ne.l) then
                    summ=summ+a(l,m)*k(m)
                end if
            end do
            variable=k(l)
            k(l)=(a(l,n+1)-summ)/a(l,l)
         if(abs(k(l)-variable).ge.TOL) then
              key=1
        end if
   end do
   end do
end subroutine simplify
