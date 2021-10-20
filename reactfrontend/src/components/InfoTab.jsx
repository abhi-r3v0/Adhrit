import React from 'react'
import styled from '@emotion/styled'
import FadeIn from 'react-fade-in'

const Info = styled.div`
background-image: linear-gradient(to right, #413d4d, #55515f, #696672, #7e7c85, #949399);
color: white;
width: 70%;
margin: auto;
text-align: left;
padding: 2px 15px;
margin-top: 0.9em;
border-radius: 10px;
border: 2px solid white;
`;

const Heading = styled.h3`
`;

function InfoTab(props) {
    return(
        <div>
            <FadeIn>
            <Info>
                <Heading>{props.data[0]}</Heading>
                {props.data.map( function(data, i) {
                    if(i !==0) {
                        return <p>{data}</p>
                    }
                })}
            </Info>
            </FadeIn>
        </div>
    );
}

export default InfoTab;