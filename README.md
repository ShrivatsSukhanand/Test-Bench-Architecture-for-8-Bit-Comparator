# Test-Bench-Architecture-for-8-Bit-Comparator

The generator creates two 8-bit unsigned numbers using randc and passes them to the driver via a mailbox, which drives them to the DUT through an interface. The monitor captures the DUT's inputs and output, forwarding them to the scoreboard, which computes the expected result internally and compares it against the DUT output, reporting PASS or FAIL. Can be simulated using Aldec Riviera-PRO 2025.04 on EDA Playground through the link: [EDA Playground](https://www.edaplayground.com/x/bfV_)

A constraint 'keepshort' limits both inputs to the range [100:110], increasing the likelihood of equality conditions for demonstration purposes.
```systemverilog
constraint keepshort {
    a inside {[8'd100:8'd110]};
    b inside {[8'd100:8'd110]};
}
```
A fixed seed ($urandom(4568)) is used for reproducibility — modify it to generate different random sequences.
```systemverilog
void'($urandom(4568)); // Change seed for different random sequences
```

The following is the design for the 8-bit comparator. The focus of this project is implementing the testbench architecture
<img width="819" height="706" alt="Screenshot 2026-04-25 200304" src="https://github.com/user-attachments/assets/0d88e9ae-f810-4c14-907e-79256777d5af" />

the following is the screenshot of the output
<img width="551" height="857" alt="image" src="https://github.com/user-attachments/assets/27170da8-839b-4ded-aab0-2977cdbf2eb9" />
<img width="1100" height="156" alt="image" src="https://github.com/user-attachments/assets/2c8a2a28-27bd-4ebc-85ba-2b6f142a8335" />
