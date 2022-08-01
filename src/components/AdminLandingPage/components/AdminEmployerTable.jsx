import React, { useState, useEffect } from 'react';
import { useSelector, useDispatch } from 'react-redux';
import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableContainer from '@mui/material/TableContainer';
import TableHead from '@mui/material/TableHead';
import TableRow from '@mui/material/TableRow';
import Paper from '@mui/material/Paper';
import EmpStatusSelect from './EmpStatusSelect';
import AdminDelete from './AdminDelete';



function AdminEmployerTable() {
    const employerList = useSelector(store => store.admin.employerList )
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



    return (
        <TableContainer component={Paper}>
            <Table sx={{ maxWidth: 650 }} size="small" aria-label="a dense table">
                <TableHead>
                    <TableRow>
                        {headCells.map(cell => <TableCell key={cell.id} align="right">{cell.label} </TableCell>)}
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
                            <TableCell align="right">{row.lastName}</TableCell>
                            <TableCell align="right">{row.city}</TableCell>
                            <TableCell align="right">{row.state}</TableCell>
                            <TableCell align="right">{row.email}</TableCell>
                            <TableCell align="right">{row.phone}</TableCell>
                            <TableCell align="right">{row.company}</TableCell>
                            <TableCell align="right">{row.status === 'pending' ? <EmpStatusSelect id={row.key} empStatus={row.status}/> : row.status.toUpperCase()}</TableCell>
                            <TableCell align="right"><AdminDelete id={row.key}/></TableCell>


                        </TableRow>
                    ))}
                </TableBody>
            </Table>
        </TableContainer>
    );

}




export default AdminEmployerTable