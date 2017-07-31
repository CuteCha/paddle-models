#!/bin/bash
cur_dir=$(cd "$(dirname $0)";pwd)
install_dir=${cur_dir}/install

# rm -rf build && mkdir build && cd build
cd build

export LD_LIBRARY_PATH=/usr/lib64:$LD_LIBRARY_PATH

# build w/ MKL or OpenBLAS
# -DWITH_DOC=ON
# -DWITH_AVX=ON
# -DWITH_PYTHON=ON
# cmake3 .. -DCMAKE_INSTALL_PREFIX=<path to install> -DMKLROOT=
cmake3 .. -DCMAKE_INSTALL_PREFIX=${install_dir} -DOPENBLAS_ROOT=/usr/lib64
make -j `nproc` && make install
# set PaddlePaddle installation path in ~/.bashrc
export PATH=${install_dir}/bin:$PATH
# install PaddlePaddle Python modules.
sudo pip install ${install_dir}/opt/paddle/share/wheels/*.whl
