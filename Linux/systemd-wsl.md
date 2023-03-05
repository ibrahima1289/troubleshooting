## Enable Systemd (to SSH) in Windows10 WSL

First, you can install [WSL](https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-10#1-overview) if you do not have it already.

### With Systemctl

1. Check the status:
```
sudo systemctl status sshd
```
2. if you see the error below, edit the file **wsl.conf**.

![](./images/systemd1.PNG)

3. Nano into the **wsl.conf**

![](./images/systemd2.PNG)

4. Add this:
```
[boot]
systemd=true
```
![](./images/systemd3.PNG)

5. Then restart the terminal and retry again. <br>
6. If it still fails, thry the old **service** command.

### With Service
1. Run this:
```
sudo service ssh status
```

2. You can then start the service by using the command below:
```
sudo service ssh start
```
3. You will see the this. Allow the access.

![](./images/systemd4.PNG)

4. You can now check the status.
```
sudo service ssh status
```
![](./images/systemd5.PNG)

5. Use this to stop the service
```
sudo service ssh stop
```
![](./images/systemd6.PNG)