<cfoutput>
    <ul>
        <cfset notices = event.getValue('notices') />
        <cfloop from="1" to="#ArrayLen(notices)#" index="msg">
            <li>#notices[msg]#</li>
        </cfloop>
    </ul>
</cfoutput>