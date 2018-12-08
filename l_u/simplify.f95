subroutine simplify(a,b,n,L,k)
    implicit none
    integer,intent(in)::n
    real,dimension(n,n),intent(inout)::a
    real,dimension(n),intent(inout)::b
    real,dimension(n,n),intent(inout)::L
    real,dimension(n),intent(out)::k
    real::pivot,factor
    integer::pivotrow,pivotcolumn,stepcount
    integer::rowcount,columncount
    do stepcount=1,n-1,1
        pivotrow=stepcount
        pivotcolumn=stepcount
        call find_pivot(a,b,n,stepcount)
        pivot=a(pivotrow,pivotcolumn)
        do rowcount=pivotrow+1,n
            factor=a(rowcount,pivotcolumn)/pivot
            L(rowcount,pivotcolumn)=factor
            do columncount=pivotcolumn,n
                a(rowcount,columncount)=a(rowcount,columncount)-factor*a(pivotrow,columncount)
            end do
        end do
    end do
    do rowcount=1,n
        do columncount=rowcount,n
            if(rowcount.eq.columncount) then
                L(rowcount,columncount)=1.00
            else
                L(rowcount,columncount)=0.00
            end if
        end do
    end do
    call substitution(a,b,n,L,k)
end subroutine simplify
