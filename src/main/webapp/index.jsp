<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Task list</title>
    <link rel="stylesheet" type="text/css" href="css/tasks.css"
          media="screen" />
    <link rel="stylesheet" type="text/css" href="css/custom.css"
          media="screen" />
    <script src="js/jquery-2.0.3.js"></script>
    <script src="js/jquery-tmpl.js"></script>
    <script src="js/custom.js"></script>
</head>
<body>
<header>
    <span>Task list</span>
</header>
<main>
    <section id="taskCreation" class="not">
        <form id="taskForm">
            <div>
                <label>Task</label> <input type="text" required="required"
                                           name="task" id="task" class="large" placeholder="Breakfast at Tiffanys" />
            </div>
            <div>
                <label>Required by</label> <input type="date" required="required"
                                                  name="requiredBy" id="requiredBy" />
            </div>
            <div>
                <label>Category</label> <select name="category" id="category">
                <option value="Personal">Personal</option>
                <option value="Work">Work</option>
            </select>
            </div>
            <nav>
                <a href="#" id="saveTask">Save task</a>
                <a href="#">Clear task</a>
            </nav>
        </form>
    </section>
    <section>
        <table id="tblTasks">
            <colgroup>
                <col width="40%">
                <col width="15%">
                <col width="15%">
                <col width="30%">
            </colgroup>
            <thead>
            <tr>
                <th>Name</th>
                <th>Due</th>
                <th>Category</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
        <nav>
            <a href="#" id="btnAddTask">Add task</a>
        </nav>
    </section>
</main>
<footer>You have 3 tasks</footer>
</body>
<script id="taskRow" type="text/x-jQuery-tmpl">
<tr>
	<td>${task}</td>
	<td><time datetime="${requiredBy}"> ${requiredBy}</time></td>
	<td>${category}</td>
	<td>
		<nav>
			<a href="#">Edit</a>
			<a href="#">Complete</a>
			<a href="#" class="deleteRow">Delete</a>
		</nav>
	</td>
</tr>
</script>
</html>

