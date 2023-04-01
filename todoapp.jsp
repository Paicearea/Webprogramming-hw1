<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>My ToDo App</title>  
    <style>
      body {
        font-family: Arial, sans-serif;
      }
      .container {
        background-color: #ffc107;
        box-shadow: 0 3px 5px rgba(0, 0, 0, 0.2);
        margin: auto;
        margin-top: 50px;
        padding: 50px;
        width: 75%;
      }
      h2 {
        font-size: 2.5rem;
        font-weight: bold;
        margin-bottom: 1rem;
        text-align: left;
      }
      hr {
        margin-top: 1rem;
        margin-bottom: 1rem;
        border: 0;
        border-top: 1px solid rgba(0, 0, 0, 0.1);
      }
      input {
        border-radius: 5px; /* 모서리를 5px만큼 둥글게 */
      }

      .input-group {
        display: flex;
        flex-wrap: wrap;
        align-items: stretch;
        width: 100%;
        border-radius: 5px;
      }
      .form-control {
        border-radius: 0.25rem
      }

      .input-group > input.form-control {
        flex: 1 1 auto;
        width: 1%;
        margin-bottom: 0;
      }
      .input-group > .btn {
        position: relative;
        flex-shrink: 0;
      }
      .form-control {
        border-radius: 0;
      }
      .btn-primary {
        background-color: #007bff;
        border-color: #007bff;
        border-radius: 0;
        transition: all 0.2s ease-in-out;
      }
      .btn-primary:hover {
        background-color: #0069d9;
        border-color: #0062cc;
      }
      .list-group {
        margin-top: 1rem;
      }
      .list-group-item {
        border-radius: 0;
        font-size: 1.2rem;
        margin-bottom: 0.5rem;
      }
      .list-group-item-action:hover {
        background-color: #f0ad4e;
      }
      .list-group-item-warning {
        background-color: #fff3cd;
        border-color: #ffeeba;
        color: #856404;
      }
      ul {
        list-style: none
      }
      .btn-close {
        float: right;
        font-size: 1.5rem;
        font-weight: bold;
        line-height: 1;
        color: #000;
        opacity: 0.5;
      }
      .btn-close:hover {
        color: #000;
        opacity: 0.75;
      }
      .ms-auto {
        margin-left: auto;
      }
    </style>
  </head>
  
  <body>
    <div class="container">
      <h2>My ToDo App</h2>
      <hr>
      <div class="input-group">
        <input id="item" class="form-control" type="text" placeholder="할일을 입력하세요..">
        <button type="button" class="btn btn-primary" onclick="addItem()">할일 추가</button>
      </div>
      <hr>
      <ul id="todolist" class="list-group"></ul>
    </div>

    <script>
      function addItem() {
  let list = document.getElementById('todolist');
  let todo = document.getElementById('item');
  let listitem = document.createElement('li');
  let xbtn = document.createElement('button');
  listitem.innerText = todo.value;
  
  xbtn.innerText = 'X';
  xbtn.addEventListener('click', function() {
    list.removeChild(listitem);
  });

  listitem.appendChild(xbtn);
  list.appendChild(listitem);

  todo.value = '';
  todo.focus();
}
      </script>   
    </head>
  </html>
