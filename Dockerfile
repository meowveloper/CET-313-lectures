FROM continuumio/anaconda3:main

RUN conda install jupyter -y --quiet && \
    pip install --no-cache-dir \ 
    minikanren \
    sympy \
    nltk \
    pandas \
    numpy \
    matplotlib \
    scikit-learn \
    && \
    python -c "import nltk; nltk.download('all', download_dir='/usr/local/share/nltk_data')"

ENV NLTK_DATA=/usr/local/share/nltk_data
