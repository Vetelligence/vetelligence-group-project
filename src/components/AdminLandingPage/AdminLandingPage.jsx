import AdminEmployerTable from "./components/AdminEmployerTable";
import AdminVetTable from "./components/AdminVetTable";


function AdminLandingPage() {


    return (
        <>
        <h2>Employers</h2>
        <br></br>
        <AdminEmployerTable />
        <br></br>
        <h2>Veterans</h2>
        <br></br>
        <AdminVetTable />
        </>
    );
}



export default AdminLandingPage