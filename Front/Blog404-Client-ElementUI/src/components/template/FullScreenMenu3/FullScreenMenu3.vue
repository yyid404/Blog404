<template>
  <div class="container">
    <div class="button">
      <button @click="showMenu = !showMenu">
        <svg t="1597084687363" class="miniMenu" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="27453"><path d="M717.2 405.8c28.7 0 54.9 8 74.3 20.8 22.9 15.3 37.1 37.4 37.1 62.8h-0.1c0 25.4-14.1 47.5-36.8 62.7l-0.1 0.1c-19.4 12.9-45.7 21-74.3 21-28.5 0-54.8-8-74.3-21h-0.1C620.1 537 606 514.8 606 489.4s14.1-47.5 36.8-62.7l0.1-0.1c19.4-12.9 45.7-20.8 74.3-20.8z m42.9 68.3c-10.6-7.1-25.8-11.5-42.8-11.5-17.1 0-32.2 4.4-42.8 11.5-7.2 4.8-11.6 10.2-11.6 15.3 0 5 4.5 10.5 11.7 15.3v0.1c10.5 7 25.6 11.3 42.8 11.3 17.2 0 32.3-4.3 42.8-11.4 7.1-4.8 11.6-10.3 11.6-15.3h-0.1c-0.2-5.2-4.6-10.6-11.6-15.3z" fill="#ffcccc" p-id="27454"></path><path d="M855 846.6c10.5 11.7 9.6 29.7-2.1 40.2-11.7 10.5-29.7 9.6-40.2-2.1C635.9 688.2 509.4 555.6 404.6 502c-95.6-48.9-175.4-27.9-267.4 75.9-10.4 11.8-28.4 12.8-40.1 2.5-11.8-10.4-12.8-28.4-2.5-40.1 112.7-127.1 213-151.6 335.8-88.8C543.9 509.4 674.1 645.6 855 846.6z" fill="#ffcccc" p-id="27455"></path><path d="M882.2 625.3c14.9-4.9 31 3.3 35.9 18.3 4.9 14.9-3.3 31-18.3 35.9-257.3 83.7-438.1 136.6-565.3 130.1-137.7-7-212.4-78.4-246.4-244.9-3.1-15.4 6.8-30.4 22.2-33.5 15.4-3.1 30.4 6.8 33.5 22.2 27.8 135.8 86.4 193.9 193.6 199.4 117.7 6 293.5-45.7 544.8-127.5zM606.8 149.7c19.8 0 38 5.6 51.5 14.6h0.1c17 11.3 27.5 28.1 27.5 47.6h-0.1c0 19.5-10.5 36.2-27.4 47.4v0.1c-13.6 9.1-31.9 14.7-51.6 14.7-19.6 0-37.9-5.6-51.5-14.7l-0.1-0.1c-16.9-11.3-27.4-28-27.4-47.5s10.5-36.2 27.4-47.5v-0.1c13.6-9.1 31.9-14.7 51.6-14.7v0.2z m20 62c-4.8-3.2-11.8-5.1-20-5.1v0.1c-8.2 0-15.2 1.9-19.9 5.1h-0.1l-0.2 0.1 0.2 0.1c4.7 3.1 11.8 5.1 20 5.1s15.2-1.9 19.9-5.1l0.1 0.1 0.2-0.1-0.2-0.3z m2.2 0.2h-0.1c0-0.5-0.2-0.2-0.7 0 0.5 0.1 0.8 0.4 0.8 0z m-44.3 0c0 0.5 0.3 0.2 0.7 0-0.5-0.2-0.7-0.5-0.7 0zM386 260.1c19.8 0 38 5.6 51.5 14.5h0.1c17 11.3 27.5 28.1 27.5 47.6h-0.1c0 19.5-10.5 36.2-27.4 47.5v0.1c-13.6 9.1-31.9 14.7-51.6 14.7-19.6 0-37.9-5.6-51.5-14.7l-0.1-0.1c-16.9-11.3-27.4-28-27.4-47.5 0-19.4 10.5-36.2 27.4-47.5v-0.1c13.6-9 31.9-14.6 51.6-14.6v0.1z m20 62c-4.8-3.2-11.8-5.1-20-5.1v0.1c-8.2 0-15.2 1.9-19.9 5.1h-0.1l-0.2 0.1 0.2 0.1c4.7 3.1 11.8 5.1 20 5.1s15.2-1.9 19.9-5.1l0.1 0.1 0.2-0.1-0.2-0.3z m2.2 0.2h-0.1c0-0.5-0.2-0.2-0.7 0 0.5 0.1 0.8 0.4 0.8 0z m-44.3 0c0 0.5 0.3 0.2 0.7 0-0.5-0.2-0.7-0.5-0.7 0z" fill="#ffcccc" p-id="27456"></path><path d="M272 555.4c22.1 0 40.1 18 40.1 40.1s-18 40.1-40.1 40.1-40.1-17.9-40.1-40.1c0-22.1 18-40.1 40.1-40.1z" fill="#ffcccc" p-id="27457"></path></svg>
      </button>
    </div>
    <ul class="ch-grid">
      <Menu3Photograph class="menu-photograph" v-show="showMenu"></Menu3Photograph>
      <Menu3Code class="menu-code" v-show="showMenu"></Menu3Code>
      <FullScreenMenu3Movie class="menu-movie" v-show="showMenu"></FullScreenMenu3Movie>
      <FullScreenMenu3Music class="menu-music" v-show="showMenu"></FullScreenMenu3Music>
      <FullScreenMenu3Daily class="menu-daily" v-show="showMenu"></FullScreenMenu3Daily>
      <FullScreenMenu3Reading class="menu-reading" v-show="showMenu"></FullScreenMenu3Reading>
      <FullScreenMenu3Home class="menu-home" v-show="showMenu"></FullScreenMenu3Home>
      <FullScreenMenu3Contact class="menu-contact" v-show="showMenu"></FullScreenMenu3Contact>
    </ul>
  </div>
</template>

<script>
    import Menu3Photograph from "./FullScreenMenu3-Photograph";
    import Menu3Code from "./FullScreenMenu3-Code";
    import FullScreenMenu3Movie from "./FullScreenMenu3-Movie";
    import FullScreenMenu3Music from "./FullScreenMenu3-Music";
    import FullScreenMenu3Daily from "./FullScreenMenu3-Daily";
    import FullScreenMenu3Reading from "./FullScreenMenu3-Reading";
    import FullScreenMenu3Home from "./FullScreenMenu3-Home";
    import FullScreenMenu3Contact from "./FullScreenMenu3-Contact";
    export default {
        name: "FullScreenMenu3",
      components: {
        FullScreenMenu3Contact,
        FullScreenMenu3Home,
        FullScreenMenu3Reading,
        FullScreenMenu3Daily, FullScreenMenu3Music, FullScreenMenu3Movie, Menu3Code, Menu3Photograph},
      data: () => ({
        showMenu: false
      })
    }
</script>

<style scoped>
  .container{
    position: fixed;
    top: 0;
    z-index: 16;
  }

  button{
    background: none; /*按钮背景透明*/
    border-style:none;  /*边框透明*/
    outline:none; /*点击后没边框*/
    top: 2vw;
    right: 2vw;
    opacity: 80%;
    position: fixed;
    z-index: 17;
  }

  .miniMenu{
    width: 3vw;
    height: 3vw;
  }

  .ch-grid {
    margin: 0px 0 0 0;
    padding: 0;
    list-style: none;
    width: 100%;
  }

  .ch-grid:after {
    content: '';
    display: table;
  }

  .ch-grid:after {
    clear: both;
  }

  .menu-photograph{
    margin-top: 50vh;
    margin-left: 50vw;
  }

  .menu-movie{
    margin-left: 50vw;
  }

  .menu-music{
    margin-left: 75vw;
  }

  .menu-daily{
    margin-top: 50vh;
    margin-left: 25vw;
  }

  .menu-reading{
    margin-top: 50vh;
  }

  .menu-home{
    margin-top: 75vh;
  }

  .menu-contact{
    margin-top: 75vh;
    margin-left: 12.5vw;
  }
</style>
