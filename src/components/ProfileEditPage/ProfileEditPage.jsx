import RegisterForm from "../RegisterForm/RegisterForm";
import './ProfileEditPage.css';

//This component hosts the Register Form that allows Veterans to edit their
//profile info.
export const ProfileEditPage = () => {

    return(
        <div className="editPage">
            <RegisterForm page={'edit'}/>
        </div>
    )
}

