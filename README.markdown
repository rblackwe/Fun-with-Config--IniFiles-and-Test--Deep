This is just a proof concept.  I think it might be worth of blogging about someday.
Until then ... this is it.

Example
=======
prove -v test.t
test.t .. 
ok 1 - task b in ini/file_1.ini
ok 2 - task a in ini/file_1.ini
not ok 3 - task d in ini/file_2.ini

#   Failed test 'task d in ini/file_2.ini'
#   at test.t line 17.
# Compared $data->{"status"}
#    got : ''
# expect : 'closed'
not ok 4 - task a in ini/file_2.ini

#   Failed test 'task a in ini/file_2.ini'
#   at test.t line 17.
# Compared $data->{"status"}
#    got : ''
# expect : 'closed'
not ok 5 - task c in ini/file_2.ini

#   Failed test 'task c in ini/file_2.ini'
#   at test.t line 17.
# Compared $data->{"status"}
#    got : ''
# expect : 'closed'
1..5
# Looks like you failed 3 tests of 5.
Dubious, test returned 3 (wstat 768, 0x300)
Failed 3/5 subtests 

Test Summary Report
-------------------
test.t (Wstat: 768 Tests: 5 Failed: 3)
  Failed tests:  3-5
  Non-zero exit status: 3
Files=1, Tests=5,  0 wallclock secs ( 0.03 usr  0.01 sys +  0.06 cusr  0.01 csys =  0.11 CPU)
Result: FAIL

