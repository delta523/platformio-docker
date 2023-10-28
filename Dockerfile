FROM python
WORKDIR /root

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Install pio dependencies.
COPY platformio.ini .
RUN pio pkg install

RUN mkdir -p /build
WORKDIR /build