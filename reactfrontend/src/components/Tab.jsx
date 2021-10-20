import React, { useState, useEffect } from 'react'
import styled from '@emotion/styled'
import InfoTab from './InfoTab'

const Button = styled.button`
float: right;
font-family: "Raleway", sans-serif;
font-weight: 600;
color: white;
background-color: #0d6efd;
border: 0;
margin-left: 10px;
border-radius: 5px;
padding: 10px;
margin-top: -45px;
margin-bottom: 10px;
font-size: 15px;
&:hover {
    background-color: #0f5ffd;
}
`;

const Heading = styled.h3`
text-align: left;
margin-left: 10px;
// color: #2d3954;
color:white;
width: 87%
float: left;
`;

const Type = styled.button`
float: right;
color: white;
background-color: ${props => props.color};
border: 0;
margin-left: 10px;
border-radius: 5px;
padding: 10px;
margin-top: -45px;
text-transform: uppercase;
font-family: "Raleway", sans-serif;
font-weight: 900;
margin-bottom: 10px;
font-size: 15px;
`;

const List = styled.li`
border-radius: 0 0.5rem 0.5rem 0.5rem;
counter-increment: gradient-counter;
margin-top: 1rem;
min-height: 3rem;
padding: 0.5rem 0.5rem 0.5rem 2rem;
position: relative;
background-image: linear-gradient${props => props.bgcolor};
transition: background-image 0.5s linear;
border: 2px solid white;
&:hover {
    background-image: linear-gradient(
        to right,
        hsl(211, 100%, 50%),
        hsl(179, 100%,40%)
      );
}
`;

const InfoLink = styled.a`
float: right;
margin-top: -42px;
display:inline-block;
padding:0.35em 1.2em;
border:0.1em solid white;
// margin:0 0.3em 0.3em 0;
border-radius:0.12em;
box-sizing: border-box;
text-decoration:none;
font-family:"Raleway", sans-serif;
font-weight:500;
color:#FFFFFF;
text-align:center;
transition: all 0.2s;
background-color: #708090;
border-radius: 10px;
&:hover {
background-color: #2F4F4F;
color:white;
}
`;

function Tab(props) {

    const [details, setDetails] = useState(false)
    const [bitbucket, setBitbucket] = useState(false)
    const [url, setUrl] = useState('')

    useEffect(() => (
        props.data.map((data) => {
            if(data.includes('https://bitbucket.org')) {
                setUrl(data);
                setBitbucket(true)
            }
            return;
        })
    ), [])


    function handleClick() {
        setDetails(!details)
    }

    return(
        <List bgcolor={props.bgcolor}>
            <Heading>{props.title}</Heading>
            <Button onClick={handleClick}>Show details</Button>
            <Type disabled={true} color={props.color}>{props.type}</Type>
            {details && <InfoTab data={props.data}></InfoTab>}
            {bitbucket && <InfoLink href={url}>Click here to know more...</InfoLink>}
        </List>
    );
}

export default Tab;