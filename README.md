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
- Stop bit: After the data bits are finished, the stop bit indicates the end of user data. The stop bit is a transition back to the high or idle state. stop bit = 1
- Data bits: The data bits are the user data or “useful” bits and come immediately after the start bit. 7 or 8 bits is most common. These data bits are usually transmitted with the least significant bit first.
- Parity bit: A UART frame can also contain an optional parity bit that can be used for error detection. The value of the parity bit depends on the type of parity being used (even or odd):

## Synthesized View of UART chip
![Synthesized View of UART chip](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/4bd1dbdb-ebbe-4496-a007-999392fd4e4c)


## Synthesized view of UART connections 
![Synthesized View of UART connections](https://github.com/basemhesham/Design-and-ASIC-Implementation-of-UART/assets/136960296/9adfcdd0-fb3e-412c-8c9b-1b0bcffae844)

## Floorplan layout

## Powerplanning layout
