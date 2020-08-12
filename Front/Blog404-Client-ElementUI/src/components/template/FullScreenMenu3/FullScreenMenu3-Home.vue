<template>
  <transition name="grid">
    <div class="container">
      <div class="ch-item ch-img">
        <div class="ch-info-wrap">
          <div class="ch-info">
            <div class="ch-info-front ch-img">
              <h3>Home</h3>
            </div>
            <div class="ch-info-back">
              <h3>Home</h3>
              <p>
                <a class="view-more" href="Home">View more</a>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </transition>
</template>

<script>
  export default {
    name: "FullScreenMenu3-Home"
  }
</script>

<style scoped>
  .container {
    width: 12.5vw;
    height: 25vh;
  }

  .ch-item {
    width: 100%;
    height: 100%;
    border-radius: 0%;
    position: relative;
    box-shadow: 0 1px 2px rgba(0,0,0,0.1);
    cursor: default;
  }

  .ch-item:before {
    content: '';
    display: table;
  }

  .ch-info-wrap{
    position: absolute;
    width: 9.5vw;
    height: 19vh;
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

    top: 1.5vw;
    left: 3vh;
    background-size: 100%;
    box-shadow:
      0 0 0 5px rgba(255,255,255,0.1),
      inset 0 0 3px rgba(115,114, 23, 0.8);

  }

  .ch-info{
    position: absolute;
    width: 9.5vw;
    height: 19vh;
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
    background: rgba(255,255,255,0.2);
  }

  .ch-img {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-menu-home-1.jpg");
    background-size: 100%;
  }

  .ch-info h3 {
    color: #fff;
    /*
        text-transform: uppercase;
    */
    letter-spacing: 1px;
    font-size: 4vh;
    margin: 0 15px;
    padding: 8vh 0 0 0;
    height: 5vh;
    font-family: 'Josefin Sans', sans-serif;
    text-shadow:
      0 0 1px #fff,
      0 1px 2px rgba(0,0,0,0.3);
    text-align: center;
  }

  .ch-info p {
    color: #fff;
    padding: 3px 5px;
    font-style: italic;
    /*分割线边距*/
    margin: 0 1vw;
    font-size: 12px;
    border-top: 1px solid rgba(255,255,255,0.5);
    text-align: center;
  }

  .ch-info .menu-link {
    color: #fff;
    text-decoration: none;
  }

  .ch-info .menu-link:hover {
    color: #ffcccc;
  }

  .ch-info .view-more {
    display: block;
    color: #fff;
    color: rgba(255,255,255,0.7);
    font-style: normal;
    font-weight: 700;
    text-transform: uppercase;
    font-size: 9px;
    letter-spacing: 1px;
    padding-top: 5px;
    font-family: 'Open Sans', Arial, sans-serif;
    text-align: center;
  }

  .ch-info .view-more:hover {
    color: #ffcccc;
    color: rgba(255,204,204, 0.8);
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

  .grid-enter-active, .grid-leave-active {
    transition: all 1s ease;
  }
  .grid-enter, .grid-leave-to /* .fade-leave-active below version 2.1.8 */ {
    transform: translateX(-100%);
    opacity: 0;
  }
</style>
