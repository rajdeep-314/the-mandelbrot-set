---
title: "Archive"
header-includes:
  - |
    <style>
    body { font-size: 21px; }
    </style>
colorlinks: true
linkcolor: blue
urlcolor: blue
toccolor: blue
citecolor: blue
---

## Rectangles in a Square

### Statement

You have to completely fill a $1 \times 1$ square and you can only use rectangles of side ratio $1:2$ - you can have rectangles of any size, as long as the ratio of their side lengths is $1:2$. Find all $n \in\mathbb N$ such that you can use $n$ rectangles to make such a square.

### Solution

$2$ is possible.

```
+-------+-------+
|       |       |
|       |       |
|       |       |
|       |       |
+-------+-------+
```

And we can split one rectangle into $4$ equal rectangles of equal size.

This means that if $n$ is possible, then $n+3$ is also possible.

```
+---+---+-------+
|   |   |       |
|   |   |       |
+---+---+       |
|   |   |       |
|   |   |       |
+---+---+-------+
```

If we have $n$ rectangles, then $n+4$ is possible. That is, if you can fill the square with $n$, then resize them as shown and add four rectangles.

```
+--------------+------+
|              |      |
|              |      |
+------+---+---+      |
|      |   |   |      |
|      |   |   |      |
|      +---+---+------+
|      |              |
|      |              |
+------+--------------+
```

From these two facts, we conclude: if $n$ is possible, then $n+3$ and $n+4$ are possible.

$$2 \rightarrow 5,6 \rightarrow 8,9,10 \rightarrow \text{all } n \geq 11, \quad n \in \mathbb{Z}$$

This means that if $2$ is possible, then $5$ and $6$ are possible. From $5,6$ we get $8,9,10$. After this, we can just add $3$ to $8$ to get $11$, etc.

\newpage

This leaves only $1, 3, 4,$ and $7$. We already know $1$ is not possible.

For $3$, we observe that at least one rectangle should touch $2$ vertices of the square.

```
+-------+-------+
|       |       |
|       |       |
|       |       |
|       |       |
+-------+-------+
```

From this we see that the other $2$ rectangles have to fill the remaining space, which is not possible.

In case of $4$, two things are possible:

1) Each rectangle touches only $1$ vertex, then it is not possible to fill the square

```
+-------------+------+
|             |      |
|             |      |
+------+------+      |
|      | gap  |      |
|      |      |      |
|      +------+------+
|      |             |
|      |             |
+------+-------------+
```


In this image, we see that there is a space left in the center of the square

2) One of the rectangles touches $2$ vertices, the other $3$ have to fill the remaining space, which is not possible.

```
+-------+-------+
|       |       |
|       |       |
|       |       |
|       |       |
+-------+-------+
```

For $7$:

```
+---+------+---------+
|   |      |         |
|   +------+         |
|   |      |         |
+---+      |         |
|   |      |         |
|   |      |         |
|   |      |         |
+---+      |         |
|   |      |         |
|   +------+         |
|   |      |         |
+---+------+---------+
```

This is a possible placement of rectangles.

So, except $1, 3$, and $4$, all natural numbers are possible.


$$\Huge\varnothing$$

