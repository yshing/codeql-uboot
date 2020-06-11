import cpp

from Function f, FunctionCall call
where f.getName() = "memcpy" and f.getACallToThisFunction() = call
select call
