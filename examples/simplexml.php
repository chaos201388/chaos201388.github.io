<?php

$string = <<<HEREDOC
<?xml version="1.0" encoding="utf-8"?>
<demo>
<example>
  <title>Math</title>
  <description><![CDATA[Proof: 1 + 1 > 1]]></description>
</example>
<example>
  <title>English</title>
  <description><![CDATA[Good, Bad and Ugly]]></description>
</example>
</demo>
HEREDOC;

$xml = new SimpleXMLElement($string, LIBXML_NOCDATA);

echo $xml->example[1]->description;
