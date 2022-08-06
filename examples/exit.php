#!/usr/bin/php
<?php

function shutdown()
{
    echo 'shutdown' . PHP_EOL;
}

class DestructorOne
{
    public function __construct(int $index)
    {
        $this->index = $index;
    }

    public function __destruct()
    {
        echo 'destructor one #' . $this->index . PHP_EOL;
    }
}

class DestructorTwo
{
    public function __construct(int $index)
    {
        $this->index = $index;
    }

    public function __destruct()
    {
        echo 'destructor two #' . $this->index . PHP_EOL;
    }
}

register_shutdown_function('shutdown');

echo phpversion() . PHP_EOL;

new DestructorOne(1);
new DestructorTwo(1);
new DestructorTwo(2);

echo 'exit' . PHP_EOL;
exit(0);

// 8.1.8
// destructor one #1
// destructor two #1
// destructor two #2
// exit
// shutdown
