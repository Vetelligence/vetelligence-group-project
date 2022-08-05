import React, { useEffect } from 'react';
import { useSelector, useDispatch } from 'react-redux';
import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableContainer from '@mui/material/TableContainer';
import TableHead from '@mui/material/TableHead';
import TableRow from '@mui/material/TableRow';
import Paper from '@mui/material/Paper';
import { createTheme, ThemeProvider } from '@mui/material/styles';
import { common } from '@material-ui/core/colors';
import EmpStatusSelect from './EmpStatusSelect';
import AdminDelete from './AdminDelete';

//This component holds the Employer table data on the Admin Page.
//This page connects to EmpStatusSelect.jsx for the Employer status drop down.
//This page also connects to the AdminDelete.jsx for the delete button option.
function AdminEmployerTable() {
    const employerList = useSelector(store => store.admin.employerList )
    console.log('This is employer list',employerList)
    const dispatch = useDispatch();
    useEffect(() => {
        dispatch({
            type: 'FETCH_EMPLOYERS',
        })
    },[])

    const rows = employerList.map((employer) => {
        return {
            firstName: employer.first_name,
            lastName: employer.last_name,
            city: employer.city,
            state: employer.state,
            email: employer.email,
            phone: employer.phone_number,
            company: employer.company,
            status: employer.status,
            key: employer.id
        }
    })

    const headCells = [
        {
            id: 'firstName',
            numeric: false,
            disablePadding: true,
            label: 'First',
        },
        {
            id: 'lastName',
            numeric: true,
            disablePadding: false,
            label: 'Last',
        },
        {
            id: 'city',
            numeric: true,
            disablePadding: false,
            label: 'City',
        },
        {
            id: 'state',
            numeric: true,
            disablePadding: false,
            label: 'State',
        },
        {
            id: 'email',
            numeric: true,
            disablePadding: false,
            label: 'E-Mail',
        },
        {
            id: 'phone',
            numeric: true,
            disablePadding: false,
            label: 'Phone',
        },
        {
            id: 'company',
            numeric: true,
            disablePadding: false,
            label: 'Company',
        },
        {
            id: 'status',
            numeric: true,
            disablePadding: false,
            label: 'Status',
        }
    ];

    const theme = createTheme({
        palette: {
          primary: {
            main: common.black
          },
          secondary: {
            main: '#6C63FE',
            darker: '#4EC4DE'
          }
        }
      });

    return (
        <TableContainer component={Paper} sx={{ minWidth: 200 }} className="employerTable">
            <Table sx={{ minWidth: 200 }} size="small" aria-label="a dense table">
                <TableHead>
                    <TableRow>
                        {headCells.map(cell => <TableCell key={cell.id} align="left">{cell.label} </TableCell>)}
                    </TableRow>
                </TableHead>
                <TableBody>
                    {rows[0] && rows.map((row) => (
                        <TableRow
                            key={row.key}
                            sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
                        >
                            <TableCell component="th" scope="row">
                                {row.firstName}
                            </TableCell>
                            <TableCell align="left">{row.lastName}</TableCell>
                            <TableCell align="left">{row.city}</TableCell>
                            <TableCell align="left">{row.state}</TableCell>
                            <TableCell align="left">{row.email}</TableCell>
                            <TableCell align="left">{row.phone}</TableCell>
                            <TableCell align="left">{row.company}</TableCell>
                            <TableCell align="left">{row.status === 'pending' ? <EmpStatusSelect id={row.key} empStatus={row.status}/> : row.status.toUpperCase()}</TableCell>
                            { row.status === 'pending' && <TableCell align="right"><ThemeProvider theme={theme}><AdminDelete id={row.key}/></ThemeProvider></TableCell>}
                        </TableRow>
                    ))}
                </TableBody>
            </Table>
        </TableContainer>
    );
}

export default AdminEmployerTable