<?php

$string = <<<HEREDOC
<?xml version="1.0" encoding="utf-8"?>
<notebook>
<note>
  <title>Math</title>
  <description><![CDATA[Proof: 1 + 1 > 1]]></description>
</note>
<note>
  <title>English</title>
  <description><![CDATA[Good, Bad and Ugly]]></description>
</note>
</notebook>
HEREDOC;

$xml = new SimpleXMLElement($string, LIBXML_NOCDATA);

echo $xml->note[1]->description . "\n";
