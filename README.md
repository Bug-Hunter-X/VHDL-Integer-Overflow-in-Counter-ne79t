# VHDL Integer Overflow Bug

This repository demonstrates a common error in VHDL: integer overflow in a counter.  The `buggy_counter.vhdl` file contains code for a simple counter that does not handle potential overflow.  The `fixed_counter.vhdl` file provides a corrected version. 

## Bug Description
The `buggy_counter` entity uses an `integer` type for the counter.  Integers in VHDL have a limited range, and if the counter exceeds this range, it will wrap around or produce unpredictable behavior. This can lead to incorrect simulation results and potentially hardware malfunctions if synthesized.

## Solution
The solution involves using an appropriately sized data type, such as `unsigned` or a larger integer type (`integer range 0 to 1023` for example) that will not overflow within the expected operational range of the counter.  The `fixed_counter.vhdl` file provides a corrected example using an `unsigned` type.

This example highlights the importance of careful consideration of data types when designing VHDL code.