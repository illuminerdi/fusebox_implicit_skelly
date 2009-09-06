<cfcomponent output="false" hint="im in ur contrallers, extenzdin ur app" extends="app">
	<cffunction name="prefuseaction">
		<cfargument name="myFusebox">
		<cfargument name="event">
		<cfscript>
			super.prefuseaction(myFusebox, event);
		</cfscript>
	</cffunction>

	<cffunction name="postfuseaction">
		<cfargument name="myFusebox">
		<cfargument name="event">
		<cfscript>
			super.postfuseaction(myFusebox, event);
		</cfscript>
	</cffunction>

  <cffunction name="main">
		<cfargument name="myFusebox">
		<cfargument name="event">
		<cfscript>
      arrayAppend(session.messages.notice, "This is an example of a session-scoped message.");
      event.setValue("greeting", "Hello, World!");
      myFusebox.do(action = "v_simple.main", contentvariable = "bodyContent");
		</cfscript>
	</cffunction>

	<cffunction name="secondary">
	  <cfargument name="myFusebox"/>
	  <cfargument name="event"/>
	  <cfscript>
	    event.setValue("greeting", "Hello, Secondary World!");
	    myFusebox.do(action="v_simple.main", contentvariable = "bodyContent");
	  </cfscript>
	</cffunction>
</cfcomponent>