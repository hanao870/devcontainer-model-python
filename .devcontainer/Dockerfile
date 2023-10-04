FROM python:3.12.0

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir \
    # リンター. pycodestyle(pep8 スタイルチェック), pyflakes(論理エラーのチェック), mccabe(複雑度チェック) をまとめたツール
    flake8==6.1.0 \
    # 静的型チェックツール
    mypy==1.5.1 \
    # プログラムの静的セキュリティチェックツール
    bandit==1.7.5 \
    # PEP 257 で規定されている docstring のリンター
    pydocstyle==6.3.0 \
    # PEP8 準拠の Pytho コードフォーマッタ
    black==23.9.1 \
    # import の並びを整形するフォーマッタ
    isort==5.12.0 \
    # コミット前の検証ツール. git hook を使用
    pre-commit==3.4.0

RUN apt-get update \
    && apt-get install -y --no-install-recommends rubygems \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV TZ Asia/Tokyo