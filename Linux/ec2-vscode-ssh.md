# SSH into EC2 from VS Code

1. Create AWS access keys and set them up in your terminal to deploy resources through `awscli`.
```
aws configure
```
Then paste in the access key and secret key values. See the example below.

![](./images/ssh1.PNG)

2. Install SSH client by adding the extention `Remote - SSH`

![](./images/ssh2.PNG)

3. Modify the configuration file
* If SSH'ing from a linux machine:
```
Host aws-e2
    HostName <Public IPv4 DNS>
    User <ec2-name-here>
    IdentityFile ~/.ssh/private-ssh-key.pem
```
* If SSH'ing from a Windows machine:
```
Host aws-e2
    HostName <Public IPv4 DNS>
    User <ec2-name-here>
    IdentityFile C:\path_to_public_key_file
```

![](./images/ssh3.PNG)

4. SSH into the EC2
    * Click the green button in lower left corner
    ![](./images/ssh4.PNG)

    * Click on `Connect to Host...`

    * Click on `Configure SSH Hosts...`
    ![](./images/ssh7.PNG)

    * Click the path with `C:\Users\...\.ssh\config`
    ![](./images/ssh8.PNG)

    * Edit the file in step 3 and save it.
    * Click the `Open the Remote Window` - Green button on the lower left corner. Select the hostname you setup in the config file.
    ![](./images/ssh9.PNG)

    * Select the `OS`
    ![](./images/ssh10.PNG)

    * Click `Continue`

    * If you encounter errors, check your [SSH Key](https://www.baeldung.com/linux/ssh-key-format-issues-invalid-format-error) set up.

    * If everything goes well, you should see this:
    ![](./images/ssh11.PNG)

    * Open folders - Check on `Yes, I trust the authors`
    ![](./images/ssh12.PNG)

    * Here is a side by side SSH from `VS Code` (*left-side*) and `Windows WSL` (*right-side*).
    ![](./images/ssh13.PNG)

