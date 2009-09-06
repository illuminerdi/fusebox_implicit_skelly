<cfcomponent extends="fusebox5.Application" output="false">
	<!---
		sample Application.cfc for ColdFusion MX 7 and later compatible systems
	--->

	<!--- set application name based on the directory path --->
	<cfset this.name = right(REReplace(getDirectoryFromPath(getCurrentTemplatePath()),'[^A-Za-z]','','all'),64) />

    <!--- application data here --->
    <cfscript>
        this.sessionManagement = true;
    </cfscript>

	<cfscript>
		// must enable implicit (no-XML) mode!
		FUSEBOX_PARAMETERS.allowImplicitFusebox = true;

		// the rest is taken straight from the traditional fusebox.xml skeleton:
		FUSEBOX_PARAMETERS.defaultFuseaction = "testing.main";
		// you may want to change this to development-full-load mode:
		FUSEBOX_PARAMETERS.mode = "development-full-load";
		FUSEBOX_PARAMETERS.conditionalParse = true;
		// change this to something more secure:
		FUSEBOX_PARAMETERS.password = "skeleton";
		FUSEBOX_PARAMETERS.strictMode = true;
		FUSEBOX_PARAMETERS.debug = true;
		// we use the core file error templates:
		FUSEBOX_PARAMETERS.errortemplatesPath = "/fusebox5/errortemplates/";

		// HEY THERE! Here we have some extra config I like to use that you can use if you'd like:
		// FUSEBOX_PARAMETERS.fuseactionVariable = "fa";
		// FUSEBOX_PARAMETERS.myself = "/index.cfm/#FUSEBOX_PARAMETERS.fuseactionVariable#/";
		// FUSEBOX_PARAMETERS.queryStringStart = "/";
		// FUSEBOX_PARAMETERS.queryStringSeparator = "/";
		// FUSEBOX_PARAMETERS.queryStringEqual = "/";

		// These are all default values that can be overridden:
		// FUSEBOX_PARAMETERS.fuseactionVariable = "fuseaction";
		// FUSEBOX_PARAMETERS.precedenceFormOrUrl = "form";
		// FUSEBOX_PARAMETERS.scriptFileDelimiter = "cfm";
		// FUSEBOX_PARAMETERS.maskedFileDelimiters = "htm,cfm,cfml,php,php4,asp,aspx";
		// FUSEBOX_PARAMETERS.characterEncoding = "utf-8";
		// FUSEBOX_PARAMETERS.strictMode = false;
		// FUSEBOX_PARAMETERS.allowImplicitCircuits = false;

		// force the directory in which we start to ensure CFC initialization works:
		FUSEBOX_CALLER_PATH = getDirectoryFromPath(getCurrentTemplatePath());
	</cfscript>

	<!---
		if you define any onXxxYyy() handler methods, remember to start by calling
			super.onXxxYyy(argumentCollection=arguments)
		so that Fusebox's own methods are executed before yours
	--->

	<cffunction name="onFuseboxApplicationStart">

		<cfset super.onFuseboxApplicationStart() />

		<!--- code formerly in fusebox.appinit.cfm or the appinit global fuseaction --->
		<cfset myFusebox.getApplicationData().startTime = now() />

        <!--- THIS IS IMPORTANT - this tells your app where it is living on a given server. Blank value means you live at the root. --->
        <!--- TODO: get this working automatically, without having to touch it. --->
        <cfset myFusebox.getApplicationData().appPath = "/" />

        <!--- REACTOR! --->
		<cfset application.Reactor = CreateObject("component", "reactor.reactorFactory").init(expandPath("#myFusebox.getApplicationData().appPath#config/reactor.xml")) />

        <!--- secure ldap invocation --->
        <cfset application.app_cuid = 'app_cuid' />
        <cfset application.app_pass = 'app_pass' />
        <cfset application.LDAP = createObject("component", "model.ldap.LDAP").init(application.app_cuid, application.app_pass) />
	</cffunction>

    <cffunction name="onSessionStart">
        <cfscript>
            super.onSessionStart();
            session.messages = StructNew();
            session.messages.notice = ArrayNew(1);
        </cfscript>
    </cffunction>

	<cffunction name="onRequestStart">
		<cfargument name="targetPage" />

		<cfset super.onRequestStart(arguments.targetPage) />

		<!--- formerly in fusebox.init.cfm --->
		<cfset self = myFusebox.getSelf() />
		<cfset myself = myFusebox.getMyself() />
	</cffunction>

</cfcomponent>