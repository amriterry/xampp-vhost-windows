# XAMPP Virtual Host for Windows

This script creates a virtual host for windows.

> **Note:** This script needs to run in shell with administrator permissions as it needs to update the hosts file.

### Usage

Add executable permissions to **vhost.sh** file.

```bash
$ chmod +x vhost.sh
```

Run the script.

```bash
$ ./vhost.sh project-root-directory server-root-directory project-alias
```

### Examples

For different project root and server root.

```bash
$ ./vhost.sh C:\Users\user\Code\laravel-blog public lara-blog.dev
```

For project root as server root.

```bash
$ ./vhost.sh C:\Users\user\Code\project / project.dev
```
