subroutine back_substitution(a,n,k)
    implicit none
    integer,intent(in)::n
    real,dimension(n,n+1),intent(in)::a
    real,dimension(n),intent(out)::k
    real::summ
    integer::rowcount,columncount
    summ=0
    k(n)=a(n,n+1)/a(n,n)
    do rowcount=n-1,1,-1
    do columncount=n,rowcount+1,-1
    summ=summ+a(rowcount,columncount)*k(columncount)
    end do
    k(rowcount)=(a(rowcount,n+1)-summ)/a(rowcount,rowcount)
    summ=0
    end do
end subroutine back_substitution
