const steps = document.getElementById('steps');
const leftButton = document.getElementById('left-step');
const rightButton = document.getElementById('right-step');

document.addEventListener('DOMContentLoaded', () => {
    fetch('./steps.json').then(data => data.json()).then(data => {
        let currentStep = 0;

        let currentStepTitle = document.createElement('h3');
        currentStepTitle.textContent = data[currentStep].title;
        steps.appendChild(currentStepTitle);

        let currentStepContent = document.createElement('ul');
        steps.appendChild(currentStepContent);

        data[currentStep].content.forEach(content => {
            let li = document.createElement('li');
            li.innerHTML = content;
            currentStepContent.appendChild(li);
        });

        leftButton.addEventListener('click', () => {
            if (currentStep > 0) {
                currentStep--;
                currentStepTitle.textContent = data[currentStep].title;
                currentStepContent.innerHTML = '';
                data[currentStep].content.forEach(content => {
                    let li = document.createElement('li');
                    li.innerHTML = content;
                    currentStepContent.appendChild(li);
                });
            }else{
                currentStep = data.length - 1;
                currentStepTitle.textContent = data[currentStep].title;
                currentStepContent.innerHTML = '';
                data[currentStep].content.forEach(content => {
                    let li = document.createElement('li');
                    li.innerHTML = content;
                    currentStepContent.appendChild(li);
                });
            }
        });

        rightButton.addEventListener('click', () => {
            if (currentStep < data.length - 1) {
                currentStep++;
                currentStepTitle.textContent = data[currentStep].title;
                currentStepContent.innerHTML = '';
                data[currentStep].content.forEach(content => {
                    let li = document.createElement('li');
                    li.innerHTML = content;
                    currentStepContent.appendChild(li);
                });
            }else{
                currentStep = 0;
                currentStepTitle.textContent = data[currentStep].title;
                currentStepContent.innerHTML = '';
                data[currentStep].content.forEach(content => {
                    let li = document.createElement('li');
                    li.innerHTML = content;
                    currentStepContent.appendChild(li);
                });
            }
        });
    });
});