FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install -y python3 \
                          python3-pip \
    && pip3 install numpy==1.11.2 \
                    scipy==0.18 \
                    scikit-learn==0.18 \
                    pandas==0.19 \
                    matplotlib==1.5.3 \
                    seaborn==0.7.1 \
                    nltk==3.2.1 \
                    xgboost==0.6a2 \
                    ipython==5.1.0 \
                    jupyter==1.0.0

EXPOSE 8888

CMD jupyter notebook --no-browser --ip=0.0.0.0 --port=8888 --notebook-dir=/src
