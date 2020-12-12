program main
  implicit none
  integer(2) i, j
  integer(2), parameter :: n=3
  real(8) :: amat(n,n), vec(n), tvec(n)

  open(1, file='alat.dat', action='read', status='old')
  open(2, file='vec.dat', action='read', status='old')
  do i=1, n
    read(1,*) (amat(i,j), j=1,3)
    write(*,*) (amat(i,j), j=1,3)
  end do
  close(1)
  read(2,*) (vec(j), j=1,n)
  write(*,*) (vec(j), j=1,n)
  close(2)
  tvec=0.0d0
  do i=1,n
     do j=1,n
       tvec(i) = tvec(i)+amat(j,i)*vec(j)
     end do
   end do
  write(*,*) (tvec(i), i=1,n)


end program main
