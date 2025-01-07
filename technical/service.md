# Linux Systemd Service File Cheat Sheet

A `.service` file in Linux defines how a service should start, stop, and behave. Place it in `/etc/systemd/system/`.

## Structure of a `.service` File

> ```ini
> [Unit]
> Description=<Brief description of the service>
> After=<Service dependencies, like network.target>
> 
> [Service]
> Type=<Service type, e.g., simple, forking, oneshot>
> ExecStart=<Command to start the service>
> ExecStop=<Command to stop the service (optional)>
> ExecReload=<Command to reload the service (optional)>
> Restart=<Restart policy, e.g., always, on-failure>
> User=<User to run the service as>
> Group=<Group to run the service as>
> WorkingDirectory=<Working directory for the service>
> 
> [Install]
> WantedBy=<Target to bind service to, like multi-user.target>
> ```

## Key Sections and Options

### `[Unit]` Section
- **Description**: A brief explanation of the service.
- **After**: Defines dependencies, e.g., `network.target` to ensure the network is up before starting.

### `[Service]` Section
- **Type**:
  - `simple` - Default; service runs as a single process.
  - `forking` - Service forks a child process.
  - `oneshot` - For tasks that run once and exit.
- **ExecStart**: Command to start the service.
- **ExecStop**: Command to stop the service (optional).
- **ExecReload**: Command to reload the service without stopping it (optional).
- **Restart**: Policy on when to restart:
  - `always` - Always restart on exit.
  - `on-failure` - Restart only on failure.
- **User** and **Group**: Set the user and group to run the service as.
- **WorkingDirectory**: Directory from which the service runs.

### `[Install]` Section
- **WantedBy**: Specifies the target, like `multi-user.target`, to make the service start on boot.

## Example `.service` File

> ```ini
> [Unit]
> Description=My Custom Service
> After=network.target
> 
> [Service]
> Type=simple
> ExecStart=/usr/bin/my-app
> ExecStop=/usr/bin/my-app-stop
> Restart=on-failure
> User=myuser
> Group=mygroup
> WorkingDirectory=/opt/my-app
> 
> [Install]
> WantedBy=multi-user.target
> ```

## Useful Commands

- **Reload systemd** (after editing `.service` files):  
  > ```bash
  > sudo systemctl daemon-reload
  > ```

- **Start the service**:  
  > ```bash
  > sudo systemctl start <service-name>
  > ```

- **Stop the service**:  
  > ```bash
  > sudo systemctl stop <service-name>
  > ```

- **Enable the service** (start on boot):  
  > ```bash
  > sudo systemctl enable <service-name>
  > ```

- **Disable the service**:  
  > ```bash
  > sudo systemctl disable <service-name>
  > ```

- **Check service status**:  
  > ```bash
  > sudo systemctl status <service-name>
  > ```

- **View logs** (with `journalctl`):  
  > ```bash
  > journalctl -u <service-name>
  > ```
