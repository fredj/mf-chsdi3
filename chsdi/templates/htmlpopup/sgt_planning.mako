# -*- coding: utf-8 -*-

<%inherit file="base.mako"/>

<%def name="table_body(c, lang)">
<%
    c['pmarea_id'] = True
    lang = lang if lang in ('fr','it') else 'de'
    pmname = 'pmname_%s' % lang
    pmkind = 'pmkind_%s' % lang
    coordlevel = 'coordlevel_%s' % lang
    planningstatus = 'planningstatus_%s' % lang
    web = 'web_%s' % lang
%>
    <tr><td class="cell-left">${_('ch.bfe.sachplan-geologie-tiefenlager.pmname')}</td>           <td>${c['attributes'][pmname] or '-'}</td></tr>
    <tr><td class="cell-left">${_('ch.bfe.sachplan-geologie-tiefenlager.pmkind')}</td>           <td>${c['attributes'][pmkind] or '-'}</td></tr>
    <tr><td class="cell-left">${_('ch.bfe.sachplan-geologie-tiefenlager.coordlevel')}</td>       <td>${c['attributes'][coordlevel] or '-'}</td></tr>
    <tr><td class="cell-left">${_('ch.bfe.sachplan-geologie-tiefenlager.planningstatus')}</td>   <td>${c['attributes'][planningstatus] or '-'}</td></tr>
    <tr><td class="cell-left">${_('ch.bfe.sachplan-geologie-tiefenlager.validfrom')}</td>        <td>${c['attributes']['validfrom'] or '-'}</td></tr>
    <tr><td class="cell-left">${_('ch.bfe.sachplan-geologie-tiefenlager.validuntil')}</td>       <td>${c['attributes']['validuntil'] or '-'}</td></tr>
    <tr><td class="cell-left">${_('ch.bfe.sachplan-geologie-tiefenlager.description')}</td>      <td>${c['attributes']['description'] or '-'}</td></tr>
% if c['attributes'][web]:
    <tr><td class="cell-left">${_('ch.bfe.sachplan-geologie-tiefenlager.web')}</td>            <td><a href="${c['attributes'][web]}" target="_blank">${_('tt_sachplan_objektblatt')}</a></td></tr>
% else:
    <tr><td class="cell-left">${_('ch.bfe.sachplan-geologie-tiefenlager.web')}</td>            <td> - </td></tr>
%endif
</%def>
