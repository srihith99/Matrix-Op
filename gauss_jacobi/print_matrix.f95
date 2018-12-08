subroutine print_matrix(a,r,c)
    implicit none
    integer,intent(in)::r,c
    real,dimension(r,c),intent(out)::a
    integer::rowcount,columncount
    10 format(f17.8)
    do rowcount=1,r
    do columncount=1,c
    write(*,10,advance='no')a(rowcount,columncount)
    end do
    print*,
    end do
end subroutine print_matrix
