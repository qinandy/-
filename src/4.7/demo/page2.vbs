Set poster = CreateObject("Microsoft.XMLHTTP")
Set XMLDocument=CreateObject("Microsoft.XMLDOM")
sub update()
poster.Open "GET", "page2.xml", False
poster.send
XMLDocument.async=false
XMLDocument.loadXML(poster.responseText)
set node=XMLDocument.documentElement.selectSingleNode("//object[@id=" & chr(34) & "49265" & chr(34) & "]/value")
v= node.firstChild.nodeValue
Span49265.innerHTML="<STRONG>" & v & "</STRONG>"
set node=XMLDocument.documentElement.selectSingleNode("//object[@id=" & chr(34) & "90597" & chr(34) & "]/value")
v= node.firstChild.nodeValue
Span90597.innerHTML="<STRONG>" & v & "</STRONG>"
 window.settimeout "update()",1000 
end sub
