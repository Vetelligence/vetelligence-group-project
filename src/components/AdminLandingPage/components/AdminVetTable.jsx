import React, { useEffect } from 'react';
import {useSelector, useDispatch} from 'react-redux';
import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableContainer from '@mui/material/TableContainer';
import TableHead from '@mui/material/TableHead';
import TableRow from '@mui/material/TableRow';
import Paper from '@mui/material/Paper';

//This component holds the Veteran Table data for the Admin Page.
function AdminVetTable () {
    const veteranList = useSelector(store => store.admin.veteranList);
    const dispatch = useDispatch();

    useEffect(() => {
        dispatch({
            type: 'FETCH_VETERANS',
        });
    }, []);

    const rows = veteranList.map((veteran) => {
        return {
            firstName: veteran.first_name,
            lastName: veteran.last_name,
            city: veteran.city,
            state: veteran.state,
            email: veteran.email,
            phone: veteran.phone_number,
            mos: veteran.mos,
            status: veteran.status,
            key: veteran.id

        }
    });

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
        <TableContainer component={Paper} className="vetTable" sx={{ minWidth: 200 }}>
            <Table sx={{ minWidth: 200 }} size="small" aria-label="a dense table">
                <TableHead>
                    <TableRow>
                        {headCells.map(cell => <TableCell key={cell.id} align="left">{cell.label} </TableCell>)}
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
                            <TableCell align="left">{row.lastName}</TableCell>
                            <TableCell align="left">{row.city}</TableCell>
                            <TableCell align="left">{row.state}</TableCell>
                            <TableCell align="left">{row.email}</TableCell>
                            <TableCell align="left">{row.phone}</TableCell>
                            <TableCell align="left">{row.mos}</TableCell>
                            <TableCell align="left">{row.status}</TableCell>
                        </TableRow>
                    ))}
                </TableBody>
            </Table>
        </TableContainer>
    );
}

export default AdminVetTable