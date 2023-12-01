# certicoq-sha

This is a separate repo to measure the performance of a SHA256 implementation in Coq, compiled to C by [CertiCoq](https://certicoq.org/).

On my machine (2018 MacBook Pro with 2.7 GHz Intel Core i7) this is what I get for one call to SHA256 to hash the string "hello" (including program starting time):

```
./prog
Time taken 0.006393 seconds = 6.393000 milliseconds
./prog_o1
Time taken 0.002249 seconds = 2.249000 milliseconds
./prog_o2
Time taken 0.002288 seconds = 2.288000 milliseconds
./prog_o3
Time taken 0.001966 seconds = 1.966000 milliseconds
```

You can run on your own machine by cloning the repo and running `make c run`, though you must have the CertiCoq runtime and change the `Makefile` to point to it.
