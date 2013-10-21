#!/bin/bash

generate(){
    name=`echo $line | tr ' ' '-'`
    echo "
    <snippet><content><![CDATA[
    <section class=\"$line\">
        <div class=\"row text center\">
            <nav data-tuktuk=\"menu\" class=\"column_12 padding text bold\">
                <a href=\"#\" class=\"active\"><span class=\"icon camera\"></span>Shots<small>(100)</small></a>
                <a href=\"#\"><span class=\"icon heart\"></span>Likes<small>(3)</small></a>
                <a href=\"#\"><span class=\"icon group\"></span>Following<small>(192)</small></a>
                <a href=\"#\"><span class=\"icon star\"></span>Debuts<small>(160)</small></a>
            </nav>
        </div>
    </section>
    ]]></content>
        <tabTrigger>tuk-nav-$name</tabTrigger>
        <scope>source.html</scope>
        <description></description>
    </snippet>

" > $1/tuk-nav-$name.sublime-snippet
}

while read line
do
   generate $1 $line
done < $2