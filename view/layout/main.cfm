<cfoutput>
        <div>This is an XML-free skeleton Fusebox 5.5 application.</div>
        <div><cfif isdefined("noticeContent")>#noticeContent#</cfif></div>
        <hr />
        <!--- TODO: stop using isdefined, but i don't think that's possible here. --->
        <cfif isdefined("bodyContent")>#bodyContent#</cfif>
        <hr />
        <div align="right">Powered by Fusebox 5.5!
                (build <cfoutput>#myFusebox.getApplication().getVersion()# - #myFusebox.getApplication().mode#</cfoutput>)</div>
</cfoutput>