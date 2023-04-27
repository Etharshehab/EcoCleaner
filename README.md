
## Installation

To install and run this project locally, follow these steps:

1. Clone the repository:

```bash
$ git clone https://github.com/Etharshehab/EcoCleaner.git
```


2. Change into the project directory:
```bash
$ cd EcoCleaner/server
```


3. Install the required dependencies:
```bash
py -m venv env
$ pip install -r requirements.txt
```


4. Create the database tables:
```bash
$ python manage.py migrate
```



5. Start the development server:
```bash
$ python manage.py runserver
```

6. Open a web browser and navigate to `http://localhost:8000/docs/` to access the documentation.




