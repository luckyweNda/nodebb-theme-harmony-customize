{{{ if !notifications.length }}}
<li class="no-notifs text-center"><a href="#" class="text-decoration-none text-reset">[[notifications:no_notifs]]</a></li>
{{{ end }}}

{{{ each notifications }}}
<li class="{./readClass} mb-2" data-nid="{./nid}" data-path="{./path}" {{{ if ./pid }}}data-pid="{./pid}"{{{ end }}}{{{ if ./tid }}}data-tid="{./tid}"{{{ end }}}>
	<div class="d-flex gap-1 justify-content-between align-items-center">
		<a href="{./path}" class="notification-chat-content text-decoration-none text-reset">
			<span class="text">{./bodyShort}</span>
		</a>
		<div class="notification-chat-controls">
			{{{ if ./nid }}}
			<button class="mark-read btn btn-light btn-sm" aria-label="Mark Read">
				<i class="unread fa fa-xs fa-circle text-primary {{{ if ./read }}}hidden{{{ end }}}"></i>
				<i class="read fa fa-xs fa-circle-o text-secondary {{{ if !./read }}}hidden{{{ end }}}"></i>
			</button>
			{{{ end }}}
		</div>
	</div>
	<div class="relTime text-muted">{./timeagoLong}</div>
</li>
{{{end}}}
