<template>
  <div class="container">
    <div class="button">
      <button @click="showMenu = !showMenu">
        <svg t="1597084687363" class="miniMenu" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="27453"><path d="M717.2 405.8c28.7 0 54.9 8 74.3 20.8 22.9 15.3 37.1 37.4 37.1 62.8h-0.1c0 25.4-14.1 47.5-36.8 62.7l-0.1 0.1c-19.4 12.9-45.7 21-74.3 21-28.5 0-54.8-8-74.3-21h-0.1C620.1 537 606 514.8 606 489.4s14.1-47.5 36.8-62.7l0.1-0.1c19.4-12.9 45.7-20.8 74.3-20.8z m42.9 68.3c-10.6-7.1-25.8-11.5-42.8-11.5-17.1 0-32.2 4.4-42.8 11.5-7.2 4.8-11.6 10.2-11.6 15.3 0 5 4.5 10.5 11.7 15.3v0.1c10.5 7 25.6 11.3 42.8 11.3 17.2 0 32.3-4.3 42.8-11.4 7.1-4.8 11.6-10.3 11.6-15.3h-0.1c-0.2-5.2-4.6-10.6-11.6-15.3z" fill="#ffcccc" p-id="27454"></path><path d="M855 846.6c10.5 11.7 9.6 29.7-2.1 40.2-11.7 10.5-29.7 9.6-40.2-2.1C635.9 688.2 509.4 555.6 404.6 502c-95.6-48.9-175.4-27.9-267.4 75.9-10.4 11.8-28.4 12.8-40.1 2.5-11.8-10.4-12.8-28.4-2.5-40.1 112.7-127.1 213-151.6 335.8-88.8C543.9 509.4 674.1 645.6 855 846.6z" fill="#ffcccc" p-id="27455"></path><path d="M882.2 625.3c14.9-4.9 31 3.3 35.9 18.3 4.9 14.9-3.3 31-18.3 35.9-257.3 83.7-438.1 136.6-565.3 130.1-137.7-7-212.4-78.4-246.4-244.9-3.1-15.4 6.8-30.4 22.2-33.5 15.4-3.1 30.4 6.8 33.5 22.2 27.8 135.8 86.4 193.9 193.6 199.4 117.7 6 293.5-45.7 544.8-127.5zM606.8 149.7c19.8 0 38 5.6 51.5 14.6h0.1c17 11.3 27.5 28.1 27.5 47.6h-0.1c0 19.5-10.5 36.2-27.4 47.4v0.1c-13.6 9.1-31.9 14.7-51.6 14.7-19.6 0-37.9-5.6-51.5-14.7l-0.1-0.1c-16.9-11.3-27.4-28-27.4-47.5s10.5-36.2 27.4-47.5v-0.1c13.6-9.1 31.9-14.7 51.6-14.7v0.2z m20 62c-4.8-3.2-11.8-5.1-20-5.1v0.1c-8.2 0-15.2 1.9-19.9 5.1h-0.1l-0.2 0.1 0.2 0.1c4.7 3.1 11.8 5.1 20 5.1s15.2-1.9 19.9-5.1l0.1 0.1 0.2-0.1-0.2-0.3z m2.2 0.2h-0.1c0-0.5-0.2-0.2-0.7 0 0.5 0.1 0.8 0.4 0.8 0z m-44.3 0c0 0.5 0.3 0.2 0.7 0-0.5-0.2-0.7-0.5-0.7 0zM386 260.1c19.8 0 38 5.6 51.5 14.5h0.1c17 11.3 27.5 28.1 27.5 47.6h-0.1c0 19.5-10.5 36.2-27.4 47.5v0.1c-13.6 9.1-31.9 14.7-51.6 14.7-19.6 0-37.9-5.6-51.5-14.7l-0.1-0.1c-16.9-11.3-27.4-28-27.4-47.5 0-19.4 10.5-36.2 27.4-47.5v-0.1c13.6-9 31.9-14.6 51.6-14.6v0.1z m20 62c-4.8-3.2-11.8-5.1-20-5.1v0.1c-8.2 0-15.2 1.9-19.9 5.1h-0.1l-0.2 0.1 0.2 0.1c4.7 3.1 11.8 5.1 20 5.1s15.2-1.9 19.9-5.1l0.1 0.1 0.2-0.1-0.2-0.3z m2.2 0.2h-0.1c0-0.5-0.2-0.2-0.7 0 0.5 0.1 0.8 0.4 0.8 0z m-44.3 0c0 0.5 0.3 0.2 0.7 0-0.5-0.2-0.7-0.5-0.7 0z" fill="#ffcccc" p-id="27456"></path><path d="M272 555.4c22.1 0 40.1 18 40.1 40.1s-18 40.1-40.1 40.1-40.1-17.9-40.1-40.1c0-22.1 18-40.1 40.1-40.1z" fill="#ffcccc" p-id="27457"></path></svg>
      </button>
    </div>
    <ul class="ch-grid">
      <transition name="grid1">
        <li v-show="showMenu">
          <div class="ch-item ch-img-1">
            <div class="ch-info-wrap" id="warp-1">
              <div class="ch-info">
                <div class="ch-info-front ch-img-1">
                  <h3>PHOTOGRAPH</h3>
                </div>
                <div class="ch-info-back">
                  <h3>PHOTOGRAPH</h3>
                  <p>Favorite / Album / Timeline / Photographer <a href="PHOTOGRAPH">View more</a></p>
                </div>
              </div>
            </div>
          </div>
        </li>
      </transition>
      <transition name="grid2">
        <li v-show="showMenu">
          <div class="ch-item ch-img-2">
            <div class="ch-info-wrap" id="warp-2">
              <div class="ch-info">
                <div class="ch-info-front ch-img-2">
                  <h3>CODE</h3>
                </div>
                <div class="ch-info-back">
                  <h3>CODE</h3>
                  <p>Java / Go / Front-End / Algorithm <a href="CODE">View more</a></p>
                </div>
              </div>
            </div>
          </div>
        </li>
      </transition>
      <transition name="grid3">
        <li v-show="showMenu">
          <div class="ch-item ch-img-3">
            <div class="ch-info-wrap" id="warp-3">
              <div class="ch-info">
                <div class="ch-info-front ch-img-3">
                  <h3>MOVIE</h3>
                </div>
                <div class="ch-info-back">
                  <h3>MOVIE</h3>
                  <p>Director / List <a href="MOVIE">View more</a></p>
                </div>
              </div>
            </div>
          </div>
        </li>
      </transition>
      <transition name="grid4">
        <li v-show="showMenu">
          <div class="ch-item ch-img-4">
            <div class="ch-info-wrap" id="warp-4">
              <div class="ch-info">
                <div class="ch-info-front ch-img-4">
                  <h3>MUSIC</h3>
                </div>
                <div class="ch-info-back">
                  <h3>MUSIC</h3>
                  <p>Artist / PlayList <a href="MUSIC">View more</a></p>
                </div>
              </div>
            </div>
          </div>
        </li>
      </transition>
      <transition name="grid5">
        <li v-show="showMenu">
          <div class="ch-item ch-img-5">
            <div class="ch-info-wrap" id="warp-5">
              <div class="ch-info">
                <div class="ch-info-front ch-img-5">
                  <h3>DAILY</h3>
                </div>
                <div class="ch-info-back">
                  <h3>DAILY</h3>
                  <p>Journal / Kittens / Travel <a href="DAILY">View more</a></p>
                </div>
              </div>
            </div>
          </div>
        </li>
      </transition>
      <transition name="grid6">
        <li v-show="showMenu">
          <div class="ch-item ch-img-6">
            <div class="ch-info-wrap" id="warp-6">
              <div class="ch-info">
                <div class="ch-info-front ch-img-6">
                  <h3>READING</h3>
                </div>
                <div class="ch-info-back">
                  <h3>HOME</h3>
                  <p>Note / Author <a href="READING">View more</a></p>
                </div>
              </div>
            </div>
          </div>
        </li>
      </transition>
      <transition name="grid7">
        <li v-show="showMenu">
          <div class="ch-item ch-img-7">
            <div class="ch-info-wrap" id="warp-7">
              <div class="ch-info">
                <div class="ch-info-front ch-img-7">
                  <h3>CONTACT</h3>
                </div>
                <div class="ch-info-back">
                  <h3>CONTACT</h3>
                  <p>/ <a href="CONTACT">View more</a></p>
                </div>
              </div>
            </div>
          </div>
        </li>
      </transition>
      <transition name="grid8">
        <li v-show="showMenu">
          <div class="ch-item ch-img-8">
            <div class="ch-info-wrap" id="warp-8">
              <div class="ch-info">
                <div class="ch-info-front ch-img-8">
                  <h3>HOME</h3>
                </div>
                <div class="ch-info-back">
                  <h3>HOME</h3>
                  <p>/ <a href="HOME">View more</a></p>
                </div>
              </div>
            </div>
          </div>
        </li>
      </transition>
    </ul>
  </div>
</template>

<script>
  export default {
    name: "FullScreenMenu2",
    data: () => ({
      showMenu: false
    })
  }
</script>

<style scoped>
  .container{
    position: fixed;
    top: 0;
    z-index: 17;
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

  .ch-grid:after,
  .ch-item:before {
    content: '';
    display: table;
  }

  .ch-grid:after {
    clear: both;
  }

  .ch-grid li {
    width: 24.68vw;
    height: 50vh;
    float: left;
    margin: 0px;
  }

  .ch-item {
    width: 100%;
    height: 100%;
    border-radius: 0%;
    position: relative;
    box-shadow: 0 1px 2px rgba(0,0,0,0.1);
    cursor: default;
  }

  .ch-info-wrap{
    position: absolute;
    width: 21.72vw;
    height: 44vh;
    border-radius: 0%;

    -webkit-perspective: 800px;
    -moz-perspective: 800px;
    -o-perspective: 800px;
    -ms-perspective: 800px;
    perspective: 800px;

    -webkit-transition: all 0.4s ease-in-out;
    -moz-transition: all 0.4s ease-in-out;
    -o-transition: all 0.4s ease-in-out;
    -ms-transition: all 0.4s ease-in-out;
    transition: all 0.4s ease-in-out;

    top: 20px;
    left: 20px;
    background-size: 100%;
    box-shadow:
      0 0 0 5px rgba(255,255,255,0.1),
      inset 0 0 3px rgba(115,114, 23, 0.8);

  }

  .ch-info{
    position: absolute;
    width: 21.72vw;
    height: 44vh;
    border-radius: 0%;

    -webkit-transition: all 0.4s ease-in-out;
    -moz-transition: all 0.4s ease-in-out;
    -o-transition: all 0.4s ease-in-out;
    -ms-transition: all 0.4s ease-in-out;
    transition: all 0.4s ease-in-out;

    -webkit-transform-style: preserve-3d;
    -moz-transform-style: preserve-3d;
    -o-transform-style: preserve-3d;
    -ms-transform-style: preserve-3d;
    transform-style: preserve-3d;

  }

  .ch-info > div {
    display: block;
    position: absolute;
    width: 100%;
    height: 100%;
    border-radius: 0%;
    background-position: center center;

    -webkit-backface-visibility: hidden;
    -moz-backface-visibility: hidden;
    -o-backface-visibility: hidden;
    -ms-backface-visibility: hidden;
    backface-visibility: hidden;
  }

  .ch-info .ch-info-back {
    -webkit-transform: rotate3d(0,1,0,180deg);
    -moz-transform: rotate3d(0,1,0,180deg);
    -o-transform: rotate3d(0,1,0,180deg);
    -ms-transform: rotate3d(0,1,0,180deg);
    transform: rotate3d(0,1,0,180deg);
    /*内页背景色*/
    background: rgba(255,255,255,0.3);
  }

  .ch-img-1 {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-menu-photograph-1.jpg");
    background-size: 100%;
  }

  .ch-img-2 {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-menu-code-1.jpg");
    background-size: 100%;
  }

  .ch-img-3 {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-menu-movie-7.jpg");
    background-size: 100%;
  }

  .ch-img-4 {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-menu-music-2.jpg");
    background-size: 100%;
  }

  .ch-img-5 {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-menu-daily-1.jpg");
    background-size: 100%;
  }

  .ch-img-6 {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-menu-reading-1.jpg");
    background-size: 100%;
  }

  .ch-img-7 {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-menu-home-1.jpg");
    background-size: 100%;
  }

  .ch-img-8 {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-menu-contact-1.jpg");
    background-size: 100%;
  }

  .ch-info h3 {
    color: #fff;
    text-transform: uppercase;
    letter-spacing: 2px;
    font-size: 30px;
    margin: 0 15px;
    padding: 18vh 0 0 0;
    height: 50px;
    font-family: 'Open Sans', Arial, sans-serif;
    text-shadow:
      0 0 1px #fff,
      0 1px 2px rgba(0,0,0,0.3);
    text-align: center;
  }

  .ch-info p {
    color: #fff;
    padding: 10px 5px;
    font-style: italic;
    margin: 0 30px;
    font-size: 12px;
    border-top: 1px solid rgba(255,255,255,0.5);
    text-align: center;
  }

  .ch-info p a {
    display: block;
    color: #fff;
    color: rgba(255,255,255,0.7);
    font-style: normal;
    font-weight: 700;
    text-transform: uppercase;
    font-size: 9px;
    letter-spacing: 1px;
    padding-top: 20px;
    font-family: 'Open Sans', Arial, sans-serif;
    text-align: center;
  }

  .ch-info p a:hover {
    color: #fff222;
    color: rgba(255,242,34, 0.8);
  }

  .ch-item:hover .ch-info-wrap {
    box-shadow:
      0 0 0 0 rgba(255,255,255,0.8),
      inset 0 0 3px rgba(115,114, 23, 0.8);
  }

  .ch-item:hover .ch-info {
    -webkit-transform: rotate3d(0,1,0,-180deg);
    -moz-transform: rotate3d(0,1,0,-180deg);
    -o-transform: rotate3d(0,1,0,-180deg);
    -ms-transform: rotate3d(0,1,0,-180deg);
    transform: rotate3d(0,1,0,-180deg);
  }

  .grid1-enter-active, .grid1-leave-active {
    transition: all 1s ease;
  }
  .grid1-enter, .grid1-leave-to /* .fade-leave-active below version 2.1.8 */ {
    transform: translateY(-100%);
    opacity: 0;
  }

  .grid2-enter-active, .grid2-leave-active {
    transition: all 1s ease;
  }
  .grid2-enter, .grid2-leave-to /* .fade-leave-active below version 2.1.8 */ {
    transform: translateX(100%);
    opacity: 0;
  }

  .grid3-enter-active, .grid3-leave-active {
    transition: all 1s ease;
  }
  .grid3-enter, .grid3-leave-to /* .fade-leave-active below version 2.1.8 */ {
    transform: translateY(-100%);
    opacity: 0;
  }

  .grid4-enter-active, .grid4-leave-active {
    transition: all 1s ease;
  }
  .grid4-enter, .grid4-leave-to /* .fade-leave-active below version 2.1.8 */ {
    transform: translateX(100%);
    opacity: 0;
  }

  .grid5-enter-active, .grid5-leave-active {
    transition: all 1s ease;
  }
  .grid5-enter, .grid5-leave-to /* .fade-leave-active below version 2.1.8 */ {
    transform: translateX(-100%);
    opacity: 0;
  }

  .grid6-enter-active, .grid6-leave-active {
    transition: all 1s ease;
  }
  .grid6-enter, .grid6-leave-to /* .fade-leave-active below version 2.1.8 */ {
    transform: translateY(100%);
    opacity: 0;
  }

  .grid7-enter-active, .grid7-leave-active {
    transition: all 1s ease;
  }
  .grid7-enter, .grid7-leave-to /* .fade-leave-active below version 2.1.8 */ {
    transform: translateX(-100%);
    opacity: 0;
  }

  .grid8-enter-active, .grid8-leave-active {
    transition: all 1s ease;
  }
  .grid8-enter, .grid8-leave-to /* .fade-leave-active below version 2.1.8 */ {
    transform: translateY(100%);
    opacity: 0;
  }
</style>
