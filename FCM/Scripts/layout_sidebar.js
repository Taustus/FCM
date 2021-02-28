/* Set the width of the side navigation to 250px */
function documentClick(event) {
    var clicked = event.target;
    var sideNav = document.getElementById('mySidenav');
    if (clicked != sideNav && sideNav.style.width != '0px' && clicked != document.getElementById('hamburgerBtn')) {
        closeNav();
    }
}

function openNav() {

    var sideNav = document.getElementById('mySidenav');

    sideNav.style.width = '250px';

    var children = sideNav.getElementsByTagName('*');

    [].forEach.call(children, x => {
        x.style.transitionDelay = '0.5s';
        x.style.opacity = 1;
    });

    document.addEventListener('click', documentClick);
}

/* Set the width of the side navigation to 0 */
function closeNav() {
    document.removeEventListener('click', documentClick);

    var sideNav = document.getElementById('mySidenav');

    sideNav.style.width = '0px';

    var children = sideNav.getElementsByTagName('*');

    [].forEach.call(children, x => {
        x.style.transitionDelay = '0s';
        x.style.opacity = 0;
    });
}