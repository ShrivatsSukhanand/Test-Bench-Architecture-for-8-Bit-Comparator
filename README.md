# Test-Bench-Architecture-for-8-Bit-Comparator
Academic project in 5th sem, 2025

In this architecture, the generator creates transactions of two 8-bit unsigned numbers using randc — which cycles through unique values before repeating, unlike rand — passes them to the driver via a mailbox, and drives them to the DUT through an interface. Can be simulated using Aldec Riviera-Pro 2025.04 on EDA Playground through the link: [EDA Playground](https://www.edaplayground.com/x/bfV_)

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
<img width="819" height="706" alt="image" src="https://github.com/user-attachments/assets/760b4771-b68d-4bc0-85a8-ea26bdb63ad5" />

the following is the screenshot of the output
<img width="721" height="762" alt="image" src="https://github.com/user-attachments/assets/e1aecc50-29aa-4aa1-a7ca-64c60793c09e" />
