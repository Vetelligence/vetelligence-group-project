import React from 'react';
import { Link } from 'react-router-dom';
import LogOutButton from '../LogOutButton/LogOutButton';
import './Nav.css';
import { useSelector } from 'react-redux';
import Button from '@mui/material/Button';
import Menu from '@mui/material/Menu';
import MenuItem from '@mui/material/MenuItem';
import MenuIcon from '@mui/icons-material/Menu';

//Main Nav connected to all pages through the Header.
//Depending on whether the user is logged in, and based
//on the type of user, different Nav options are available
//or hidden.
function Nav() {
  const user = useSelector((store) => store.user);
  const [anchorEl, setAnchorEl] = React.useState(null);
  const open = Boolean(anchorEl);
  const handleClick = (event) => {
    setAnchorEl(event.currentTarget);
  };
  const handleClose = () => {
    setAnchorEl(null);
  };

  return (
    <div>
      <div className="nav">
        <Link to="/home">
          <img src="./images/Vetelligence-03.svg" className="titleImg" />
        </Link>
        <Button
          id="demo-positioned-button"
          aria-controls={open ? 'demo-positioned-menu' : undefined}
          aria-haspopup="true"
          aria-expanded={open ? 'true' : undefined}
          onClick={handleClick}
        >
          <MenuIcon sx={{ color: 'white' }} />
        </Button>
        <Menu
          id="demo-positioned-menu"
          aria-labelledby="demo-positioned-button"
          anchorEl={anchorEl}
          open={open}
          onClose={handleClose}
          anchorOrigin={{
            vertical: 'top',
            horizontal: 'left',
          }}
          transformOrigin={{
            vertical: 'top',
            horizontal: 'left',
          }}
        >
         {!user.id && ( <MenuItem>
          {/* // If there's no user, show login/registration links */}
            <Button>
              <Link className="navLink" to="/login">
                Login
              </Link>
            </Button>
          
          </MenuItem>
          )}
          <MenuItem >
            <Button>
              <Link className="navLink" to="/home">
                Home
              </Link>
            </Button>
          </MenuItem>
          {user.id && (
            <div>
              <MenuItem>
                <Button>
                  {user.user_type === "employer" && (
                  <Link className="navLink" to={`/employer/${user.id}`}>
                    Dashboard
                  </Link>
                  )}
                  {user.user_type === "veteran" && (
                  <Link className="navLink" to={`/veteran/${user.id}`}>
                    Dashboard
                  </Link>
                  )}
                  {user.user_type === "admin" && (
                  <Link className="navLink" to="/admin">
                    Dashboard
                  </Link>
                  )}
                </Button>
              </MenuItem>
              <MenuItem>
                <LogOutButton className="navLink" />
              </MenuItem>
            </div>)}
          <MenuItem>
            <Button >
              <Link className="navLink" to="/about">
                About
              </Link>
            </Button>
          </MenuItem>
        </Menu>
      </div>
    </div>
  );
}

export default Nav;