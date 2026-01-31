<cfcomponent output="false">
    <cffunction name="writeToDb" access="remote" returnformat="JSON" httpMethod="POST">
        <cfset rawData = getHTTPRequestData().content>
        <cfset data = deserializeJSON(rawData)>
        <cfreturn serializeJSON(data)>
    </cffunction>
</cfcomponent>