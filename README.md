# roq-api

API for algorithmic and high-frequency trading (HFT).

> This project does **not** contain the closed source implementation of the
> C++ interfaces.


## Links

* [Roq GmbH (website)](https://roq-trading.com/)
* [Contact (email)](mailto:info@roq-trading.com)
* [Documentation](https://roq-trading.com/docs/)
* [Releases](https://roq-trading.com/docs/releases/)
* [Gateways](https://roq-trading.com/docs/introduction/gateways/)
* [Samples](https://github.com/roq-trading/roq-samples/)
* [Roadmap](https://roq-trading.com/docs/introduction/roadmap/)
* [Pricing](https://roq-trading.com/#pricing)
* [LinkedIn](https://www.linkedin.com/company/35447832/)
* [Telegram](https://t.me/roq_trading/)


## Design

* Modular.
* Predictable low latency.
* Support all aspects required by a production environment.
* Aim to reduce "glue" code and offer standard solutions for data capture,
  monitoring, bridge solutions, etc.

![Design](/doc/images/architecture_reference.svg)

* The **C++ API** allows clients (strategies) to
  * communicate with gateways using a unified interface, or
  * replay event-logs (exactly, for simulation and back-testing purposes).
* The **FIX bridge** supports third-party solutions.
* The **JSON bridge** supports other programming languages.
* The **adapters** support third-party database solutions, e.g. ClickHouse.
* The **metrics** interface supports third-party monitoring solutions, e.g. Prometheus,
  Alertmanager and Grafana.


## Features

* Open source interface (no need to sign an NDA to access or use).
* Permissive license (anyone is free to copy and use for whatever purpose).
* Free to download and try (no need to contact or register).
* Unified client interface to access any market.
* Design is strongly inspired by standards and specific implementations used
  by major exchanges.
* Strong preference for allocation-free message encoding/decoding.
* Extensive use of auto-generated code based on schemas.
* Strongly typed messages (events).
* Asynchronous interfaces and implementations.
* C++ and shared memory for low latency.
* Automatic capture of all events.
* Free to download tools and database adapters.


## Support and Maintenance

A SLA is required for production support.
More information can be found [here](https://roq-trading.com/#pricing).

Feel free to [contact us](mailto:info@roq-trading.com) with any questions
you may have.


## Gateways

Currently supported traditional exchanges include

* CME

Currently supported Cryptocurrency exchanges include

* Binance
* BitMEX
* Bitstamp
* Bybit
* Coinbase PRO
* Deribit
* Gate
* Gemini
* HitBTC
* Huobi
* Kraken
* KuCoin
* OKX

The full list can be found [here](https://roq-trading.com/docs/introduction/gateways/).

> Instructions on how to install, configure and use the gateways can either
> be found in the [samples](https://github.com/roq-trading/roq-samples) or
> by consulting the [documentation](https://roq-trading.com/docs/tutorials/gateways/).


## Operating Systems

* Linux (x86-64, AArch64)
* macOS (x86-64, Arm64)

> All listed combinations are regularly compiled but only Linux/x86-64 is continuously being tested.
> If you require a specific combination, please [contact us](mailto:info@roq-trading.com) before using.

> We plan to drop support for macOS/x86-64.


## Library/Package Dependencies

* [fmt](https://github.com/fmtlib/fmt) (MIT License)
* [magic_enum](https://github.com/Neargye/magic_enum) (MIT License)
* [jinja2](https://github.com/pallets/jinja) (BSD 3-Clause License)

Optional

* [Catch2](https://github.com/catchorg/Catch2) (Boost Software License 1.0 License)


## Prerequisites

> It is not very interesting to follow the instructions shown here due to this
> project only containing interfaces.
> The actual client implementation is closed source as mentioned elsewhere in
> this document.

The project is primarily designed to be compatible with the conda package manager.

### Download and Install Mambaforge

#### Linux / x86\_64

```bash
wget -N https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-Linux-x86_64.sh

bash Mambaforge-Linux-x86_64.sh -b -u -p ~/conda

~/conda/bin/mamba install -y \
    'gxx_linux-64>=13'
```

#### Linux / AArch64

```bash
wget -N https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-Linux-aarch64.sh

bash Mambaforge-Linux-aarch64.sh -b -u -p ~/conda

~/conda/bin/mamba install -y \
    'gxx_linux-aarch64>=13'
```

#### macOS / x86\_64

```bash
wget -N https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-MacOSX-x86_64.sh

bash Mambaforge-MacOSX-x86_64.sh -b -u -p ~/conda

~/conda/bin/mamba install -y \
   'clang_osx-64>=17'
```

#### macOS / Arm64

```bash
wget -N https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-MacOSX-arm64.sh

bash Mambaforge-MacOSX-arm64.sh -b -u -p ~/conda

~/conda/bin/mamba install -y \
   'clang_osx-arm64>=17'
```

### Install Dependencies

```bash
source ~/conda/bin/activate

mamba install -y \
    git \
    cmake \
    abseil-cpp \
    fmt \
    jinja2 \
    clang-format \
    catch2

mamba install -y --channel https://roq-trading.com/conda/stable \
    roq-oss-magic_enum
```


## Building

> If you build for macOS, please consult the
> [knowledge base](https://conda-forge.org/docs/maintainer/knowledge_base.html#newer-c-features-with-old-sdk).

```bash
git submodule update --init --recursive

mkdir build && cd build

cmake ..

make -j

make test
```


### Using

You can download the closed source client implementation like this

```bash
mamba install -y --channel https://roq-trading.com/conda/stable \
    roq-client
```

Samples can be found [here](https://github.com/roq-trading/roq-samples).


## License

The project is released under the terms of the MIT license.
