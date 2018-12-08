subroutine find_pivot(a,n,stepcount)
    implicit none
    integer,intent(in)::n,stepcount
    real,dimension(n,2*n+1),intent(inout)::a
    integer::pivotrow,pivotcolumn,l,m
    real::pivot,variable
    pivotrow=stepcount
    pivotcolumn=stepcount
    pivot=a(pivotrow,pivotcolumn)
    if(pivot.eq.0) then
    do l=stepcount+1,n
    if(a(l,pivotcolumn).eq.0) then
    continue
    else
    do m=stepcount,2*n+1
    variable=a(l,m)
    a(l,m)=a(pivotrow,m)
    a(pivotrow,m)=variable
    end do
    pivot=a(pivotrow,pivotcolumn)
    exit
    end if
    end do
    end if
end subroutine find_pivot
