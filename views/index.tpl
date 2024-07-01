<!DOCTYPE html>
<html lang="pt-br">
<head>
    <style>@import url('https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap');</style>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gerenciador de Tarefas</title>
    <link rel="stylesheet" type="text/css" href="/static/bootstrap.css" >
</head>
<body>
    <div class="content">
        <ol><h2>Tarefas</h2>
            % for task in tasks:
            <li><strong>{{task.task_name}}</strong> <br> <small>{{task.task_description}}</small> <a href="/edit/{{task.id}}" class="btn">Editar</button></a> <a href="/delete/{{task.id}}">Deletar</a></li>
            % end
        </ol>
    <div class="container">
        <h2 id="form-title">{{ 'Editar' if edit_task else 'Nova' }} Tarefa</h2>
        <form id="task-form" action="{{'/edit/' and task.id if edit_task else '/add'}}" method="post">
            <input type="text" name="task_name" placeholder="Nome da tarefa" id="task_name" value="{{task.task_name if edit_task else ''}}" required>
            <input type="text" name="task_description" placeholder="descrição" id="task_description" value="{{task.task_description if edit_task else ''}}" required>
            <input id="button" type="submit" value="{{'Salvar' if edit_task else'Adicionar'}}">
        </form>
    </div>
    </div>
</body>
</html>