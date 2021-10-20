import React, { useEffect } from 'react';
import styled from '@emotion/styled'

const Container = styled.div`
background-color: white;
border: 2px solid grey;
margin-left: 3em;
margin-right: 3em;
text-align: left;
border-radius: 5px;
padding: 15px 10px;
height: 70px;
z-index: 2;
position: sticky;
top: 0;
`;

const ButtonCont = styled.div`
float: right;
background-color: white;
padding: 0 2px;
border: 2px dashed grey;
`;

const Apk = styled.span`
margin-left:10px;
font-size: 25px;
float: left;
`;

const FileName = styled.span`
color: #2f4bff;
`;

const Button = styled.button`
border: 2px solid grey;
border-radius: 0.2em;
cursor: pointer;
font-size: 1rem;
line-height: 1;
margin: 2px;
padding: 0.3em 0.8em;
text-align: center;
text-transform: uppercase;
font-family: 'Montserrat', sans-serif;
transition: box-shadow 300ms ease-in-out, color 300ms ease-in-out;
&:hover {
    box-shadow: 0 0 40px 40px #2f4bff inset;
    color: white;
}
`;

function Nav(props) {

    function handleManifest() {
        var element = document.getElementById('manifest');
        var offset = 90;
        var elementPosition = element.getBoundingClientRect().top;
        var offsetPosition = elementPosition - offset;

        window.scrollBy({
            top: offsetPosition,
            behavior: "smooth"
        })
    }

    function handleBytecode() {
        var element = document.getElementById('bytecode');
        var offset = 90;
        var elementPosition = element.getBoundingClientRect().top;
        var offsetPosition = elementPosition - offset;

        window.scrollBy({
            top: offsetPosition,
            behavior: "smooth"
        })
    }

    function handleSecrets() {
        var element = document.getElementById('secret');
        var offset = 90;
        var elementPosition = element.getBoundingClientRect().top;
        var offsetPosition = elementPosition - offset;

        window.scrollBy({
            top: offsetPosition,
            behavior: "smooth"
        })
    }

    function handleVulns() {
        var element = document.getElementById('vulns');
        var offset = 90;
        var elementPosition = element.getBoundingClientRect().top;
        var offsetPosition = elementPosition - offset;

        window.scrollBy({
            top: offsetPosition,
            behavior: "smooth"
        })
    }

    useEffect(() => {
        var delay = 500;
        setTimeout(function() {
            document.getElementById("report").scrollIntoView({behavior: "smooth"});
        }, delay)
    }, [props.hashkey])

    function truncate(str, n){
        return (str.length > n) ? str.substr(0, n-1) + '...' : str;
      };

    return(
        <Container id="report">
            <Apk>Report on <FileName>{truncate(props.name, 40)}</FileName></Apk>
            <ButtonCont>
                <Button onClick={handleManifest}>Manifest</Button>
                <Button onClick={handleBytecode}>Bytecode</Button>
                <Button onClick={handleVulns}>Vulnerabilities</Button>
                <Button onClick={handleSecrets}>Secrets</Button>
            </ButtonCont>
        </Container>
    );
}

export default Nav;