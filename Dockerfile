FROM ubuntu:22.04

# 基本ツールと依存をインストール
RUN apt-get update && apt-get install -y \
  curl \
  ca-certificates \
  libssl-dev \
  libstdc++6 \
  git

# 最新のollamaをインストール
RUN curl -fsSL https://ollama.com/install.sh | sh

# ポート解放
EXPOSE 11434

# デフォルトでollamaサーバーを起動
CMD ["ollama", "serve"]
