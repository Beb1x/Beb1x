for (let i = 0; i < numberOfStickmen; i++) {
    const stickman = document.createElement('div');
    stickman.className = 'stickman';
    stickman.style.left = Math.random() * window.innerWidth + 'px';
    stickman.style.animationDelay = Math.random() * 5 + 's';
    document.body.appendChild(stickman);
}
