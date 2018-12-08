subroutine elimination(a,n)
    implicit none
    integer,intent(in)::n
    real,dimension(n,n+1),intent(inout)::a
    integer::stepcount,pivotrow,pivotcolumn,rowcount,columncount
    real::pivot,factor
    do stepcount=1,n-1,1
        pivotrow=stepcount
        pivotcolumn=stepcount
        call find_pivot(a,n,stepcount)
        pivot=a(pivotrow,pivotcolumn)
        do rowcount=pivotrow+1,n
            factor=a(rowcount,pivotcolumn)/pivot
            do columncount=pivotcolumn,n+1
            a(rowcount,columncount)=a(rowcount,columncount)-factor*a(pivotrow,columncount)
            end do
            end do
            end do
end subroutine elimination
