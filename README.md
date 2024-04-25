# Design-and-ASIC-Implementation-of-UART
This repository presents ASIC design flow for UART utilizing RTL to GDS implementation This has been simulated on VCS and has been implemented by using Verilog description language which has been synthesized using Design Compiler and Back End design using Synopsys IC Compiler II

UART stands for universal asynchronous receiver / transmitter and defines a protocol, or set of rules, for exchanging serial data between two devices. UART is very simple and only uses two wires between transmitter and receiver to transmit and receive in both directions. so it is very useful for faster communication devices. Transmitter and Receiver blocks designed by algorithm state machine method simulated in ModelSim, synthesized in Design Compiler, and extracted in ICC II in SAED 32 nm CMOS cell library.

## Introduction
The first step of the ASIC Design flow is the register transfer level (RTL) design, where the high-level architectural description is transformed into a digital representation using VerilogL. This involves designing and implementing the behavior and connections of individual digital components.

UART can be divided into sending module and receiving module according to functions. It is worth noting that in order to take into account the accuracy and efficiency of information transmission, the sending module and the receiving module have different methods of confirming information.

### Transmitter Module:
During the transmission, the transmitter transmits the parallel data by converting it into a serial data stream and includes „start bit‟ and „stop bit‟   
  ![UART_TX Block diagram](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/3ba1bb48-0140-43e0-8f7c-b8b9ae9addb6)

### Receiver Module:
During the receiving operation, the receiver receives the serial bit data stream and converts it into parallel data by rejecting the „start bit‟ and „stop bit‟ 
  ![UART_RX Block diagram](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/fe49d707-ab65-43cf-b99e-89f119ff0947)

###  UART Data Frame
UART frame contain start and stop bits, and optional parity bit.
<br> <br>
![Picture1](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/1b63e52d-1c66-4f15-8897-520179add408)

- Start bit: Because UART is asynchronous, the transmitter needs to signal that data bits are coming. This is accomplished by using the start bit. The start bit is a transition from the idle high state to a low state, and immediately followed by user data bits.
- Stop bit: After the data bits are finished, the stop bit indicates the end of user data. The stop bit is a transition back to the high state.
- Data bits: The data bits are the user data or “useful” bits and come immediately after the start bit. 7 or 8 bits is most common. These data bits are usually transmitted with the least significant bit first.
- Parity bit: A UART frame can also contain an optional parity bit that can be used for error detection. The value of the parity bit depends on the type of parity being used (even or odd)

## Timing and synchronization of UART protocols
the transmitter and receiver do not share a common clock signal. in this repository I used two clock TX_CLK for transmitter module and RX_CLK for receiver module and used the baud rate 115200 and prescale (Desired division factor) = 32 then :
<br> <br>
baud rate = 115200 bits/sec = 112.5 KHz
<br> <br>
UART_CLK_TX = 112.5 KHz
<br> <br>
UART_CLK_RX =115200 * 32 = 3.515 MHz

## Synthesized View of UART chip (post DFT) 
![Synthesized View of UART chip](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/67561cf1-9c6b-4ec3-921d-660c68a194a0)

## Synthesized view of UART connections (post DFT) 
![Synthesized View of UART connections](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/97f61794-663f-4914-b1d0-1a316f23f953)

## Floorplan layout
![Floorplan layout](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/0153c0c3-0523-4d5a-8cce-9a0cacda34b2)

## Powerplanning layout
![Powerplanning layout](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/01e093e3-c491-482a-a71b-7a6936411a0d)

## Placement layout
![Placement layout](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/a95d5861-3b53-4a52-8b62-5ed3fb63f5ad)

## Clock Tree
![Clock Tree (SCAN_CLK)](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/cc2f74cc-54b6-4dae-a2c8-77f0c39d770b)

## Scan Chain 
![Scan chain](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/b74baa90-975a-49df-a899-741dc76e5fe8)

## Routing layout
![Routing layout](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/a26025b2-5cad-45ba-9373-df7fb13f9049)

## Congestion
![congestion](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/646dfcd0-dabb-48c9-9120-e620450ce0f6)


## Contributing
Contributions to this project are welcome. If you find any issues or have suggestions for improvements, please feel free to submit a pull request or open an issue in the repository.
