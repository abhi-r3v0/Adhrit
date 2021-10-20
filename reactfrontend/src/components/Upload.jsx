import React, { useState, useEffect } from 'react';
import axios from 'axios'
import styled from '@emotion/styled'
import AdhritLogo from '../assets/AdhritLogo.png'
import cancel from '../assets/cancel.png'
import { useAlert } from 'react-alert'
import '../style.css'
import Loader from 'react-loader-spinner';
import Report from './Report'
import Footer from './Footer'

const Parent = styled.div`
position: relative;
`;

const LoaderContainer = styled.div`
width: "100%";
height: "100%"; 
display: "flex";
justify-content: "center";
align-items: "center";
`;

const Logo = styled.img`
width: 19%;
height: 25%;
display: block;
margin: auto;
padding-top: 140px;
padding-bottom: 50px;
`;

const ErrImg = styled.img`
width: 6%;
float:left;
margin-right: 35px;
margin-left: 35px;
`;

const ErrMsg = styled.span`
margin-left: -100px;
`;

const FileDropArea = styled.div`
position: relative;
margin: auto;
color: white;
display: flex;
align-items: center;
background-color: #2f4bff;
width: 450px;
max-width: 100%;
padding: 25px;
border: 2px dashed rgba(255, 255, 255, 0.4);
border-radius: 20px;
transition: 0.2s;
opacity: ${props => props.isActive}
`;

const Msg = styled.span`
background-color: rgba(255, 255, 255, 0.04);
border: 1px solid rgba(255, 255, 255, 0.1);
border-radius: 3px;
padding: 8px 15px;
margin-right: 10px;
font-size: 12px;
text-transform: uppercase;
`;

const FileMsg = styled.span`
font-size: small;
font-weight: 300;
line-height: 1.4;
white-space: nowrap;
overflow: hidden;
text-overflow: ellipsis;
`;

const FileInput = styled.input`
position: absolute;
left: 0;
top: 0;
height: 100%;
width: 100%;
cursor: pointer;
opacity: 0;
&:focus {
  outline: none;
}
`;

const Button = styled.button`
display: inline-block;
text-align: center;
text-transform: uppercase;
font-weight: bold;
margin-bottom: 4em;
margin-top: 2em;
border: solid 1px transparent;
border-radius: 10px;
padding: 0.5em 3em;
color: #ffffff;
background-color: #2d3954;
font-size: 23px;
&:active {
transform: translateY(1px);
filter: saturate(150%);
}
`;

const Error = styled.div`
background-color: #ca3c3c;
color: white;
border-radius: 5px;
width: 25%;
margin: auto;
padding: 14px 0;
`;

function Upload(props) {

    const alert = useAlert();
    const [file, setFile] = useState(null);
    const [text, setText] = useState("or drag and drop apk here")
    const [hashkey, setHash] = useState("");
    const [active, setActive] = useState("0.7")
    const [loading, setLoading] = useState(false);
    const [manifestData, setManifest] = useState(null);
    const [bytecodeData, setBytecode] = useState(null)
    const [vulns, setVulns] = useState(null);
    const [secrets, setSecrets] =useState(null);
    const [isManifest, setisManifest] = useState(false);
    const [isBytecode, setisBytecode] = useState(false);
    const [isVulns, setisVulns] = useState(false);
    const [isSecret, setisSecret] = useState(false);
    const [error, Seterror] = useState(false);
  
    const uploadFile = async (formData) => {
      let res = null
      setLoading(true)
      try {
        res = await axios.post(`http://127.0.0.1:5000/scan`, formData);
      } catch (error) {
        console.log(error)
        Seterror(true)
      }
      setLoading(false)
      if(res !== null) {
        setHash(res.data.hash_key);
      }
    };

    useEffect(() => {
      if (hashkey !== "") {
        const getManifest = async () => {
            const data = await axios.get(`http://127.0.0.1:5000/report/${hashkey}/manifest`)
            // console.log(data)
            setManifest(data)
            setisManifest(true)
          }
        const getBytecode = async () => {
            const bytecodeData = await axios.get (`http://127.0.0.1:5000/report/${hashkey}/bytecode`)
            // console.log(bytecodeData)
            setBytecode(bytecodeData);
            setisBytecode(true);
          }
        const getVulns = async () => {
          const vulns = await axios.get (`http://127.0.0.1:5000/report/${hashkey}/vulns`)
          // console.log(vulns)
          setVulns(vulns)
          setisVulns(true)
        }
        const getSecrets = async () => {
          const secrets = await axios.get(`http://127.0.0.1:5000/report/${hashkey}/secrets`)
          // console.log(secrets)
          setSecrets(secrets)
          setisSecret(true)
        }
        getManifest();
        getBytecode();
        getVulns();
        getSecrets()
      }
    }, [hashkey]);

    function handleSubmit() {
      if(file === null) {
          alert.show("No file uploaded")
      } else if (file.type!=="application/vnd.android.package-archive") {
          alert.show("Wrong format Only .apk files accepted")
      } else {
        const formData = new FormData();
        formData.append("file", file, file.name);
        uploadFile(formData);
      }
    }

    function handleChange(evt) {
      setFile(evt.target.files[0]);
      setText(evt.target.files[0].name)
    }

    function handleDrag() {
        setActive("1");
    }

    function handleLeave() {
        setActive("0.8");
    }

    return(
        <Parent>
            <Logo src={AdhritLogo}></Logo>
            {loading ? 
            <LoaderContainer>
            <Loader type="ThreeDots" color="#FFFFFF" height="100" width="100"></Loader>
            </LoaderContainer>
            : 
            error ?  <Error><ErrImg src={cancel}></ErrImg><ErrMsg>Oops!, Something went wrong :(</ErrMsg></Error> :
            <FileDropArea isActive={active} onDragEnter={handleDrag} onDragLeave={handleLeave}>
                <Msg>Choose file</Msg>
                <FileMsg>{text}</FileMsg>
                <FileInput type="file" onChange={handleChange}></FileInput>
            </FileDropArea> }
            <Button type="submit" onClick={handleSubmit} disabled={loading}>Scan</Button>
            {isManifest && isBytecode && isVulns && isSecret ? <Report dataM={manifestData} dataB={bytecodeData} dataV={vulns} dataS={secrets} name={file.name} hashkey={hashkey}></Report> : ""}
        <Footer></Footer>
        </Parent>
    );
}

export default Upload;