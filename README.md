ember-rails-todo-demo
=====================

This is a complete emberjs todolist demo, using rails as backend.

Functions:
1. Add a new row when clicking 'new event' button
2. Autosave when clicking the checkbox
3. Autosave when focus out of the text field
4. Can delete record when checkbox is checked

Installation:

Don't forget to modify database.yml

```shell
> bundle
> rake db:migrate
> rake db:seed
> rails s
```

There are two version of this demo.
1.Branch master & todo: a typical todolist.
2.Branch crud: traditional CRUD version.

Thanks to

https://github.com/dgeb/ember_data_example

http://jsfiddle.net/workmanw/G9wju/
