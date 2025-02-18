[![sqlstyle.guide](https://img.shields.io/badge/style-sqlstyle.guide-green.svg?)](https://www.sqlstyle.guide/)
![sql-server](https://img.shields.io/badge/sql-server-blue.svg?logo=sql-server)
![docker](https://img.shields.io/badge/docker-gray.svg?logo=docker)
![linux](https://img.shields.io/badge/linux-gray.svg?logo=linux)
![ubuntu](https://img.shields.io/badge/ubuntu-gray.svg?logo=ubuntu)
![arch-linux](https://img.shields.io/badge/arch-gray.svg?logo=arch-linux)
![microsoft-windows](https://img.shields.io/badge/microsoft-windows-lightblue.svg?logo=microsoft-windows)

<div align="center">
  <img src="https://raw.githubusercontent.com/leandro-de-paula/sql-server/refs/heads/main/icons8-sql-server-144.png" alt="sql-server" />
  <h1 style="border: none; margin: 0;"><strong>SQL-SERVER</strong></h1>
</div>

---

# Mastery of Databases and SQL Language in SQL Server

This repository contains materials and examples to help master databases, concepts, and SQL language in the SQL Server environment. The content ranges from basic to advanced topics, providing a solid foundation for SQL Server database development and administration.

---

## Objectives

- **Learn** the fundamental concepts of relational databases.
- **Master** the SQL language for data manipulation and querying.
- **Explore** advanced techniques for query optimization and performance.
- **Understand** the main aspects of SQL Server database administration.

---

## Environment Setup and Installation

### Linux - **Ubuntu**

#### Docker:
1. Update the apt package index: `sudo apt update`
2. Install packages to allow apt to use a repository over HTTPS:
    ```bash
    sudo apt install apt-transport-https ca-certificates curl software-properties-common
    ```
3. Add Docker’s official GPG key:
    ```bash
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    ```
4. Add the Docker repository to APT sources:
    ```bash
    sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
    ```
5. Update the package index again:
    ```bash
    sudo apt update
    ```
6. Install Docker:
    ```bash
    sudo apt install docker-ce
    ```

### Linux - **Arch Linux**

#### Docker

1. Update repositories:
   ```bash
   sudo pacman -Syu
   ```

2. Install Docker via Pacman:
   ```bash
   sudo pacman -S docker
   ```

3. Enable and start the Docker service:
   - To enable the service on boot:
     ```bash
     sudo systemctl enable docker
     ```
   - To start the service:
     ```bash
     sudo systemctl start docker
     ```

4. Add your user to the `docker` group (optional):
   This allows you to use Docker without `sudo`.
   ```bash
   sudo usermod -aG docker $USER
   ```
   Then, restart your session to apply the changes:
   ```bash
   newgrp docker
   ```

5. Verify the installation:
   Run the following commands to ensure Docker is working:
   ```bash
   docker --version
   docker run hello-world
   ```

#### Note:
For updates or specific issues, refer to the [official Docker documentation for Arch Linux](https://wiki.archlinux.org/title/Docker).

---
#### SQL Server:
1. Follow the official Microsoft instructions to install SQL Server on Docker: [Instructions here](https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-ver15&pivots=cs1-bash)

## Additional Tools

### **Azure Data Studio**

#### **Ubuntu**
1. Download the `.deb` file from the [official site](https://docs.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver15).
2. Install using the command:
    ```bash
    sudo dpkg -i <filename>.deb
    ```

#### Azure Data Studio - Arch Linux:
1. Use AUR to install:
   ```bash
   paru -S azuredatastudio-bin
   ```

   Make sure `paru` is installed on your system to use this method.

---

### Windows
> SQL Server and Azure Data Studio installation via Docker

#### SQL Server:
1. Visit the [official Microsoft site](https://www.microsoft.com/en-us/sql-server/sql-server-downloads) and download the SQL Server installer.
2. Run the installer and follow the on-screen instructions.

#### Azure Data Studio:
1. Download the installer from the [official site](https://docs.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver15).
2. Run the installer and follow the on-screen instructions.

## Databases for Use in the Project

The database files for use in the project are located in the `database` folder. Currently, the `curso_bk1.bak` file is available for use.

### Restoring Databases
**First restoration option:**
0. Copy the restore file and paste it into the C drive if using `Windows`.
1. Open SQL Server Management Studio or Azure Data Studio.
2. Connect to your SQL Server instance.
3. Right-click on "Databases" and select "Restore Database".
4. Select the "Device" option and navigate to the location of the `.bak` file you want to restore.
5. Follow the on-screen instructions to complete the restoration.

**Second restoration option:**
0. Copie o backup do database wwi.bak para area de trabalho.
1. Use docker cp to copy the backup file into the container in the `/var/opt/mssql/backup` directory.
```bash
sudo docker cp wwi.bak sql1:/var/opt/mssql/backup
```


## Repository Structure

The repository is organized as follows:

- [database: Databases for testing](database/README.md)
- [instructions: DML DDL DCL TCL](instructions/README.md)
- [operators: Operators used in SQL SERVER](operators/README.md)
- [examples: General scripts](examples/)

## How to Use This Repository

Each module has its own README with instructions and information about the topic covered.

Examples are available within each folder, and in the `examples/` folder, you will find scripts that can be used as a basis for additional practice and study.

## Contribution

Contributions to this repository are welcome! If you have suggestions, corrections, or would like to add additional content, feel free to open a *pull request*.

## External Resources

In addition to the materials available in this repository, it is recommended to consult the following external resources to deepen your knowledge:

- [Official SQL Server Documentation](https://docs.microsoft.com/en-us/sql/?view=sql-server-ver15)
- [Microsoft Learn - SQL Server](https://docs.microsoft.com/learn/sql-server/)

## References

This repository is based on the Udemy course:
Database Expert: SQL Language and Administration.

Based on the SQL Style Guide · SQL Style Guide
- https://www.sqlstyle.guide/en/
- https://github.com/treffynnon/sqlstyle.guide 
- <a target="_blank" href="https://icons8.com/icon/laYYF3dV0Iew/microsoft-sql-server">sql server</a> icon by <a target="_blank" href="https://icons8.com">Icons8</a>

## License

This repository is licensed under the [MIT License](LICENSE).

