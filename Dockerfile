# Use the official Ubuntu image
# FROM ubuntu:latest

# # Set noninteractive mode for apt-get
# ARG DEBIAN_FRONTEND=noninteractive

# # Install Zsh, and Apache (or your preferred web server)
# RUN apt-get update && \
#     apt-get install -y zsh apache2 && \
#     rm -rf /var/lib/apt/lists/*

# # Set the default shell to Zsh
# SHELL ["/bin/zsh", "-c"]

# # Install other required packages
# RUN echo "ipv6" >> /etc/modules && \
#     apt-get update && \
#     apt-get upgrade -y && \
#     apt-get install -y \
#     apt-get docker-compose -y \
#     build-essential \
#     valgrind \
#     clang \
#     clang-format \
#     cmake \
#     git \
#     vim \
#     curl && \
#     [ ! -d "/root/.oh-my-zsh" ] && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" || true && \
#     [ ! -d "/root/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ] && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /root/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting || true && \
#     [ ! -d "/root/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ] && git clone https://github.com/zsh-users/zsh-autosuggestions.git /root/.oh-my-zsh/custom/plugins/zsh-autosuggestions || true && \
#     sed -i 's/plugins=(git)/plugins=(git z common-aliases node npm rand-quote sudo colored-man-pages colorize cp zsh-syntax-highlighting zsh-autosuggestions copyfile history dirhistory)/' /root/.zshrc && \
#     ln -sf /usr/bin/clang /usr/bin/cc && \
#     ln -sf /usr/bin/clang++ /usr/bin/c++

# # Set the working directory
# WORKDIR /app

# Use the official Ubuntu image
FROM ubuntu:latest

# Set noninteractive mode for apt-get
ARG DEBIAN_FRONTEND=noninteractive

# Install Zsh, and Apache (or your preferred web server)
RUN apt-get update && \
    apt-get install -y zsh apache2 && \
    rm -rf /var/lib/apt/lists/*

# Set the default shell to Zsh
SHELL ["/bin/zsh", "-c"]

# Install other required packages
RUN touch /root/.zshrc && \
    echo "ipv6" >> /etc/modules && \
    apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
        build-essential \
        valgrind \
        clang \
        clang-format \
        cmake \
        git \
        vim \
        curl && \
    apt-get install -y docker-compose -y && \
    [ ! -d "/root/.oh-my-zsh" ] && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" || true && \
    [ ! -d "/root/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting" ] && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git /root/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting || true && \
    [ ! -d "/root/.oh-my-zsh/custom/plugins/zsh-autosuggestions" ] && git clone https://github.com/zsh-users/zsh-autosuggestions.git /root/.oh-my-zsh/custom/plugins/zsh-autosuggestions || true && \
    sed -i 's/plugins=(git)/plugins=(git z common-aliases node npm rand-quote sudo colored-man-pages colorize cp zsh-syntax-highlighting zsh-autosuggestions copyfile history dirhistory)/' /root/.zshrc && \
    ln -sf /usr/bin/clang /usr/bin/cc && \
    ln -sf /usr/bin/clang++ /usr/bin/c++

# Set the working directory
WORKDIR /app
