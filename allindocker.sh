#google-chrome-only
docker run -d -e PASSWORD=passwd -p 5900:5900 -p 3389:3389 --name chrome sfoxdev/chrome-vnc-rdp

#chromium-only
docker run -d \
    --name=chromium \
    -p 5800:5800 \
    -v /docker/appdata/chromium:/config:rw \
    --shm-size 2g \
    overclockedllama/docker-chromium

#android 12 - with - Samsung Galaxy S10
#docker run --privileged -d -p 6080:6080 -p 5554:5554 -p 5555:5555 -e DEVICE="Samsung Galaxy S10" --name android-container budtmo/docker-android-x86-12.0

#docker-compose up -d
#wine-x11-novnc
docker run -p 8080:8080 -p 8081:22  -e LANG=zh_TW.UTF-8 -e LC_ALL=zh_TW.UTF-8 sykuang/wine-x11-novnc

#macos-docker
#Quickstart
#Clone the macOS-Simple-KVM tool: git clone https://github.com/foxlet/macOS-Simple-KVM.git
#Clone this repo https://github.com/taylorcoffelt/macos-docker
#Copy the firmware directory from the macOS-Simple-KVM tool and your .qcow2 image into this repository
#Copy/Move your BaseSystem.img and MyDisk.qcow2 image into this directory
#Run docker-compose up