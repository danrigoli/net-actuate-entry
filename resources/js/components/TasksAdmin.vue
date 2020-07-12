<template>
<div class="container-fluid">
    <div class="row">
        <div class="col-3">
            <div class="jumbotron">
                <div class="container">

                    <h2 class='mb-4' style='text-align:center;'>New</h2>
                    <ul class="list-group">
                        <li v-for='task in tasks' v-if='task.status == "New"' v-bind:key='task.id' class="list-group-item">
                            <div class='row justify-content-between'>
                                <h5>{{task.name}} </h5>
                                <section>
                                    <button @click='editTask(task)' class='btn btn-sm btn-warning' style='margin-right:6.9px;'><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-pencil" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M11.293 1.293a1 1 0 0 1 1.414 0l2 2a1 1 0 0 1 0 1.414l-9 9a1 1 0 0 1-.39.242l-3 1a1 1 0 0 1-1.266-1.265l1-3a1 1 0 0 1 .242-.391l9-9zM12 2l2 2-9 9-3 1 1-3 9-9z"/>
                                    <path fill-rule="evenodd" d="M12.146 6.354l-2.5-2.5.708-.708 2.5 2.5-.707.708zM3 10v.5a.5.5 0 0 0 .5.5H4v.5a.5.5 0 0 0 .5.5H5v.5a.5.5 0 0 0 .5.5H6v-1.5a.5.5 0 0 0-.5-.5H5v-.5a.5.5 0 0 0-.5-.5H3z"/>
                                    </svg></button>
                                    <button @click='deleteTask(task.id)' class='btn btn-sm btn-danger'><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-trash-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7z"/>
                                    </svg></button>
                                </section>
                            </div>
                            <div class='row'>
                                <p v-if='task.user != null'>
                                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-person-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M13.468 12.37C12.758 11.226 11.195 10 8 10s-4.757 1.225-5.468 2.37A6.987 6.987 0 0 0 8 15a6.987 6.987 0 0 0 5.468-2.63z"/>
                                        <path fill-rule="evenodd" d="M8 9a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                                        <path fill-rule="evenodd" d="M8 1a7 7 0 1 0 0 14A7 7 0 0 0 8 1zM0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8z"/>
                                    </svg>
                                    {{task.user}}
                                </p>
                            </div>
                        </li>
                        <form @submit.prevent='addTask' >
                            <div class="input-group mb-2 mt-2">
                                <input type="text" class="form-control " v-model='task.name' placeholder='Add New...'>
                                <div class="input-group-append">
                                    <button class="btn btn-outline-info">Submit</button>
                                </div>
                            </div>
                            <div class="row">
                                    <div class="col">
                                        <select class="form-control" v-model="task.status">
                                            <option v-bind:value='"New"'>New</option>
                                            <option v-bind:value='"In Progress"'>In Progress</option>
                                            <option v-bind:value='"Done"'>Done</option>
                                            <option v-bind:value='"Review"'>Review</option>

                                        </select>                                   
                                    </div>
                                    <div class="col">
                                        <select class="form-control" v-model="task.user_id">
                                            <option value='null'>No User</option>
                                            <option  v-for='user in users' v-bind:value='user.id'>{{user.name}}</option>
                                        </select>
                                    </div>
                                </div>  
                        </form>
                    </ul>                  
                </div>
            </div>
        </div>
        <div class="col-3">
            <div class="jumbotron">
                <div class="container">
                    <h2 class='mb-4' style='text-align:center;'>In Progress</h2>
                    <ul class="list-group">
                        <li v-for='task in tasks' v-if='task.status == "In Progress"' v-bind:key='task.id' class="list-group-item">
                            <div class='row justify-content-between'>
                                <h5>{{task.name}} </h5>
                                <section>
                                    <button @click='editTask(task)' class='btn btn-sm btn-warning' style='margin-right:6.9px;'><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-pencil" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M11.293 1.293a1 1 0 0 1 1.414 0l2 2a1 1 0 0 1 0 1.414l-9 9a1 1 0 0 1-.39.242l-3 1a1 1 0 0 1-1.266-1.265l1-3a1 1 0 0 1 .242-.391l9-9zM12 2l2 2-9 9-3 1 1-3 9-9z"/>
                                    <path fill-rule="evenodd" d="M12.146 6.354l-2.5-2.5.708-.708 2.5 2.5-.707.708zM3 10v.5a.5.5 0 0 0 .5.5H4v.5a.5.5 0 0 0 .5.5H5v.5a.5.5 0 0 0 .5.5H6v-1.5a.5.5 0 0 0-.5-.5H5v-.5a.5.5 0 0 0-.5-.5H3z"/>
                                    </svg></button>
                                    <button @click='deleteTask(task.id)' class='btn btn-sm btn-danger'><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-trash-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7z"/>
                                    </svg></button>
                                </section>
                            </div>
                            <div class='row'>
                                <p v-if='task.user != null'>
                                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-person-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M13.468 12.37C12.758 11.226 11.195 10 8 10s-4.757 1.225-5.468 2.37A6.987 6.987 0 0 0 8 15a6.987 6.987 0 0 0 5.468-2.63z"/>
                                        <path fill-rule="evenodd" d="M8 9a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                                        <path fill-rule="evenodd" d="M8 1a7 7 0 1 0 0 14A7 7 0 0 0 8 1zM0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8z"/>
                                    </svg>
                                    {{task.user}}
                                </p>
                            </div>
                        </li>
                    </ul>                   
                </div>
            </div>
        </div>
        <div class="col-3">
            <div class="jumbotron">
                <div class="container">
                    <h2 class='mb-4' style='text-align:center;'>Done</h2>
                    <ul class="list-group">
                        <li v-for='task in tasks' v-if='task.status == "Done"' v-bind:key='task.id' class="list-group-item">
                            <div class='row justify-content-between'>
                                <h5>{{task.name}} </h5>
                                <section>
                                    <button @click='editTask(task)' class='btn btn-sm btn-warning' style='margin-right:6.9px;'><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-pencil" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M11.293 1.293a1 1 0 0 1 1.414 0l2 2a1 1 0 0 1 0 1.414l-9 9a1 1 0 0 1-.39.242l-3 1a1 1 0 0 1-1.266-1.265l1-3a1 1 0 0 1 .242-.391l9-9zM12 2l2 2-9 9-3 1 1-3 9-9z"/>
                                    <path fill-rule="evenodd" d="M12.146 6.354l-2.5-2.5.708-.708 2.5 2.5-.707.708zM3 10v.5a.5.5 0 0 0 .5.5H4v.5a.5.5 0 0 0 .5.5H5v.5a.5.5 0 0 0 .5.5H6v-1.5a.5.5 0 0 0-.5-.5H5v-.5a.5.5 0 0 0-.5-.5H3z"/>
                                    </svg></button>
                                    <button @click='deleteTask(task.id)' class='btn btn-sm btn-danger'><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-trash-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7z"/>
                                    </svg></button>
                                </section>
                            </div>
                            <div class='row'>
                                <p v-if='task.user != null'>
                                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-person-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M13.468 12.37C12.758 11.226 11.195 10 8 10s-4.757 1.225-5.468 2.37A6.987 6.987 0 0 0 8 15a6.987 6.987 0 0 0 5.468-2.63z"/>
                                        <path fill-rule="evenodd" d="M8 9a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                                        <path fill-rule="evenodd" d="M8 1a7 7 0 1 0 0 14A7 7 0 0 0 8 1zM0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8z"/>
                                    </svg>
                                    {{task.user}}
                                </p>
                            </div>
                        </li>      
                    </ul> 
                </div>
            </div>
        </div>
        <div class="col-3">
            <div class="jumbotron">
                <div class="container">
                    <h2 class='mb-4' style='text-align:center;'>Review</h2>
                    <ul class="list-group">
                        <li v-for='task in tasks' v-if='task.status == "Review"' v-bind:key='task.id' class="list-group-item">
                            <div class='row justify-content-between'>
                                <h5>{{task.name}} </h5>
                                <section>
                                    <button @click='editTask(task)' class='btn btn-sm btn-warning' style='margin-right:6.9px;'><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-pencil" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M11.293 1.293a1 1 0 0 1 1.414 0l2 2a1 1 0 0 1 0 1.414l-9 9a1 1 0 0 1-.39.242l-3 1a1 1 0 0 1-1.266-1.265l1-3a1 1 0 0 1 .242-.391l9-9zM12 2l2 2-9 9-3 1 1-3 9-9z"/>
                                    <path fill-rule="evenodd" d="M12.146 6.354l-2.5-2.5.708-.708 2.5 2.5-.707.708zM3 10v.5a.5.5 0 0 0 .5.5H4v.5a.5.5 0 0 0 .5.5H5v.5a.5.5 0 0 0 .5.5H6v-1.5a.5.5 0 0 0-.5-.5H5v-.5a.5.5 0 0 0-.5-.5H3z"/>
                                    </svg></button>
                                    <button @click='deleteTask(task.id)' class='btn btn-sm btn-danger'><svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-trash-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd" d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7z"/>
                                    </svg></button>
                                </section>
                            </div>
                            <div class='row'>
                                <p v-if='task.user != null'>
                                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-person-circle" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path d="M13.468 12.37C12.758 11.226 11.195 10 8 10s-4.757 1.225-5.468 2.37A6.987 6.987 0 0 0 8 15a6.987 6.987 0 0 0 5.468-2.63z"/>
                                        <path fill-rule="evenodd" d="M8 9a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                                        <path fill-rule="evenodd" d="M8 1a7 7 0 1 0 0 14A7 7 0 0 0 8 1zM0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8z"/>
                                    </svg>
                                    {{task.user}}
                                </p>
                            </div>
                        </li>                    
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

</template>

<script>
export default{
    data() {
        return {
            users: [],
            tasks: [],
            task: {
            id: '',
            name: '',
            status: 'New',
            user_id: ''
        },
        task_id: '',
        edit: false
        };
    },

    created(){
        this.fetchTasks();
    },

    methods: {
        fetchTasks(){
            fetch('api/tasks-admin')
                .then(res => res.json()) 
                .then((dataJson) => {
                    this.users = dataJson[0]
                    this.tasks = dataJson[1]
        })
    },
    deleteTask(id){
        Swal.fire({
        title: 'Are you sure?',
        text: "You won't be able to revert this!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
        })
        .then((result) => {
        if (result.value) {
            fetch(`api/task/${id}`, {
                method: 'delete'
            })
            .then( res => res.json())
            .then(data => {
                this.fetchTasks();
                });
                Swal.fire(
                    'Deleted!',
                    'Your task has been deleted.',
                    'success'
                    )
                }

        })
    },
    addTask(){
        if(this.edit === false) {
            fetch(`api/task`, {
                method: 'post',
                body: JSON.stringify(this.task),
                headers: {
                    'content-type': 'application/json'
                }
            })
            .then(res => res.json())
            .then(data => {
                this.task.name = '';
                this.task.status = 'New';
                this.task.user_id = '';
                Swal.fire({
                position: 'top-end',
                icon: 'success',
                title: 'Task added!',
                showConfirmButton: false,
                timer: 1500
                })
                this.fetchTasks();
            })
        }
        else{
            fetch(`api/task`, {
                method: 'put',
                body: JSON.stringify(this.task),
                headers: {
                    'Content-Type': 'application/json'
                }
            })
            .then(res => res.json())
            .then(data => {
                this.task.name = '';
                this.task.status = 'New';
                this.task.user_id = '';
                this.edit = false;
                Swal.fire(
                    'Edited!',
                    'Your task has been edited.',
                    'success'
                    );
                this.fetchTasks();
            })
        }
    },
    editTask(task){
        this.edit = true;
        this.task.id = task.id;
        this.task_id = task.id;
        this.task.name = task.name;
        this.task.status = task.status;
        this.task.user_id = task.user_id;
    }

}
};
</script>