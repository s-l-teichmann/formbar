<%
if field._tree.attrib.get('expr'):
  css = "formbar-evaluate"
else:
  css = ""
%>
<div class="readonlyfield ${css}" id="${field.id}" expr="${field._tree.attrib.get('expr')}">
  % if renderer._config.showrawvalue == "true":
    ${_(field.value)}
  % else:
    ${_(field.get_value(""))}
  % endif
</div>
