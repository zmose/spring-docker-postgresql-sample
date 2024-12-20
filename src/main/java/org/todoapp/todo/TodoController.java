package org.todoapp.todo;

import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/todo")
public class TodoController {

    private final TodoRepository todoRepository;


    public TodoController(TodoRepository todoRepository) {
        this.todoRepository = todoRepository;
    }

    @GetMapping("/{id}")
    public Optional<Todo> getTodo(@PathVariable("id") Long id) {
        return todoRepository.findById(id);
    }

    @PostMapping
    public Todo createTodo(@RequestBody Todo todo) {
        return this.todoRepository.save(todo);
    }

    @GetMapping
    public List<Todo> getTodosByUserId(@RequestParam("userId") Long userId) {
        return this.todoRepository.findTodosByUserId(userId);
    }


}
