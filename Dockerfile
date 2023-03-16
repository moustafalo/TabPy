FROM python:3

WORKDIR ./
COPY ./tabpy ./tabpy
# install the latest TabPy
RUN python3 -m pip install --upgrade pip && python3 -m pip install --upgrade tabpy

# start TabPy
CMD ["sh", "-c", "tabpy --config ./tabpy/tabpy_server/common/default.conf"]

# run startup script
ADD start.sh /
RUN chmod +x /start.sh
CMD ["/start.sh"]
