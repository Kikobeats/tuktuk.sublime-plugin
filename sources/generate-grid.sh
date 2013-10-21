#!/bin/bash

generate(){
name=`echo $line | tr ' ' '-'`
echo "<snippet><content><![CDATA[
<span class=\"icon $2\"></span>
]]></content>
<tabTrigger>tuk-icon-$2</tabTrigger>
<scope>source.html</scope>
<description></description>
</snippet>" > $1/tuk-$name.sublime-snippet
}

while read line
do
   generate $1 $line
done < $2