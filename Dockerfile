FROM spg-registry.cn-hangzhou.cr.aliyuncs.com/spg/openspg-server:latest

ADD openspg_kag-0.8.0.2-py3-none-any.whl /
RUN python -m pip uninstall -y openspg-kag &&                            \
    python -m pip install /openspg_kag-0.8.0.2-py3-none-any.whl && \
    rm -f /openspg_kag-0.8.0.2-py3-none-any.whl