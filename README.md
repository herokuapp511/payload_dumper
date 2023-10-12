# payload dumper
Prerequirement:
-------------
```
sudo apt install python3-pip
pip3 install -r requirements.txt
```

Usage:
-------- 


```
python3 payload_dumper.py payload.bin

### Docker

Alternatively you can use Docker:
```
docker run --rm -v "${PWD}":/data -it vm03/payload_dumper /data/payload.bin --out /data
```
or self build Docker image 
```
# build the container image
$ docker build -t payload_dumper .

# mount current PWD and pass payload.bin
$ docker run --rm -v "${PWD}":/data -it payload_dumper /data/payload.bin --out /data

```

## Guide

### Preparation
- Make you sure you have Python 3.6 or later installed.
- Download payload_dumper.py, update_metadata_pb2.py and requirements.txt
- Extract your OTA zip and place payload.bin in the same folder as these files.
- Open PowerShell, Command Prompt, or Terminal depending on your OS.
- Enter the following command: python -m pip install -r requirements.txt

### Full OTA

- When that’s finished, enter this command: python payload_dumper.py payload.bin
- This will start to extract the images within the payload.bin file to the output folder you are in.

### Incremental OTA

- Copy original images (from full OTA or dumped from devices) to old folder (with part name + .img, ex: boot.img, system.img)
- run python payload_dumper.py --diff payload.bin
- file extracted to the output folder you are in.
