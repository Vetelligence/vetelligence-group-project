import AdminEmployerTable from "./components/AdminEmployerTable";
import AdminVetTable from "./components/AdminVetTable";
import './AdminLandingPage.css'

// This component is only accessible to a logged in Admin.
// This page displays all employers and their status (this can be edited by an Admin).
// Veterans and their current status are also visible to the Admin.
function AdminLandingPage() {

    return (
        <div className="adminPage">
            <div className="adminContent">
                <h2 className="adminTitle">Employers</h2>
                <br></br>
                <AdminEmployerTable />
                <br></br>
                <h2 className="adminTitle">Veterans</h2>
                <br></br>
                <AdminVetTable />
            </div>
        </div>
    );
}

export default AdminLandingPage