<?php

class Color
{
    public $red;
    public $green;
    public $blue;
}


interface ColorBuilderInterface
{
    public function setRed();
    public function setGreen();
    public function setBlue();
    public function getColor();
}

class ColorDirector
{
    public function build(ColorBuilderInterface $builder)
    {
        $builder->setRed();
        $builder->setGreen();
        $builder->setBlue();

        return $builder->getColor();
    }
}

final class RedColorBuilder implements ColorBuilderInterface
{
    private $color;

    public function __construct()
    {
        $this->color = new Color();
    }

    public function setRed()
    {
        $this->color->red = 255;
    }

    public function setGreen()
    {
        $this->color->green = 0;
    }

    public function setBlue()
    {
        $this->color->blue = 0;
    }

    public function getColor()
    {
        return $this->color;
    }
}

final class GreenColorBuilder implements ColorBuilderInterface
{
    private $color;

    public function __construct()
    {
        $this->color = new Color();
    }

    public function setRed()
    {
        $this->color->red = 0;
    }

    public function setGreen()
    {
        $this->color->green = 255;
    }

    public function setBlue()
    {
        $this->color->blue = 0;
    }

    public function getColor()
    {
        return $this->color;
    }
}

final class BlueColorBuilder implements ColorBuilderInterface
{
    private $color;

    public function __construct()
    {
        $this->color = new Color();
    }

    public function setRed()
    {
        $this->color->red = 0;
    }

    public function setGreen()
    {
        $this->color->green = 0;
    }

    public function setBlue()
    {
        $this->color->blue = 255;
    }

    public function getColor()
    {
        return $this->color;
    }
}


$director = new ColorDirector();

$redColor   = $director->build(new RedColorBuilder());
$greenColor = $director->build(new GreenColorBuilder());
$blueColor  = $director->build(new BlueColorBuilder());

var_dump($redColor);
var_dump($greenColor);
var_dump($blueColor);
