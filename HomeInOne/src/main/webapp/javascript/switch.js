// 각 스위치에 대응하는 로컬 스토리지의 값을 가져와서 체크 여부를 설정.
const airconSwitch0 = document.getElementById('aircon-power')


function updateSwitchState(switchElement, storageKey) {
    switchElement.checked = localStorage.getItem(storageKey) === 'true';
}
window.addEventListener('DOMContentLoaded', () => {
    updateSwitchState(airconSwitch0, 'power3');
});
function airconOn() {
    localStorage.setItem('power3', airconSwitch0.checked.toString());
}
window.addEventListener('storage', (event) => {
    if (event.key === 'power0') {
        updateSwitchState(humidifierSwitch0, 'power0');
    } else if (event.key === 'power1') {
        updateSwitchState(refridgeratorSwitch0, 'power1');
    } else if (event.key === 'power2') {
        updateSwitchState(washingMachineSwitch0, 'power2');
    } else if (event.key === 'power3') {
        updateSwitchState(airconSwitch0, 'power3');
    }
});