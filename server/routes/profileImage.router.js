const express = require('express');
const pool = require('../modules/pool');
const router = express.Router();
const dotenv = require('dotenv')
const aws = require('aws-sdk')
const crypto = require('crypto');
const { promisify } = require("util");
require('dotenv').config();


const randomBytes = promisify(crypto.randomBytes)

dotenv.config()

const region = process.env.AWS_BUCKET_REGION;
const bucketName = process.env.AWS_BUCKET_NAME;
const accessKeyId = process.env.AWS_ACCESS_KEY_ID;
const secretAccessKey = process.env.AWS_SECRET_ACCESS_KEY;

const s3 = new aws.S3({

    region,
    accessKeyId,
    secretAccessKey,
    signatureVersion: 'v4'
});





async function uploadURL() {
    const rawBytes = await randomBytes(16)
    const imageName = rawBytes.toString('hex')
    
    const params = ({
        Bucket: bucketName,
        Key: imageName,
        Expires: 60
    })

    return  await s3.getSignedUrlPromise('putObject', params)
}

console.log(uploadURL())

router.get('/', async (req, res) => {


   
    const url = await uploadURL();
    console.log(url)
    res.send( url )
})

module.exports = router;
