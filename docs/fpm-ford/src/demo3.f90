program demo3
!!  @(#) example of **basic** use using just the bare essentials
use M_CLI2,  only : set_args, get_args
implicit none
integer                      :: x, y
logical                      :: l
real                         :: size
character(len=:),allocatable :: title
   call set_args('-x 1 -y 10 --size 12.34567  -l F --title "my title"')
   call get_args('x',x, 'y',y,'l',l, 'size',size) ! all the non-allocatables
   call get_args('title',title)
   ! Done. all variables set and of the right type
   write(*,'(*("[",g0,"]":,1x))')x,y,size,l,title
end program demo3
