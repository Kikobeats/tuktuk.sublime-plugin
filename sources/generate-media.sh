#!/bin/bash

generate(){
    name=`echo $line | tr ' ' '-'`
    echo "<snippet><content><![CDATA[
<a href=\"#\" class=\"$2 icon ok\"></a>
]]></content>
<tabTrigger>tuk-icon-$2</tabTrigger>
<scope>source.html</scope>
<description></description>
</snippet>" > $1/tuk-media-$name.sublime-snippet
}

while read line
do
   generate $1 $line
done < $2