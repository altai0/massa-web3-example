import React, { useEffect, useState } from "react";
import {
  ClientFactory,
  INodeStatus,
  IAccount,
  DefaultProviderUrls,
  ICallData,
  IProvider,
  ProviderType,
  IClientConfig,
  IReadData,
  IEventFilter,
} from "@massalabs/massa-web3";
import { Client } from "@massalabs/massa-web3";
import "./App.css";

const sc_addr = "A12TqbcgnLRunKh22JtkrMkTm4hCNjP7YpwAvUoHjgp2pmhGhUq";

const baseAccount = {
  publicKey: "ut9mDR6B7pAnyYZKGTjtXRhzGLaRDKh9z3twRhvrjKgAKFgqL",
  privateKey: "2aFR89jVH4wiWFW1dzQ3xCx2i575w5xZS5DAu38cKka53VRkDC",
  address: "A12STskCiLPjAhRTS74tNU95KGdhF1FypfqqXXXyGYjibV4QwKTW",
} as IAccount;

const providers: Array<IProvider> = [
  {
    url: "http://127.0.0.1:33035",
    type: ProviderType.PUBLIC,
  } as IProvider,
  {
    url: "http://127.0.0.1:33034",
    type: ProviderType.PRIVATE,
  } as IProvider,
];
const web3ClientConfig = {
  providers,
  retryStrategyOn: true, // activate the backoff retry strategy
  periodOffset: 3, // set an offset of a few periods (default = 5)
} as IClientConfig;

type TNodeStatus = INodeStatus | null;

const web3Client: Client = new Client(web3ClientConfig, baseAccount);

function NodeInfo() {
  const [nodeStatus, setNodeStatus] = useState<TNodeStatus>(null);

  const getNodeStatusAsync = async () => {
    try {
      const nodeStatus: INodeStatus = await web3Client
        .publicApi()
        .getNodeStatus();
      setNodeStatus(nodeStatus);
    } catch (err) {
      console.error(err);
    }
  };

  useEffect(() => {
    getNodeStatusAsync();
  }, []);

  const getNodeOverview = (nodeStatus?: TNodeStatus): JSX.Element => {
    if (!nodeStatus) {
      return <p>"Massa düğüm bilgileri çekiliyor..."</p>;
    }
    return (
      <ul>
        <li>
          Massa Versiyon :{" "}
          <small style={{ color: "red" }}>{nodeStatus?.version}</small>
        </li>
        <li>
          Massa Düğüm id:{" "}
          <small style={{ color: "red" }}>{nodeStatus?.node_id}</small>
        </li>
        <li>
          Massa Düğüm İp:{" "}
          <small style={{ color: "red" }}>{nodeStatus?.node_ip}</small>
        </li>
        <li>
          Massa Zaman:{" "}
          <small style={{ color: "red" }}>{nodeStatus?.current_time}</small>
        </li>
        <li>
          Massa Döngü:{" "}
          <small style={{ color: "red" }}>{nodeStatus?.current_cycle}</small>
        </li>
      </ul>
    );
  };

  return getNodeOverview(nodeStatus);
}
async function CallSmartContractFunc(sc_addr: string, parametr: string) {
  await web3Client
    .smartContracts()
    .callSmartContract(
      {
        fee: 0,
        gasPrice: 0,
        maxGas: 200000,
        parallelCoins: 0,
        sequentialCoins: 0,
        targetAddress: sc_addr,
        functionName: "receive",
        parameter: parametr,
      } as ICallData,
      baseAccount
    )
    .then((txid) => {
      console.log("başarılı", txid);
    });
}
async function ReadSmartContractFunc(sc_addr: string) {
  await web3Client
    .smartContracts()
    .readSmartContract({
      fee: 0,
      maxGas: 200000,
      simulatedGasPrice: 0,
      targetAddress: sc_addr,
      targetFunction: "receive",
      parameter: "",
      callerAddress: baseAccount.address,
    } as IReadData)
    .then((data) => {
      console.log(data);
    });
}
async function EventFilterSC(sc_addr: string) {
  const eventsFilter = {
    start: null,
    end: null,
    original_caller_address: sc_addr,
    original_operation_id: null,
    emitter_address: null,
  } as IEventFilter;
  const events = await web3Client
    .smartContracts()
    .getFilteredScOutputEvents(eventsFilter);
  return events;
}
async function ListEvent(){
  const listEvents = await EventFilterSC(sc_addr);
  listEvents.map((number) => {
    return (
      <div>
        <li>{number.data}</li>
      </div>
    );
  });
};
//const listItems = numbers.map((number) =>  <li>{number}</li>);
//  targetAddress: "A12k2Uw16QMVqJsmbvbgBuc2obMcGDNQj2z1kXVgVXrprAfHeb6P",
//       functionName: "receive",
function App() {
  const [text, setText] = useState("");
  const [event, setEvent] = useState([]);

  const handleChange = (e: React.ChangeEvent<HTMLInputElement>) => {
    setText(e.target.value);
  };

  return (
    <div className="App">
      <header className="App-header">
        <p>Merhaba Massa.</p>
        <div>
          <NodeInfo />
          <ListEvent />
        </div>
        <div style={{ textAlign: "center" }}>
          <input
            style={{ margin: 30, padding: 11, width: 220 }}
            placeholder="Write what you want to write"
            onChange={handleChange}
          />
          <br />
          <button
            onClick={() => CallSmartContractFunc(sc_addr, text)}
            style={{
              width: 150,
              height: 35,
              backgroundColor: "gray",
              color: "white",
            }}
          >
            Call Smart Contract
          </button>
          <br />
          <button
            onClick={() => CallSmartContractFunc(sc_addr, text)}
            style={{
              width: 150,
              height: 35,
              backgroundColor: "gray",
              color: "white",
              marginTop: 12,
            }}
          >
            Fetch Events
          </button>
        </div>
      </header>
    </div>
  );
}

export default App;
