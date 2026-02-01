<cfcomponent output="false">
    <cffunction name="writeToDb" access="remote" returnformat="JSON" httpMethod="GET">
        <cfquery name="dbReturn" datasource="PracticeDB">
            SELECT * FROM Users;
        </cfquery>

        <cfset users = []>
        <cfloop query="dbReturn">
            <arrayAppend users, {
                "email": dbReturn.Email,
                "users": dbReturn.Users,
                "jobType": dbReturn.JobTypes
            }
        </cfloop>
        <cfreturn users>
    </cffunction>
</cfcomponent>