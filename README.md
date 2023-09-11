# ADAPT Messenger Demo

This repository showcases a messenger application built on the ADAPT framework. The ADAPT framework functions as a decentralized data layer for the messenger, while the user interface handles all client-side interactions.

## Prerequisites

- Docker installed on your local machine.
- Familiarity with the ADAPT framework.

## Setup Instructions

1. **Build the Docker Image:**
```bash
docker build . -t basic-messenger-demo
```

2. **Initiate Docker Containers:**
```bash
docker-compose up
```

3. **Access the Application:**
```bash
open http://localhost:8080/?seed=your_seed_phrase
```
> Ensure unique seed phrases for different instances.

## Detailed Guide

For a comprehensive breakdown on the construction of this project, refer to the [Messenger Tutorial - Basics](https://docs.adaptframework.solutions/release/0.1/detailed-build-example.html).

## Resources

- [ADAPT Official Documentation](https://docs.adaptframework.solutions/release/0.1/)
- [ADAPT Framework Website](https://www.adaptframework.solutions/)

## Licensing

This project abides by the MIT License. Consult the `LICENSE` file for detailed information.
