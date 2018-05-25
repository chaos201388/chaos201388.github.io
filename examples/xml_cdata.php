<?php

$string = <<<HEREDOC
<?xml version="1.0" encoding="utf-8"?>
<example-list>
<example>
  <title>Math</title>
  <description><![CDATA[Proof: 1 + 1 > 1]]></description>
</example>
</example-list>
HEREDOC;

$xml = simplexml_load_string($string, 'SimpleXMLElement', LIBXML_NOCDATA);

var_dump($xml);
