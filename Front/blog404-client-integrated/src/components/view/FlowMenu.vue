<template>
  <div class="frame">
    <div class="frame__nav">
      <label class="main-nav-open nav-toggle" for="main-nav-toggle" tabindex="0" aria-label="Menu">
        <svg aria-hidden="true" width="28px" height="20px" viewBox="0 0 28 20">
          <rect x="0" y="2" width="28" height="2"></rect>
          <rect x="0" y="10" width="24" height="2"></rect>
          <rect x="0" y="18" width="28" height="2"></rect>
        </svg>
      </label>
      <input type="checkbox" id="main-nav-toggle" />
      <nav class="main-nav">
        <ul class="main-nav__fallback">
          <li>
            <a href="#observatory">Observatory</a>
          </li>
          <li>
            <a href="#research">Research</a>
          </li>
          <li>
            <a href="#events">Events</a>
          </li>
          <li>
            <a href="#members">Members</a>
          </li>
          <li>
            <a href="#contact">Contact</a>
          </li>
        </ul>
        <label class="main-nav__close nav-toggle" for="main-nav-toggle" tabindex="0" aria-label="Close menu">
          <svg aria-hidden="true" width="24" height="22px" viewBox="0 0 24 22">
            <path d="M11 9.586L20.192.393l1.415 1.415L12.414 11l9.193 9.192-1.415 1.415L11 12.414l-9.192 9.193-1.415-1.415L9.586 11 .393 1.808 1.808.393 11 9.586z"></path>
          </svg>
        </label>
      </nav>
    </div>
  </div>
</template>

<script>
    export default {
      name: "FlowMenu",
    }
</script>

<style scoped>
  .nav-toggle {
    cursor: pointer;
    display: inline-block;
  }

  .nav-toggle:focus {
    outline: 2px solid #fff;
  }

  #main-nav-toggle {
    position: absolute;
    left: -999em;
  }

  #main-nav-toggle:checked~nav.main-nav {
    display: flex;
    opacity: 1;
    pointer-events: all;
  }

  .main-nav__canvas {
    display: none;
  }

  nav.main-nav {
    transition: 0.3s opacity;
    align-items: center;
    background: #151515;
    font-family: tenez, serif;
    justify-content: center;
    display: flex;
    height: 100%;
    left: 0px;
    opacity: 0;
    pointer-events: none;
    position: fixed;
    top: 0px;
    width: 100%;
    z-index: 1;
  }

  ul.main-nav__fallback {
    list-style: none;
    margin: 0;
    padding: 0;
    text-align: center;
  }

  ul.main-nav__fallback a {
    font-size: 5vw;
    color: #cf5500;
    text-decoration: none;
  }

  @media only screen and (min-width: 40.063em) {
    .main-nav__canvas {
      display: block;
      height: 100%;
      left: 0px;
      position: fixed;
      top: 0px;
      width: 100%;
      z-index: 100;
    }
  }

  .main-nav__close {
    position: fixed;
    left: 50%;
    transform: translateX(-50%);
    top: 2rem;
    z-index: 101;
    cursor: pointer;
    fill: #df8f56;
  }


</style>
