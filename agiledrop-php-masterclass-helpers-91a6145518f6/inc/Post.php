<?php
class Post {
    public int $id;
    public string $title;
    public string $content;
    public string $alt;
    public string $url;
    public string $authoredOn;
    public string $authoredBy;

    public function __construct($id, $title, $content, $alt, $url, $authoredOn, $authoredBy) {
        $this->id = $id;
        $this->title = $title;
        $this->content = $content;
        $this->alt = $alt;
        $this->url = $url;
        $this->authoredOn = $authoredOn;
        $this->authoredBy = $authoredBy;
    }
    public function izpisiCeloto() {
        echo '<div><img src="'. $this->url . '" . alt="'. $this->alt . '"></div>'; //shorter variable

        echo "<p>" . $this->content . "</p>";

        echo "<p>" . $this->authoredBy . "</p>";

        echo "<p>" . date("d, m, Y", $this->authoredOn) . "</p>";

    }
    public function izpisiOsnutek() {
        echo '<div><img src="'. $this->url . '" . alt="'. $this->alt . '"></div>'; //shorter variable

        echo "<p>" . substr($this->content, 0, 150) . ' etc...' . "</p>";

        echo "<p>" . $this->authoredBy . "</p>";

        echo "<p>" . date("d, m, Y", $this->authoredOn) . "</p>";

        echo '<a href=' . "article.php?ID=$this->id". '>' . 'Preberi Več' . '</a>';
    }
    public function izpisiNaslov() {
        echo "<h1>" . $this->title . "</h1>";
        return $this;
    }
}
