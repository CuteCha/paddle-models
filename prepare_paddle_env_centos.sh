yum update
yum install -y epel-release
yum install -y cmake make cmake3 python-devel python-pip gcc-gfortran swig git
yum install -y python-pip
yum install openblas-devel
yum install golang
yum install boost-devel

pip install wheel numpy
pip install 'protobuf==3.1'
pip install Pillow matplotlib recordio
pip install 'scipy>=0.19.0'
pip install rarfile
pip install nltk
pip install opencv-python

# wget http://springdale.math.ias.edu/data/puias/computational/7/x86_64/eigen3-devel-3.2.10-1.sdl7.noarch.rpm
# yum install eigen3-devel
