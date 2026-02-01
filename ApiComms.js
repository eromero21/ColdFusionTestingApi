document.getElementById("main-form").addEventListener("submit", async (e) => {
    e.preventDefault();
    
    const form = document.getElementById("main-form");
    const data = {
        "email" : form.email.value.trim(),
        "username" : form.username.value.trim(),
        "jobType" : form.jobtype.value.trim()
    }

    console.log(data["email"], data["username"], data["jobType"]);
    
    try {
        const resp = await fetch("/DbComms.cfc?method=writeToDb", {method:"GET"});

        if (!resp.ok) {
            throw new Error(`HTTP error: ${resp.statusText}`);
        }

        const jsonData = await resp.json();
        console.log("Success! Data has been posted retrieved by the backend successfully.");
        console.log(jsonData);

        const subMsg = document.getElementById("submit-msg");
        subMsg.textContent = "Successfully submitted.";
        subMsg.style.color = "green";
        subMsg.classList.toggle("hidden");

    } catch (err) {
        console.error("Failure to send data to db", err);
    }
});