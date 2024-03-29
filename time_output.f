c-----------------------------------------------------------------------
c
      subroutine time_output
      include 'parameter.inc'
      include 'surface.inc'
      include 'field.inc'

      do l=1,ms
        do m=0,ns
          write(16,100)t,xsc(l),ysc(l),
     .                 xsct(l),ysct(l),theta(l)
       enddo
      enddo
100   format(1x,20e16.6)

c     store data of iterations used per RK4
      write(87,*)t,IterSum

c     store data of drag and lift
      call draglift
      write(86,100)t,(cd(l),cl(l),l=1,ms)

c     store data of points inside or outside of objects
c      do j=0,ny+1
c        do i=0,nx+1
c           if(IOxcyc(i,j).ne.0) then 
c             write(96,100)xc(i),yc(j),IOxcyc(i,j)
c           endif
c        enddo
c      enddo
c      do j=-1,ny+1
c        do i=0,nx+1
c          if(IOxcye(i,j).ne.0) then 
c             write(97,100)xc(i),ye(j),IOxcye(i,j)
c           endif
c        enddo
c      enddo
c      do j=0,ny+1
c        do i=-1,nx+1
c          if(IOxeyc(i,j).ne.0) then
c            write(98,100)xe(i),yc(j),IOxeyc(i,j)
c          endif
c        enddo
c      enddo
      return
      end


c-----------------------------------------------------------------------
