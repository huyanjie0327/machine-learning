1. install gcc
    yum install gcc-c++.x86_64
    yum install glibc-static libstdc++-static
    yum install openssl-devel

2. install python 3.6
    wget https://www.python.org/ftp/python/3.6.5/Python-3.6.5.tgz
    tar xvzf Python-3.6.5.tgz
    sudo mkdir -p /usr/local/python3.6
    cd Python-3.6.5
    sudo ./configure --prefix=/usr/local/python3.6 --enable-optimizations
    sudo make -j32
    sudo make install

    ln -s /usr/local/python3.6/bin/python3.6 /usr/bin/python3
    ln -s /usr/local/python3.6/bin/pip3 /usr/bin/pip3

    sudo pip3 install --upgrade pip
    sudo pip3 install virtualenv

3. machine learning env install 
    /usr/local/python3.6/bin/virtualenv --system-site-packages -p python3 venv
    source ./venv/bin/activate
    pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple numpy
    pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple absl-py
    pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple scikit_learn
    pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple scipy
    pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple xgboost==0.6a2
    deactivate
