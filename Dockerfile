FROM leventerevesz/esp-idf:4.1

WORKDIR /usr/src/esp-idf-project

COPY src .

SHELL ["/bin/bash", "-c"]
# Use bash with esp-idf environment instead of /bin/sh
RUN ["/bin/bash", "-c", "source /esp/esp-idf/export.sh && idf.py build"]

RUN zip build.zip \
        build/bootloader/bootloader.bin \
        build/partition_table/partition-table.bin \
        build/blink.bin
