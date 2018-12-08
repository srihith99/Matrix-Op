subroutine find_pivot(a,b,n,stepcount)
    implicit none
    integer,intent(in)::n,stepcount
    real,dimension(n,n),intent(inout)::a
    real,dimension(n),intent(inout)::b
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
    do m=stepcount,n
    variable=a(l,m)
    a(l,m)=a(pivotrow,m)
    a(pivotrow,m)=variable
    end do
    variable=b(l)
    b(l)=b(pivotrow)
    b(pivotrow)=variable
    pivot=a(pivotrow,pivotcolumn)
    exit
    end if
    end do
    end if
end subroutine find_pivot
