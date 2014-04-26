---
title: "Come to SE Hack Day, Maybe?"
created_at: 2013-10-01 11:50:00 -0400
kind: article
tags: mathNEWS
---

_I originally wrote this article for Volume 123, Issue 2 of mathNEWS._

    from datetime import datetime
    import random
    import students from uwaterloo
    
    softies = (
        students.find(program='Software Engineering')
            .all()
        )
    
    if ('hack' in me.likes and
        'learn' in me.likes and
        'build' in dir(me) and
        'teach' in dir(me) and
        'share' in dir(me) and
        'create' in dir(me) and
        me.cal.isFree(start=datetime(2013,10,26,17,00),
                      end=datetime(2013,10,27,00,00)) and
        sum(1 if friend in softies else 0
            for friend in me.friends) > 0):
    
        if random.random() > 0.5: # maybe
    
            me.addToCalendar('SE Hack Day #10')
    
    # Questions? Find a friend in Software Engineering
    # and ask them about it! Or visit http://sehackday.com/.

