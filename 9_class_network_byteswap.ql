import cpp

class NetworkByteSwap extends Expr {
  NetworkByteSwap() {
    // TODO: replace <class> and <var>
    exists(Macro m |
      m.getAnInvocation().getExpr() = this and m.getName().regexpMatch("ntoh.*")
      // TODO: <condition>
    )
  }
}

from NetworkByteSwap n
select n, "Network byte swap"
