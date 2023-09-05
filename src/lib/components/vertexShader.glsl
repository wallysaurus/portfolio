void main() {
    gl_Position = positionMatrix
        * modelViewMatrix
        * vec4(position.x, sin(position.z), position.z, 1.0);
}