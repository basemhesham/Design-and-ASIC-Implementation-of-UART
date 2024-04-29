# Design-and-ASIC-Implementation-of-UART
This repository presents ASIC design flow for UART utilizing RTL to GDS implementation This has been simulated on VCS and has been implemented by using Verilog description language which has been synthesized using Design Compiler and Back End design using Synopsys IC Compiler II

UART stands for universal asynchronous receiver / transmitter and defines a protocol, or set of rules, for exchanging serial data between two devices. UART is very simple and only uses two wires between transmitter and receiver to transmit and receive in both directions. so it is very useful for faster communication devices. Transmitter and Receiver blocks designed by algorithm state machine method simulated in VCS, synthesized in Design Compiler, and extracted in ICC II in SAED 32 nm CMOS cell library.

## Introduction
The first step of the ASIC Design flow is the register transfer level (RTL) design, where the high-level architectural description is transformed into a digital representation using VerilogL. This involves designing and implementing the behavior and connections of individual digital components.

UART can be divided into sending module and receiving module according to functions. It is worth noting that in order to take into account the accuracy and efficiency of information transmission, the sending module and the receiving module have different methods of confirming information.

### Transmitter block Diagram:
During the transmission, the transmitter transmits the parallel data by converting it into a serial data stream and includes „start bit‟ and „stop bit‟   
  ![UART_TX Block diagram](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/3ba1bb48-0140-43e0-8f7c-b8b9ae9addb6)

### Transmitter FSM
![UART_TX_FSM](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/33e84e5a-693b-413f-8515-813a2676d537)

### Receiver Block Diagram:
During the receiving operation, the receiver receives the serial bit data stream and converts it into parallel data by rejecting the „start bit‟ and „stop bit‟ 
  ![UART_RX Block diagram](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/fe49d707-ab65-43cf-b99e-89f119ff0947)

### Receiver FSM
![UART_RX_FSM](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/715f6674-e0a1-4ad5-a5f9-8756e1cc8988)

###  UART Data Frame
UART frame contain start and stop bits, and optional parity bit.
<br> <br>
![Picture1](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/1b63e52d-1c66-4f15-8897-520179add408)

- Start bit: Because UART is asynchronous, the transmitter needs to signal that data bits are coming. This is accomplished by using the start bit. The start bit is a transition from the idle high state to a low state, and immediately followed by user data bits.
- Stop bit: After the data bits are finished, the stop bit indicates the end of user data. The stop bit is a transition back to the high state.
- Data bits: The data bits are the user data or “useful” bits and come immediately after the start bit. 7 or 8 bits is most common. These data bits are usually transmitted with the least significant bit first.
- Parity bit: A UART frame can also contain an optional parity bit that can be used for error detection. The value of the parity bit depends on the type of parity being used (even or odd)

## Timing and Synchronization  
It is possible for a phase delay to occur during the frame's passage through the system until it reaches the UART_RX, so we will need to use higher clock frequency to oversampling the data.UART_RX support oversampling by 8, 16, 32. data_sampling block in UART_RX will take 3 samples in the middle of clock period to ensure sampl the correct value.
<br> <br>
For example: Oversampling by 8 means that the clock speed of UART_RX is 8 times the speed of UART_TX
![oversampling](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/e499402c-bcff-40ee-8666-e7fefb5ab2ea)

## UART clock
the transmitter and receiver do not share a common clock signal. in this repository I used two clock UART_CLK_TX for transmitter module and UART_CLK_RX for receiver module and used the baud rate 115200 and prescale (division factor) = 32  :
<br> <br>
baud rate = 115200 bits/sec = 112.5 KHz
<br> <br>
UART_CLK_TX = 112.5 KHz
<br> <br>
UART_CLK_RX =115200 * 32 = 3.515 MHz
<br> <br>
## Synthesized View of UART chip (post DFT) 
![Synthesized View of UART chip](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/67561cf1-9c6b-4ec3-921d-660c68a194a0)

## Synthesized view of UART connections (post DFT) 
![Synthesized View of UART connections](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/97f61794-663f-4914-b1d0-1a316f23f953)

## Powerplanning layout
![power network](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/9e0838d5-ebe0-4ddd-88fc-d4bb8dd8ff21)

## Placement layout
turn off visibility of the P/G mesh to better see the placement
![placement](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/28c4d26a-a31c-43b6-a293-b246a22d4544)

## Clock Tree
![Clock tree](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/dec10d49-432f-4898-8d33-c9bbafd011e7)

## Scan Chain 
![Scan chain](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/66d34d08-5bbe-464b-bc1d-3e1b4680cc71)

## Routing layout
![Routing](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/6dfff8a5-b3ac-4c8e-8bc3-9ffb82900cef)

## IR drop 
to do analyze_power_plan I use set_virtual_pad at nets VDD and VSS
![Voltage drop](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/1e6ed2c4-8a42-4103-9484-a6ee2ad4e558)

## Congestion map
![congestion map](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/401dd473-3581-4afe-a3d6-7c93fcff14b2)


## Contributing
Contributions to this project are welcome. If you find any issues or have suggestions for improvements, please feel free to submit a pull request or open an issue in the repository.
