define hierarchy ZMSTUDENT_HR
  as parent child hierarchy (
    source ZMSTUDENT_I
    child to parent association _Mentor
    start where Mentor is initial
    siblings order by Lastname ascending
  )
{
   key Studentid,
   Mentor
    
}
