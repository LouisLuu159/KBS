
const list = []

const getID = () => {
    const select = document.querySelectorAll(".symptom-list")
    for(let i = 0; i < select.length; i++) {
        const id = select[i].options[select[i].selectedIndex]
        console.log(id);
    }
}

const handleSubmit = () => {
    const info = []

    const select = document.querySelectorAll(".symptom-list")
    for(let i = 0; i < select.length; i++) {
        const name = select[i].name
        const value = select[i].value
        const newObj = {name: name, id: value}
        info.push(newObj)
    }
    
    console.log(info);
}
