// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract TodoList {
    struct Todo {
        string text;
        bool completed;
    }
    
    Todo[] public todos;
    
    function create(string calldata _todo) external {
        todos.push(Todo({
            text: _todo,
            completed: false
        }));
    }
    
    function updateText(uint _index, string calldata _text) external {
        Todo storage todo = todos[_index];
        todo.text = _text;
    }
    
    function toggleCompleted(uint _i) external {
        Todo storage todo = todos[_i];
        todo.completed = !todo.completed;
    }
    
    function get(uint _i) external view returns (string memory, bool) {
        Todo storage _todo = todos[_i];
        
        return (_todo.text, _todo.completed);
    }
}
