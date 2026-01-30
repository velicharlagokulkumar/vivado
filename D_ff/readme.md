<img width="4944" height="2348" alt="gk-Page-135" src="https://github.com/user-attachments/assets/f36993aa-d96e-40ff-859f-411f6ea152ed" />

#### What “delayed flop” actually means
D flip-flop is edge-triggered

A DFF outputs a delayed version of D

```
Why the first change of "d_ff" does not happen at 35ns why it happened at 25ns itself..?

since d is a delayed flop like d_ff_2 sampled at 25ns and changed its output at 35ns 
```

#### What “delayed” actually means

    • Input D is ignored until a clock edge
    • Output Q updates only on the clock edge
    • Between edges → output is “delayed”

Thats why we say:
    “Q is a delayed version of D”

But the delay is:

    • From D change → next clock edge

Not “one more cycle after that”

That means:
    Q(t) = D sampled at the previous clock edge

#### where its sampling on previous edge its sampling on same edge right..?

This is a very common conceptual knot..

When people say:

Q(t) = D sampled at the previous clock edge
They are talking about Q at time t, not Q at the edge itself.

Now look at Q at 27 ns, 28 ns
At any of those time output of flop "d_ff" does not changes it remains same as what the value captured at the previous posedge clock "25 ns"

So let
Q(30 ns) = D which is sampled at 25 ns

#### set
<img width="1163" height="276" alt="image" src="https://github.com/user-attachments/assets/9ccb1d03-8082-4d0e-9e11-a04b511e3758" />

<img width="1160" height="267" alt="image" src="https://github.com/user-attachments/assets/8c076243-7a51-435c-ae7e-2bb9dc3f60d1" />









