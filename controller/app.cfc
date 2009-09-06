<cfcomponent output="false">
	<cffunction name="prefuseaction">
		<cfargument name="myFusebox" />
		<cfargument name="event" />
	</cffunction>

	<cffunction name="postfuseaction">
		<cfargument name="myFusebox" />
		<cfargument name="event" />
        <cfscript>
            event.setValue('notices', session.messages.notice);
            if(ArrayLen(session.messages.notice)){
                myFusebox.do( action="layout.notices", contentvariable="noticeContent");
                session.messages.notice = ArrayNew(1);
            }
        </cfscript>
		<!--- do the layout --->
		<cfset myFusebox.do( action="layout.main" ) />

	</cffunction>

</cfcomponent>