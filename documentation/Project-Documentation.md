
# UrbanMove Blockchain Project

## 1. Introduction

UrbanMove is a blockchain-based taxi booking and journey management prototype designed for UrbanMove Taxi Services, an Irish taxi company.

The project explores how blockchain technology and smart contracts can improve transparency, security and trust in taxi booking and payment processes.

## 2. Project Objectives

The main objectives are:

- Develop a taxi booking system using blockchain technology.
- Record passenger and driver information.
- Manage journey bookings through smart contracts.
- Allow passengers to pay for taxi journeys.
- Release payments to drivers after journey completion.
- Demonstrate transparency and transaction integrity.

## 3. Technologies Used

The project uses the following technologies:

- Solidity: Programming language used to develop the smart contract.
- Remix IDE: Environment used to write, compile and deploy the contract.
- Remix VM: Simulated blockchain environment used for testing.
- Git: Version control system.
- GitHub: Repository used to store project files and development progress.

## 4. Smart Contract Overview

The UrbanMove smart contract was developed using Solidity version 0.8.20.

The contract includes the following functionalities:

### 4.1 Booking Creation

Passengers can create taxi bookings by providing a driver address and the journey fare.

### 4.2 Booking Information

Each booking stores:

- Passenger address.
- Driver address.
- Journey fare.
- Completion status.

### 4.3 Payment Management

Passengers can deposit the exact fare into the smart contract.

The contract records whether payment has been received.

### 4.4 Journey Completion

The assigned driver can confirm that the journey has been completed.

After confirmation, the smart contract releases the payment to the driver.

## 5. Testing and Development

The smart contract was compiled and tested using Remix IDE and Remix VM.

Testing included:

- Contract compilation.
- Contract deployment.
- Booking creation.
- Booking information retrieval.
- Passenger payment.
- Journey completion.
- Payment release.

Screenshots of the development and testing process are stored in the screenshots folder.

## 6. Conclusion

The UrbanMove prototype demonstrates how blockchain technology and smart contracts can support taxi booking and payment management.

The implementation provides an example of automated booking records, payment handling and journey completion.

The project also demonstrates the importance of testing smart contracts before considering real-world deployment.
