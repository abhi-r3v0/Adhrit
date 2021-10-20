import React from 'react'
import Nav from './Nav'
import Tab from './Tab'

function Report(props) {

    return(
        <div>
            <Nav name={props.name} hashkey={props.hashkey}></Nav>
            <ol className="gradient-list">
                <span id="manifest">
            {Object.keys(props.dataM.data).map((keyName, i) => (
                <Tab data={props.dataM.data[keyName]} title={keyName} type="manifest" color="#dc3545" bgcolor="(to right, #191d33, #4d4d61, #858492, #c1c0c7, #ffffff);"></Tab>
            ))}
                </span>
                <span id="bytecode">
            {Object.keys(props.dataB.data).map((keyName, i) => (
                <Tab data={props.dataB.data[keyName]} title={keyName} type="bytecode" color="#191d33" bgcolor="(to right, #191d33, #4d4d61, #858492, #c1c0c7, #ffffff);"></Tab>
            ))}
                </span>
                <span id="vulns">
            {Object.keys(props.dataV.data).map((keyName, i) => (
                <Tab data={props.dataV.data[keyName]} title={keyName} type="vulnerabilities" color="#ff3d00" bgcolor="(to right, #191d33, #4d4d61, #858492, #c1c0c7, #ffffff);;"></Tab>
            ))}
                </span>
                <span id="secret">
            {Object.keys(props.dataS.data).map((keyName, i) => (
                <Tab data={props.dataS.data[keyName]} title={keyName} type="secret" color="#65af32" bgcolor="(to right, #191d33, #4d4d61, #858492, #c1c0c7, #ffffff);"></Tab>
            ))}
                </span>
            </ol>
        </div>
    )
}

export default Report;