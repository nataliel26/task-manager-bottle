from bottle import  Bottle, route, run, template, get, post, request, static_file
from tasks import db, Task

app = Bottle()


@route('/a')
def index():
    return template('index.html')

@route('/a', method = 'POST')
def process_form():
   task_name = request.forms.get('task')
   task_description = request.forms.get('description')

if __name__ == '__main__':
    run()