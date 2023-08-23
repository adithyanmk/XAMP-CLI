# XAMP-CLI

XAMP-CLI is a command-line tool to manage your local PHP development environment. It simplifies the management of a PHP web server using the command line. The script provides easy-to-use commands for starting, stopping, checking the status, and viewing logs of the server.

## Installation

1. Clone the repository:

   ```sh
   git clone https://github.com/adithyanmk/XAMP-CLI.git
   cd XAMP-CLI
   ```

2. Make the script executable:

   ```sh
   chmod +x xamp.sh
   ```

## Usage

- Start server:

   ```sh
   ./xamp.sh start 0.0.0.0:5000
   ```

- Stop server:

   ```sh
   ./xamp.sh stop 0.0.0.0:5000
   ```

- Show logs:

   ```sh
   ./xamp.sh logs
   ```

- Check server status:

   ```sh
   ./xamp.sh status 0.0.0.0:5000
   ```

## Important Notes

- Logs are saved in `logs/server.log`.
- Make sure you have PHP installed on your system for this script to work.
- The script should be executed in the same directory as the `xamp.sh` file.

## Contributions

Contributions are welcome! If you find a bug or want to improve the script, feel free to open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
