const steps = document.getElementById('steps');
const leftButton = document.getElementById('left-step');
const rightButton = document.getElementById('right-step');

document.addEventListener('DOMContentLoaded', () => {
    fetch('./steps.json')
        .then(data => data.json())
        .then(data => {
            let currentStep = 0;

            let currentStepTitle = document.createElement('h3');
            currentStepTitle.textContent = data[currentStep].title;
            steps.appendChild(currentStepTitle);

            let currentStepContent = document.createElement('ul');
            steps.appendChild(currentStepContent);

            // Function to load content for the current step
            function loadStep(stepIndex) {
                currentStepTitle.textContent = data[stepIndex].title;
                currentStepContent.innerHTML = ''; // Clear previous content

                data[stepIndex].content.forEach(content => {
                    let li = document.createElement('li');
                    li.innerHTML = content;
                    currentStepContent.appendChild(li);
                });

                // Apply syntax highlighting to dynamically inserted code blocks
                document.querySelectorAll('pre code').forEach((block) => {
                    hljs.highlightBlock(block);
                });
            }

            // Load the first step initially
            loadStep(currentStep);

            // Navigation: Left Button
            leftButton.addEventListener('click', () => {
                if (currentStep > 0) {
                    currentStep--;
                } else {
                    currentStep = data.length - 1;
                }
                loadStep(currentStep);
            });

            // Navigation: Right Button
            rightButton.addEventListener('click', () => {
                if (currentStep < data.length - 1) {
                    currentStep++;
                } else {
                    currentStep = 0;
                }
                loadStep(currentStep);
            });
            addButtonFunctionaliy();
        });
});

function addButtonFunctionaliy(){
    document.querySelectorAll('.copy-button').forEach(button => {
        button.addEventListener('click', () => {
            const codeBlock = button.previousElementSibling.querySelector('code');
            const codeText = codeBlock.innerText;

            navigator.clipboard.writeText(codeText).then(() => {
                button.innerHTML = '<span class=\"material-symbols-outlined\" style=\"color:lightgreen;font-weight:bold;\">done_all</span>'; 
                setTimeout(() => {
                    button.innerHTML = '<span class=\"material-symbols-outlined\">content_copy</span>';
                }, 1000);
            }).catch(err => {
                console.error('Failed to copy code: ', err);
            });
        });
    });
}