subroutine print_matrix(a,rows,column)
    implicit none
    integer,intent(in)::rows,column
    real,dimension(rows,2*rows+1),intent(out)::a
    integer::rowCount
    10 format(f17.8)
    do rowCount=1,rows
        write(*,10,advance='no')a(rowCount,column)
        print*,
    end do
end subroutine print_matrix
