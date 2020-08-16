<template>
  <div class="container">
    <div class="li">
      <div class="ch-item">
        <div class="ch-info">
          <h3>Openness</h3>
          <p>看世界应该：包容 开明 开放</p>
        </div>
      </div>
    </div>
    <div class="li">
      <div class="ch-item">
        <div class="ch-info">
          <h3>Variousness</h3>
          <p>世界本就该：多元</p>
        </div>
      </div>
    </div>
    <div class="li">
      <div class="ch-item">
        <div class="ch-info">
          <h3>Freeness</h3>
          <p>你可以：自由 不拘泥</p>
        </div>
      </div>
    </div>
    <div class="li">
      <div class="ch-item">
        <div class="ch-info">
          <h3>Romanticness</h3>
          <p>需要感性：浪漫 多情 充沛</p>
        </div>
      </div>
    </div>
    <div class="li">
      <div class="ch-item">
        <div class="ch-info">
          <h3>Exquisiteness</h3>
          <p>作品应该：优雅 精致</p>
        </div>
      </div>
    </div>
    <div class="li">
      <div class="ch-item">
        <div class="ch-info">
          <h3>Expressiveness</h3>
          <p>创作应有：达意 态度 输出</p>
        </div>
      </div>
    </div>
    <div class="li">
      <div class="ch-item">
        <div class="ch-info">
          <h3>Eagerness</h3>
          <p>对待兴趣：热忱</p>
        </div>
      </div>
    </div>
    <div class="li">
      <div class="ch-item">
        <div class="ch-info">
          <h3>Righteousness</h3>
          <p>对世：正直 正义感 真理</p>
        </div>
      </div>
    </div>
    <div class="li">
      <div class="ch-item">
        <div class="ch-info">
          <h3>Introspectiveness</h3>
          <p>对己：自省</p>
        </div>
      </div>
    </div>
    <div class="li">
      <div class="ch-item">
        <div class="ch-info">
          <h3>Dialectic</h3>
          <p>对事：辩证 兼听</p>
        </div>
      </div>
    </div>
    <div class="li">
      <div class="ch-item">
        <div class="ch-info">
          <h3>Tenderness</h3>
          <p>世上悲欢：柔软 同理心</p>
        </div>
      </div>
    </div>
    <div class="li">
      <div class="ch-item">
        <div class="ch-info">
          <h3>Heartiness</h3>
          <p>待人：热心</p>
        </div>
      </div>
    </div>
    <div class="li">
      <div class="ch-item">
        <div class="ch-info">
          <h3>Alertness</h3>
          <p>至于未知：机敏 清醒</p>
        </div>
      </div>
    </div>
    <div class="li">
      <div class="ch-item">
        <div class="ch-info">
          <h3>Steadiness</h3>
          <p>当下：沉稳 可靠</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
    export default {
        name: "Keywords"
    }
</script>

<style scoped>
  .li {
    width: 14.28vw;
    height: 30vh;
    float: left;
  }

  .ch-item {
    width: 100%;
    height: 100%;
    border-radius: 0%;
    position: relative;
    cursor: default;
    box-shadow:
      inset 0 0 0 0 rgba(200,95,66, 0.1),
      inset 0 0 0 0px rgba(255,255,255,0.2),
      0 1px 2px rgba(0,0,0,0.1);

    -webkit-transition: all 0.4s ease-in-out;
    -moz-transition: all 0.4s ease-in-out;
    -o-transition: all 0.4s ease-in-out;
    -ms-transition: all 0.4s ease-in-out;
    transition: all 0.4s ease-in-out;
  }

  .ch-info {
    position: absolute;
    width: 100%;
    height: 100%;
    border-radius: 0%;
    opacity: 0;

    -webkit-transition: all 0.4s ease-in-out;
    -moz-transition: all 0.4s ease-in-out;
    -o-transition: all 0.4s ease-in-out;
    -ms-transition: all 0.4s ease-in-out;
    transition: all 0.4s ease-in-out;

    -webkit-transform: scale(0);
    -moz-transform: scale(0);
    -o-transform: scale(0);
    -ms-transform: scale(0);
    transform: scale(0);

    -webkit-backface-visibility: hidden; /*for a smooth font */

  }

  .ch-info h3 {
    color: #fff;
    position: relative;
    letter-spacing: 2px;
    font-size: 2.2vw;
    margin-top: 0;
    margin-left: 1.5vw;
    padding: 12vh 0 0 0;
    height: 2vh;
    font-family: 'Josefin Sans', Arial, sans-serif;
    font-style: italic;
    text-shadow:
      0 0 1px #fff,
      0 1px 2px rgba(0,0,0,0.3);
  }

  .ch-info p {
    color: #fff;
    padding: 1.5vh 0px;
    margin: 0 1.5vw 0 1.5vw;
    font-size: 6px;
    border-top: 1px solid rgba(255,255,255,0.5);
  }

  .ch-item:hover {
    box-shadow:
      inset 0 0 0 110px rgba(200,95,66, 0.1),
      inset 0 0 0 0px rgba(255,255,255,0.8),
      0 1px 2px rgba(0,0,0,0.1);
  }

  .ch-item:hover .ch-info {
    opacity: 1;

    -webkit-transform: scale(1);
    -moz-transform: scale(1);
    -o-transform: scale(1);
    -ms-transform: scale(1);
    transform: scale(1);
  }
</style>
