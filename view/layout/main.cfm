<cfoutput>
        <div>This is an XML-free skeleton Fusebox 5.5 application.</div>
        <div>#noticeContent#</div>
        <hr />
        #bodyContent#
        <hr />
        <div align="right">Powered by Fusebox 5.5!
                (build <cfoutput>#myFusebox.getApplication().getVersion()# - #myFusebox.getApplication().mode#</cfoutput>)</div>
</cfoutput>