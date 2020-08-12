<?php

/**
 * Class ISBN13
 *
 * References:
 * 1. https://isbn-information.com/check-digit-for-the-13-digit-isbn.html
 */
class ISBN13
{
    private $isbn13;

    public function setISBN13(string $isbn13)
    {
        $this->isbn13 = $isbn13;
    }

    public function isValidated(): boolean
    {
        if (empty($this->isbn13)) {
            return false;
        }

        if (preg_match('/^[0-9]{13}$/', $this->isbn13) === 0) {
            return false;
        }

        if ($this->parseCheckDigit($this->isbn13) !== $this->calculateCheckDigit($this->isbn13)) {
            return false;
        }

        return true;
    }

    private function parseCheckDigit(string $isbn13): string
    {
        // 取出第十三位數
        return substr($isbn13, -1, 1);
    }

    private function calculateCheckDigit(string $isbn13): string
    {
        // 取出前十二位數
        $numberArray = str_split($isbn13);
        array_pop($numberArray);

        // 指派對應的乘數
        $multiplierArray = [1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1, 3];

        // 進行相乘
        $resultArray = array_map(
            function ($number, $multiplier) {
                return $number * $multiplier;
            },
            $numberArray, $multiplierArray
        );

        // 進行加總
        $total = array_sum($resultArray);

        // 取出餘數
        $remainder = $total % 10;

        // 返回 check digit
        if ($remainder === 0) {
            return (string) 0;
        } else {
            return (string) (10 - $remainder);
        }
    }
}

if (php_sapi_name() === 'cli') {
    $isbn13 = new ISBN13();
    $isbn13->setISBN13('9781861972712');
    var_dump($isbn13->validateISBN13());
}
