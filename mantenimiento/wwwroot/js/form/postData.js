
let PersistenceAPIURL = "https://localhost:44316/api/persistenceMaintenance";
let MainUrl = "https://localhost:44355/";
let ManteinenceRegisterFormUrl = "https://localhost:44355/RegistroMantenimiento";
let ManteinenceTableFormUrl = "https://localhost:44355/ManteinanceTable";

function PostPersistence(elemetsJson, url) {
    const serverResponse = fetch(url,
        {
            mode: "cors",
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify(elemetsJson),
        })
        .then((response) => response.text())
        .then((user) => { return user; });

    const getResponse = async () => {
        const r = await serverResponse;
        console.log(await serverResponse);
    };

    getResponse();
}
