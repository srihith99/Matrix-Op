subroutine substitution(a,b,n,L,k)
    implicit none
    integer,intent(in)::n
    real,dimension(n,n),intent(in)::a,L
    real,dimension(n),intent(in)::b
    real,dimension(n),intent(out)::k
    real,dimension(n)::y
    integer::rowcount,columncount
    real::summ=0
    y(1)=b(1)/L(1,1)
    do rowcount=2,n,1
        do columncount=1,rowcount-1,1
            summ=summ+L(rowCount,columncount)*y(columncount)
        end do
        y(rowcount)=(b(rowcount)-summ)/L(rowcount,rowcount)
        summ=0.00
    end do
    k(n)=y(n)/a(n,n)
    do rowcount=n-1,1,-1
        do columncount=n,rowcount+1,-1
            summ=summ+a(rowcount,columncount)*k(columncount)
        end do
        k(rowcount)=(y(rowcount)-summ)/a(rowcount,rowcount)
        summ=0.00
    end do
end subroutine substitution
