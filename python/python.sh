#!/bin/bash

--install() {
  curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
  python get-pip.py --user
  rm get-pip.py
}

--config() {
  --install
}

$@
