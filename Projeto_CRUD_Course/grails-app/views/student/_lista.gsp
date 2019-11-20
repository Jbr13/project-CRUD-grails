<g:if test="${studentsList?.size() > 0}">

    <table>

        <tr>
            <th>Nome:</th>
            <th>Email:</th>
            <th>Telephone:</th>
            <th>Course:</th>
            <th>Status:</th>
        </tr>

        <g:each var="studentsInstance" in="${studentsList}">

            <tr>
                <th>${studentsInstance?.name}</th>
                <th>${studentsInstance?.email}</th>
                <th>${studentsInstance?.telephone}</th>
                <th>${studentsInstance?.course}</th>
                <th>${studentsInstance?.status}</th>

                <td>
                    <g:remoteLink controller="student" action="edit" update="divForm" id="${studentsInstance.id}">Edit</g:remoteLink>
                    &nbsp;
                    <a href="#" onclick="deleteStudent('${studentsInstance.id}')">Delete</a>
                </td>
            </tr>

        </g:each>
    </table>
</g:if>
<g:else>
    Nao ha estudantes cadastrados.
</g:else>