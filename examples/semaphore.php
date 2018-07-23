<?php

$date = new DateTime();

$key = $date->getTimestamp();

$semId = sem_get($key);

if (sem_acquire($semId, true)) {
    echo 'Sleep one second ...';
    sleep(1);

    sem_release($semId);
} else {
    throw new Exception('Please try again later.');
}

sem_remove($semId);
