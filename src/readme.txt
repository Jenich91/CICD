install:
    curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh | sudo bash
    sudo apt update
    export GITLAB_RUNNER_DISABLE_SKEL=true; sudo -E apt-get install gitlab-runner
    sudo systemctl enable --now gitlab-runner

register:
    sudo gitlab-runner register

    gitlab link
    your_gitlab_key
    -
    build,style,test,deploy,notify
    -
    shell

launch:
    sudo gitlab-runner verify
    sudo gitlab-runner run

clear:
    sudo gitlab-runner unregister --all-runners
    sudo apt remove gitlab-runner -y

На машине_1:
    Включить дополнительный адаптер внутренняя сеть
    Задать ip 192.168.1.1 машины_1 отредактировав конфиг netplan
    установить expect - printf "student\n" | sudo -S apt install expect -y
На машине_2:
    Включить дополнительный адаптер внутренняя сеть
    Задать ip 192.168.1.2 машины_2 отредактировав конфиг netplan
    дать права в том числе на запись - sudo chmod -R 777 /usr/local/bin/
