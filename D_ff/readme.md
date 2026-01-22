```
What “delayed flop” actually means
```
D flip-flop is edge-triggered
A DFF outputs a delayed version of D


why the first change of "d_ff" does not happen at 35ns why it happened at 25ns itself..? since d is a delayed flop like d_ff_2 sampled at 25ns and changed its output at 35ns 

```
What “delayed” actually means
```
    • Input D is ignored until a clock edge
    • Output Q updates only on the clock edge
    • Between edges → output is “delayed”

This why we say:
    “Q is a delayed version of D”

But the delay is:
    • From D change → next clock edge
Not “one more cycle after that”


That means:
    Q(t) = D sampled at the previous clock edge

```
where its sampling on previous edge its sampling on same edge right..?
```
This is a very common conceptual knot..

When people say:

Q(t) = D sampled at the previous clock edge
They are talking about Q at time t, not Q at the edge itself.

Now look at Q at 27 ns, 28 ns
At any of those times output of flop "d_ff" does not changes it remains same as what the value captured at the previous posedge clock "25 ns"

So let
Q(30 ns) = D what sampled at 25 ns