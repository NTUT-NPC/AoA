# Contributing

The document [`docs/aoa.md`](docs/aoa.md) serves as the Articles of Association for our club. All members are encouraged to contribute by making updates or suggestions to the [`docs/aoa.md`](docs/aoa.md) file.

If you would like to contribute, please follow these steps:

1. **Fork the Repository**: Click the "Fork" button at the top right of the repository page to create your own copy of the repository.

2. **Make Changes**: Edit the [`docs/aoa.md`](docs/aoa.md) file to propose changes or updates to the Articles of Association.

3. **Submit a Pull Request**: Once you have made your changes, submit a pull request to the main repository. Please include a brief description of the changes you made and the reasons for them.

> Alternatively, if you have suggestions or issues that you would like to discuss without making direct changes, feel free to open an issue in the repository. Your feedback is valuable and helps ensure that our Articles of Association remain accurate and up-to-date!



# Web Preview with Docker and Docker Compose

This project sets up a Flask web application that serves an HTML preview generated from a Markdown file. The application is containerized using Docker and orchestrated with Docker Compose.

## Project Structure

```
NTUT-NPC/AoA
├── build
│   └── app.py
├── compose.yml
├── Dockerfile
├── docs
│   ├── aoa.md
│   ├── assets
│   │   ├── edukai-5.0.ttf
│   │   └── Iansui-Regular.ttf
│   ├── CNAME
│   └── index.html
├── .git
├── .github
│   └── workflows
│       └── markdown-to-html.yml
├── .gitignore
├── LICENSE
│   ├── GPL-3.0.txt
│   └── OFL.txt
├── LICENSE.md
└── README.md
```

## Prerequisites

Before you begin, ensure you have the following installed on your machine:

- [Docker](https://www.docker.com/get-started) (version 20.10 or later)
- [Docker Compose](https://docs.docker.com/compose/install/) (version 1.27 or later)

## Setup

1. **Clone the repository**:

   ```bash
   git clone git@github.com:NTUT-NPC/AoA.git
   cd AoA
   ```

2. **Build and start the application**:

   Use Docker Compose to build the image and start the container:

   ```bash
   docker compose up
   ```

   This command will build the Docker image defined in the `Dockerfile` and start the Flask application.

## Preview the Changes

Once the application is running, you can preview the changes by opening your web browser and navigating to:

http://127.0.0.1:5000

You should see the HTML content generated from the `aoa.md` Markdown file.

### Get the HTML Source

To download the HTML source of the generated page, you can use the following command:

```bash
wget http://127.0.0.1:5000/index.html
```

This command will save the `index.html` file to your current directory.

## Stopping the Application

To stop the application, you can press `Ctrl+C` in the terminal where Docker Compose is running.

## License

Please see [licenses](https://github.com/NTUT-NPC/AoA/tree/main/licenses).

## Acknowledgments

- [Flask](https://flask.palletsprojects.com/) for the web framework.
- [Pandoc](https://pandoc.org/) for converting Markdown to HTML.