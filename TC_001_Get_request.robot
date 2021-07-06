*** Settings ***
Library     RequestsLibrary


*** Variables ***
${API_Base_Endpoint}          http://thetestingworldapi.com/


*** Test Cases ***
TC_001_Get_Request_Fetch_Status_Code
    Create Session          API_Testing             ${API_Base_Endpoint}
    ${Get_Response}=        GET On Session          API_Testing          api/studentsDetails/100001
    log to console          ${Get_Response.status_code}
    log to console          ${Get_Response.content}
    ${statusCode}=          convert to string                           ${Get_Response.status_code}
    should be equal         ${statusCode}                               200


TC_002_Get_Request_Fetch_Status_Code
    Create Session          API_Testing             ${API_Base_Endpoint}
    ${Get_Response}=        GET On Session          API_Testing          api/studentsDetails/23232
    log to console          ${Get_Response.status_code}
    log to console          ${Get_Response.content}
    ${statusCode}=          convert to string                           ${Get_Response.status_code}
    should not be equal         ${statusCode}                            100