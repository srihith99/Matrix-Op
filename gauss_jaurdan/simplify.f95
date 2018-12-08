subroutine simplify(a,n)
    implicit none
    integer,intent(in)::n
    real,dimension(n,2*n+1),intent(inout)::a
    integer::stepcount,pivotrow,pivotcolumn,rowcount,columncount
    real::pivot,factor
    do stepcount=1,n-1,1
        pivotrow=stepcount
        pivotcolumn=stepcount
        call find_pivot(a,n,stepcount)
        pivot=a(pivotrow,pivotcolumn)
        do rowcount=pivotrow+1,n
            factor=a(rowcount,pivotcolumn)/pivot
            do columncount=pivotcolumn,2*n+1
            a(rowcount,columncount)=a(rowcount,columncount)-factor*a(pivotrow,columncount)
            end do
            end do
            end do
    do stepcount=n,2,-1
        pivotrow=stepcount
        pivotcolumn=stepcount
        pivot=a(stepCount,stepCount)
        do rowcount=pivotrow-1,1,-1
            factor=a(rowcount,stepcount)/pivot
            do columncount=pivotcolumn,2*n+1,1
                a(rowcount,columncount)=a(rowcount,columncount)-factor*a(pivotrow,columncount)
            end do
        end do
    end do
    do stepcount=1,n
        do columncount=2*n+1,1,-1
            a(stepcount,columncount)=a(stepcount,columncount)/a(stepcount,stepcount)
        end do
    end do
end subroutine simplify
