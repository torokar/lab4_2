#version 410 core

layout (location = 0) in vec3 vp;

uniform mat4 model;      // Положение и вращение объекта
uniform mat4 view;       // Положение камеры
uniform mat4 projection; // Перспектива (глубина)

void main() {
    // Умножаем матрицы на координаты вершины (порядок важен!)
    gl_Position = projection * view * model * vec4(vp, 1.0);
}