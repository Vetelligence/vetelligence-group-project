import React, { useState, useEffect } from 'react';
import {useSelector, useDispatch} from 'react-redux';
import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableContainer from '@mui/material/TableContainer';
import TableHead from '@mui/material/TableHead';
import TableRow from '@mui/material/TableRow';

import Paper from '@mui/material/Paper';



function AdminVetTable () {
    const veteranList = useSelector(store => store.admin.veteranList )
    const dispatch = useDispatch();
    useEffect(() => {
        dispatch({
            type: 'FETCH_VETERANS',
        })
    }, [])

    const rows = veteranList.map((veteran) => {
        return {
            firstName: veteran.first_name,
            lastName: veteran.last_name,
            city: veteran.city,
            state: veteran.state,
            email: veteran.email,
            phone: veteran.phone_number,
            mos: veteran.mos_id,
            status: veteran.status,
            key: veteran.id

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
            id: 'mos',
            numeric: true,
            disablePadding: false,
            label: 'MOS',
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
                    {rows.map((row) => (
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
                            <TableCell align="right">{row.mos}</TableCell>
                            <TableCell align="right">{row.status}</TableCell>

                        </TableRow>
                    ))}
                </TableBody>
            </Table>
        </TableContainer>
    );

}




export default AdminVetTable