<template>
  <div class="container">
    <div class="component">
      <ul class="grid">
        <li class="ot-letter-right"><span data-letter="3">3</span></li>
        <li class="ot-letter-top"><span data-letter="2">2</span></li>
      </ul>
    </div>
  </div>
</template>

<script>
    export default {
        name: "DaysFall"
    }
</script>

<style scoped>

  /* grid */
  .grid {
    margin: 0;
    padding: 0;
    list-style: none;
    position: relative;
    width: 100%;
  }

  .grid li {
    position: relative;
    float: left;
    font-size: 100px;
    line-height: 1.5;
    max-height: 290px;
    text-align: center;
    width: 16.6666667%;
    /* Fallback */
    width: -webkit-calc(100% / 6);
    width: calc(100% / 6);
  }

  /* Common styles for the letters */
  .grid li span {
    display: inline-block;
    font-weight: 100;
    line-height: 1;
    position: relative;
    color: hsla(0, 0%, 0%, 0.4);
    -webkit-transform-style: preserve-3d;
    -ms-transform-style: preserve-3d;
    transform-style: preserve-3d;
    -webkit-perspective: 550px;
    -ms-perspective: 550px;
    perspective: 550px;
    z-index: 1;
  }

  .grid li span:before,
  .grid li span:after {
    position: absolute;
    content: attr(data-letter);
    line-height: inherit;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    z-index: 2;
    -webkit-transition: all .3s;
    transition: all .3s;
  }

  .grid li span:before {
    text-shadow: none;
    color: hsla(0, 0%, 0%, 0.12);
  }

  /* Colors */

  .ot-letter-left span:after { color: #ffcccc; }
  .ot-letter-left:hover span:after { color: #ffcccc; }

  .ot-letter-right span:after { color: #ffcccc; }
  .ot-letter-right:hover span:after { color: #ffcccc; }

  .ot-letter-top span:after { color: #ffcccc; }
  .ot-letter-top:hover span:after { color: #ffcccc; }

  .ot-letter-bottom span:after { color: #ffcccc; }
  .ot-letter-bottom:hover span:after { color: #ffcccc; }

  /* Left */
  .ot-letter-left span:before,
  .ot-letter-left span:after {
    -webkit-transform-origin: 0 50%;
    -ms-transform-origin: 0 50%;
    transform-origin: 0 50%;
  }

  .ot-letter-left span:before {
    -webkit-transform: scale(1.08,1) skew(0deg,1deg);
    -ms-transform: scale(1.08,1) skew(0deg,1deg);
    transform: scale(1.08,1) skew(0deg,1deg);
  }

  .ot-letter-left span:after {
    text-shadow: -1px 0px 0px hsla(360, 100%, 100%, 0.1), 3px 0px 1px hsla(0, 0%, 0%, 0.4);
    -webkit-transform: rotateY(-15deg);
    -ms-transform: rotateY(-15deg);
    transform: rotateY(-15deg);
  }

  .ot-letter-left:hover span:before {
    -webkit-transform: scale(0.85,1) skew(0deg,20deg);
    -ms-transform: scale(0.85,1) skew(0deg,20deg);
    transform: scale(0.85,1) skew(0deg,20deg);
  }

  .ot-letter-left:hover span:after {
    -webkit-transform: rotateY(-40deg);
    -ms-transform: rotateY(-40deg);
    transform: rotateY(-40deg);
  }

  /* Right */
  .ot-letter-right span:before,
  .ot-letter-right span:after {
    -webkit-transform-origin: 100% 50%;
    -ms-transform-origin: 100% 50%;
    transform-origin: 100% 50%;
  }

  .ot-letter-right span:before {
    -webkit-transform: scale(0.85,1) skew(0deg,1deg);
    -ms-transform: scale(0.85,1) skew(0deg,1deg);
    transform: scale(0.85,1) skew(0deg,1deg);
  }

  .ot-letter-right span:after {
    text-shadow: 1px 0px 0px hsla(360, 100%, 100%, 0.1), -3px 0px 1px hsla(0, 0%, 0%, 0.4);
    -webkit-transform: rotateY(15deg);
    -ms-transform: rotateY(15deg);
    transform: rotateY(15deg);
  }

  .ot-letter-right:hover span:before {
    -webkit-transform: scale(0.85,1) skew(0deg,-20deg);
    -ms-transform: scale(0.85,1) skew(0deg,-20deg);
    transform: scale(0.85,1) skew(0deg,-20deg);
  }

  .ot-letter-right:hover span:after {
    -webkit-transform: rotateY(40deg);
    -ms-transform: rotateY(40deg);
    transform: rotateY(40deg);
  }

  /* Up */
  .ot-letter-top span:before,
  .ot-letter-top span:after {
    -webkit-transform-origin: 50% 100%;
    -ms-transform-origin: 50% 100%;
    transform-origin: 50% 100%;
  }

  .ot-letter-top span:before {
    -webkit-transform: scale(1,0.95) skew(-4deg,0deg);
    -ms-transform: scale(1,0.95) skew(-4deg,0deg);
    transform: scale(1,0.95) skew(-4deg,0deg);
  }

  .ot-letter-top span:after {
    text-shadow: 0px 1px 0px hsla(360, 100%, 100%, 0.1), 0px -3px 1px hsla(0, 0%, 0%, 0.4);
    -webkit-transform: rotateX(-15deg);
    -ms-transform: rotateX(-15deg);
    transform: rotateX(-15deg);
  }

  .ot-letter-top:hover span:before {
    -webkit-transform: translateY(-0.050em) scale(1,0.55) skew(-10deg,0deg);
    -ms-transform: translateY(-0.050em) scale(1,0.55) skew(-10deg,0deg);
    transform: translateY(-0.050em) scale(1,0.55) skew(-10deg,0deg);
  }

  .ot-letter-top:hover span:after {
    -webkit-transform: translateY(-0.035em) rotateX(-40deg);
    -ms-transform: translateY(-0.035em) rotateX(-40deg);
    transform: translateY(-0.035em) rotateX(-40deg);
  }

  /* Down */
  .ot-letter-bottom span:before,
  .ot-letter-bottom span:after {
    -webkit-transform-origin: 50% 0;
    -ms-transform-origin: 50% 0;
    transform-origin: 50% 0;
  }

  .ot-letter-bottom span:before {
    -webkit-transform: scale(1,1.05) skew(4deg,0deg);
    -ms-transform: scale(1,1.05) skew(4deg,0deg);
    transform: scale(1,1.05) skew(4deg,0deg);
  }

  .ot-letter-bottom span:after {
    text-shadow: 0px -1px 0px hsla(360, 100%, 100%, 0.1), 0px 3px 1px hsla(0, 0%, 0%, 0.4);
    -webkit-transform: rotateX(15deg);
    -ms-transform: rotateX(15deg);
    transform: rotateX(15deg);
  }

  .ot-letter-bottom:hover span:before {
    -webkit-transform: translateY(-0.035em) scale(1,1.2) skew(10deg,0deg);
    -ms-transform: translateY(-0.035em) scale(1,1.2) skew(10deg,0deg);
    transform: translateY(-0.035em) scale(1,1.2) skew(10deg,0deg);
  }

  .ot-letter-bottom:hover span:after {
    -webkit-transform: translateY(0.045em) rotateX(40deg);
    -ms-transform: translateY(0.045em) rotateX(40deg);
    transform: translateY(0.045em) rotateX(40deg);
  }

  /* Example for media query: change number of items per row */
  @media screen and (max-width: 1190px) {
    .grid li {
      width: 20%;
      /* Fallback */
      width: -webkit-calc(100% / 5);
      width: calc(100% / 5);
    }
  }

  @media screen and (max-width: 945px) {
    .grid li {
      width: 25%;
      /* Fallback */
      width: -webkit-calc(100% / 4);
      width: calc(100% / 4);
    }
  }

  @media screen and (max-width: 760px) {
    .grid li {
      width: 33.3333333%;
      /* Fallback */
      width: -webkit-calc(100% / 3);
      width: calc(100% / 3);
    }
  }

  @media screen and (max-width: 560px) {
    .grid li {
      width: 50%;
      /* Fallback */
      width: -webkit-calc(100% / 2);
      width: calc(100% / 2);
    }
  }

  @media screen and (max-width: 340px) {
    .grid li {
      width: 100%;
    }
  }
</style>
