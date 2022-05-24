<?php
include 'inc/Post.php';

function databaseConnection() {
    $user = 'db';
    $password = 'db';
    $db = 'test';
    $host = 'db';
    $con = "mysql:host=$host;dbname=$db";

    $pdo = new PDO($con, $user, $password);
    return $pdo;
}

function allPosts() {

    $pdo = databaseConnection();

    $query = 'SELECT * FROM posts
        LEFT JOIN users ON  users.id = posts.author
        LEFT JOIN image ON image.id = posts.image';
    $statement = $pdo->query($query);

    $posts = $statement->fetchAll(PDO::FETCH_ASSOC);

    $posts = formatPost($posts);

    return $posts;
}

function formatPost($postsFromDb) {

    $structuredPosts = [];
    // var_dump($postsFromDb);
    $i = 1;
    foreach ($postsFromDb as $post) {
        // var_dump($post["title"]);
        $author = $post['name'] . ' ' . $post['surname'];
        $alt = $post['alt'] ?? '';
        $url = $post['url'] ?? '';
        $structuredPosts[$i] = new Post($i, $post["title"],$post["content"],$alt,$url,$post["created"],$author);
        $i++;
    }
    return $structuredPosts;
}

function getPost($id) {
    return(allPosts()[$id]);
}

