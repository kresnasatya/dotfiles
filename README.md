# Setup
Kresna Satya's personal setup on Computer.

## macOS

- Visual Studio Code
- Intellij IDEA Community
- Table Plus
- DBngin
- Postman
- Notion
- Figma
- [Bezel](https://getbezel.app/)
- [Orbstack for Docker](https://orbstack.dev/)
- App Cleaner
- The Unarchiver
- Discord
- Cloudflare Warp
- Office 365
- Swift Playground
- Homebrew
- Google Chrome
- Firefox
- Android Studio -> Optional
- [Zotero for Citation Paper (alternative of Mendeley)](https://www.zotero.org/)

## Windows with WSL

- Install WSL2

    First, if you have install a distro before in WSL2 then please uninstall completely that distro.

    ```bash
    # To get list of distro
    wsl -l -v
    # Shutdown WSL
    wsl --shutdown
    # Unregister the distro
    wsl --unregister Ubuntu
    # Close the terminal and open again

    # Install the distro
    wsl --install -d Ubuntu
    ```

    Install in terminal with command `wsl --install -d Ubuntu`

    Then, give the username and password. Usually, I set the password same with username. 😛

    Run `sudo apt update && sudo apt full-upgrade`

    **Reference**
    [Install Ubuntu on WSL2 with GUI Support](https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-11-with-gui-support#1-overview)

- [Install ZSH and Oh My Zsh](https://dev.to/contactsunny/installing-zsh-and-oh-my-zsh-on-windows-11-with-wsl2-1p5i)
- Install Homebrew

    ```bash
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    # After install then add Homebrew to the PATH
    (echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/usdidev/.zshrc
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
    # Install Homebrew's dependencies
    sudo apt-get install -y build-essential
    ```
- Install Volta

    ```bash
    curl https://get.volta.sh | bash
    volta install node pnpm
    ```
- Install PHP and Composer

    ```bash
    brew install php composer
    ```
- Install MySQL Version 8 and Reset Password with mysql_native_password
    
    ```bash
    sudo apt install -y mysql-server
    # start mysql server
    sudo /etc/init.d/mysql start
    # Run the script security then choose No option!
    sudo mysql_secure_installation
    # Change root password with empty password since it's development mode
    sudo mysql
    ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '';
    # Exit

    # Change port and allow access remotely with bind_address option
    sudo vi /etc/mysql/my.cnf
    # Add config below
    [mysqld]
    bind_address = 0.0.0.0
    port = 33061

    # Restart mysql server
    sudo service mysql restart

    # Related issue
    https://stackoverflow.com/questions/62987154/mysql-wont-start-error-su-warning-cannot-change-directory-to-nonexistent

    # Create root with access remote (can access mysql with IP Address of my computer)
    mysql -u root
    CREATE USER 'root'@'%' IDENTIFIED WITH mysql_native_password BY '';
    # Then grant all access to that user
    GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
    ```

    **Reference**
    [How to install MySQL on WSL 2 (Ubuntu)](https://pen-y-fan.github.io/2021/08/08/How-to-install-MySQL-on-WSL-2-Ubuntu/)

- [Install Redis on Windows](https://redis.io/docs/install/install-redis/install-redis-on-windows/)
    
    Please follow the guide from Redis’s site official.

    Then, I want to change Redis can be accessed with my computer IP Address.

    ```bash
    sudo vi /etc/redis/redis.conf
    # Change value of bind directive
    bind 0.0.0.0
    # Change protected-mode from yes to no
    protected-mode no
    # Save it and restart Redis Server
    sudo service redis-server restart
    ```

- Install PHP Redis Extension with PECL command then just HIT ENTER

    ```bash
    pecl install redis
    # Then check if redis module or extension has been installed in PHP
    php -m
    ```


