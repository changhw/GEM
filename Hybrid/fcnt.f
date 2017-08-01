!-----------------------------------------------------------------------
!-----------------------------------------------------------------------

!   Functions, etc.
!   (things that don't change)

!-----------------------------------------------------------------------
!-----------------------------------------------------------------------
!v
      function revers(num,n)

!    function to reverse the digits of num in base n.

      rev = 0.
      inum = num
      power = 1.

   11 continue
      iquot = int(inum/n)
      irem = inum - n*iquot
      power = power/n
      rev = rev + irem*power
      inum = iquot
      if(inum.gt.0) goto 11

      revers = rev
      return
      end


!-----------------------------------------------------------------------


      subroutine srcbes(biz,gam0,gam1)

      REAL(8) :: t1,t2,biz,gam0,gam1	


!.....Calculates gamma nought and gamma 1. (Abramowitz and Stegun).
446   if (biz.gt.3.75) go to 148
      t1=(biz/3.75)**2
      t2=exp(-biz)
      gam0=t2*((((((.0045813*t1+.0360768)*t1+.2659732)*t1+ &
       1.2067492)*t1+3.0899424)*t1+3.5156229)*t1+1.)
      gam1=t2*biz*((((((.00032411*t1+.00301532)*t1+.02658733) &
       *t1+.15084934)*t1+.51498869)*t1+.87890594)*t1+.5)
      go to 149
148   t2=1./sqrt(biz)
      t1=3.75/biz
      gam0=t2*((((((((.00392377*t1-.01647633)*t1+.02635537) &
       *t1-.02057706)*t1+.00916281)*t1-.00157565)*t1+ &
       .00225319)*t1+.01328592)*t1+.39894228)
      gam1=t2*((((((((-.00420059*t1+.01787654)*t1-.02895312) &
       *t1+.02282967)*t1-.01031555)*t1+.00163801)*t1- &
       .00362018)*t1-.03988024)*t1+.39894228)
  149 continue
      return
      end

!-----------------------------------------------------------------------