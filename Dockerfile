FROM ataber/petsc

#slepc
ENV SLEPC_VERSION 3.7.4
RUN wget http://slepc.upv.es/download/download.php?filename=slepc-$SLEPC_VERSION.tar.gz \
    -O slepc-$SLEPC_VERSION.tar.gz && \
    tar xfz slepc-$SLEPC_VERSION.tar.gz && rm -f slepc-$SLEPC_VERSION.rag.gz && \
    cd slepc-$SLEPC_VERSION && \
    ./configure --prefix=$HOME/libs/slepc-$SLEPC_VERSION && \
    make SLEPC_DIR=`pwd` && make SLEPC_DIR=`pwd` install && \
    cd && rm -rf slepc-$SLEPC_VERSION*

ENV SLEPC_DIR $HOME/libs/slepc-$SLEPC_VERSION

