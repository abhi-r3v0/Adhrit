import React from 'react'
import styled from "@emotion/styled"

const Text = styled.div`
font-size: 12px;
color: white;
text-decoration: underline;
`;

const TinyText = styled.span`
font-size: 11px;
color: white;
`;

function Footer() {
    return(
        <div>
            <Text>Android Security Toolkit - ADHRIT</Text>
            <TinyText>v3.1</TinyText>
        </div>

    );
}

export default Footer;