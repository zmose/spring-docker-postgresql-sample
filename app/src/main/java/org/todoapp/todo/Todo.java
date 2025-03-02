package org.todoapp.todo;

import jakarta.persistence.*;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;

import java.sql.SQLType;

@Entity
@Table(name = "todo")
public class Todo {

    public static enum TodoStatus {
        not_started,
        in_progress,
        completed
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "user_id")
    private Long userId;

    @Column(name = "task")
    private String task;

    @Column(name = "status", columnDefinition = "todo_status")
    @Enumerated(EnumType.STRING)
    @JdbcTypeCode(SqlTypes.NAMED_ENUM)
    private TodoStatus todoStatus;

    @Column(name = "todo_order")
    private int todoOrder;


    protected Todo() {}

    public Todo(Long userId, String task, String todoStatus, int todoOrder) {
        this.userId = userId;
        this.task = task;
        this.todoStatus = TodoStatus.valueOf(todoStatus);
        this.todoOrder = todoOrder;
    }


    public Todo(Long userId, String task, TodoStatus todoStatus, int todoOrder) {
        this.userId = userId;
        this.task = task;
        this.todoStatus = todoStatus;
        this.todoOrder = todoOrder;
    }


    public Long getId() {
        return id;
    }

    public Long getUserId() {
        return userId;
    }

    public String getTask() {
        return task;
    }

    public TodoStatus getTodoStatus() {
        return todoStatus;
    }

    public int getTodoOrder() {
        return todoOrder;
    }

}
