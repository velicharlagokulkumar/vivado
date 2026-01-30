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

One additional note should be made here with regards to modeling asynchronous resets in Verilog. The simulation
model of a flip-flop that includes both an asynchronous set and an asynchronous reset in Verilog might not simulate
correctly without a little help from the designer

In general, most synchronous designs do not have flop-flops that
contain both an asynchronous set and asynchronous reset, but on the occasion such a flip-flop is required

First note that the problem is only a simulation problem and not a synthesis problem (synthesis infers the correct flipflop with asynchronous set/reset). The simulation problem is due to the always block that is only entered on the
active edge of the set, reset or clock signals. If the reset becomes active, followed then by the set going active, then
if the reset goes inactive, the flip-flop should first go to a reset state, followed by going to a set state. With both these inputs being asynchronous, the set should be active as soon as the reset is removed, but that will not be the case in Verilog since there is no way to trigger the always block until the next rising clock edge.

For those rare designs where reset and set are both permitted to be asserted simultaneously and then reset is removed
first, the fix to this simulation problem is to model the flip-flop using self-correcting code enclosed within the
translate_off/translate_on directives and force the output to the correct value for this one condition. The best
recommendation here is to avoid, as much as possible, the condition that requires a flip-flop that uses both
asynchronous set and asynchronous reset


<img width="1113" height="233" alt="image" src="https://github.com/user-attachments/assets/527f4ce2-db88-4845-b6a5-84e06e553d85" />

<img width="1111" height="230" alt="image" src="https://github.com/user-attachments/assets/47ffcf75-5f8d-48b9-b4ee-101ab5d789d3" />












