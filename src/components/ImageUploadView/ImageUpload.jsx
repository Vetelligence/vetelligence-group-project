import {useEffect, useState} from 'react'
import {useDispatch} from 'react-redux'

function ImageUpload() {
    const [fileToSend, setFileToSend] = useState({})
    const dispatch = useDispatch();


    function handleFileSelect(event) {
        console.log(event.target.files[0])
        setFileToSend(event.target.files[0]);
    }

    function handleFileSubmit(event){
        event.preventDefault();
        dispatch({
            type:'UPDATE_PROFILE_PICTURE',
            payload: fileToSend
        })
    }
    

    return (
        <>
        <form onSubmit={handleFileSubmit} >
            <input
            onChange={handleFileSelect}    
            type="file"
            accept="image/*" />
            <button type={'submit'}>Upload</button>
            
        </form>
        <img src='https://vetelligencepfps.s3.us-east-2.amazonaws.com/22dd87c4092756933db6e5b75d9e8e2a' />
        </>
    )

}









export default ImageUpload