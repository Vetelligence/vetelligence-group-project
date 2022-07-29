import AdminEmployerTable from "./components/AdminEmployerTable";
import AdminVetTable from "./components/AdminVetTable";


function AdminLandingPage() {


    return (
        <>
        <h2>Employers</h2>
        <AdminEmployerTable />
        <br></br>
        <h2>Veterans</h2>
        <AdminVetTable />
        </>
    );
}



export default AdminLandingPage