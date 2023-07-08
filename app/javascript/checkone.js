function checkOne (){
  // チェックボックスを一つだけ選択できるようにする

  // 清澄度（clarity）
  var clarityCheckboxes = document.querySelectorAll('.clarity-input');
  var selectedClarity = null;

  clarityCheckboxes.forEach(function(checkbox) {
    checkbox.addEventListener('change', function() {
      if (this.checked) {
        if (selectedClarity !== null && selectedClarity !== this) {
          selectedClarity.checked = false; // 他のチェックボックスを選択した場合は、すでに選択されているチェックを外す
        }
        selectedClarity = this;
      } else {
        selectedClarity = null; // チェックを外した場合は選択されたチェックボックスをリセット
      }
    });
  });

  // 輝き（brilliance）
  var brillianceCheckboxes = document.querySelectorAll('.brilliance-input');
  var selectedBrilliance = null;

  brillianceCheckboxes.forEach(function(checkbox) {
    checkbox.addEventListener('change', function() {
      if (this.checked) {
        if (selectedBrilliance !== null && selectedBrilliance !== this) {
          selectedBrilliance.checked = false; // 他のチェックボックスを選択した場合は、すでに選択されているチェックを外す
        }
        selectedBrilliance = this;
      } else {
        selectedBrilliance = null; // チェックを外した場合は選択されたチェックボックスをリセット
      }
    });
  });

  // 濃淡（depth）
  var depthCheckboxes = document.querySelectorAll('.depth-input');
  var selectedDepth = null;

  depthCheckboxes.forEach(function(checkbox) {
    checkbox.addEventListener('change', function() {
      if (this.checked) {
        if (selectedDepth !== null && selectedDepth !== this) {
          selectedDepth.checked = false; // 他のチェックボックスを選択した場合は、すでに選択されているチェックを外す
        }
        selectedDepth = this;
      } else {
        selectedDepth = null; // チェックを外した場合は選択されたチェックボックスをリセット
      }
    });
  });

  // 粘性（viscosity）
  var viscosityCheckboxes = document.querySelectorAll('.viscosity-input');
  var selectedViscosity = null;

  viscosityCheckboxes.forEach(function(checkbox) {
    checkbox.addEventListener('change', function() {
      if (this.checked) {
        if (selectedViscosity !== null && selectedViscosity !== this) {
          selectedViscosity.checked = false; // 他のチェックボックスを選択した場合は、すでに選択されているチェックを外す
        }
        selectedViscosity = this;
      } else {
        selectedViscosity = null; // チェックを外した場合は選択されたチェックボックスをリセット
      }
    });
  });

  // アタック（attack）
  var attackCheckboxes = document.querySelectorAll('.attack-input');
  var selectedAttack = null;

  attackCheckboxes.forEach(function(checkbox) {
    checkbox.addEventListener('change', function() {
      if (this.checked) {
        if (selectedAttack !== null && selectedAttack !== this) {
          selectedAttack.checked = false; // 他のチェックボックスを選択した場合は、すでに選択されているチェックを外す
        }
        selectedAttack = this;
      } else {
        selectedAttack = null; // チェックを外した場合は選択されたチェックボックスをリセット
      }
    });
  });

  // 甘味（sweetness）
  var sweetnessCheckboxes = document.querySelectorAll('.sweetness-input');
  var selectedSweetness = null;

  sweetnessCheckboxes.forEach(function(checkbox) {
    checkbox.addEventListener('change', function() {
      if (this.checked) {
        if (selectedSweetness !== null && selectedSweetness !== this) {
          selectedSweetness.checked = false; // 他のチェックボックスを選択した場合は、すでに選択されているチェックを外す
        }
        selectedSweetness = this;
      } else {
        selectedSweetness = null; // チェックを外した場合は選択されたチェックボックスをリセット
      }
    });
  });

  // 苦味（bitterness）
  var bitternessCheckboxes = document.querySelectorAll('.bitterness-input');
  var selectedBitterness = null;

  bitternessCheckboxes.forEach(function(checkbox) {
    checkbox.addEventListener('change', function() {
      if (this.checked) {
        if (selectedBitterness !== null && selectedBitterness !== this) {
          selectedBitterness.checked = false; // 他のチェックボックスを選択した場合は、すでに選択されているチェックを外す
        }
        selectedBitterness = this;
      } else {
        selectedBitterness = null; // チェックを外した場合は選択されたチェックボックスをリセット
      }
    });
  });

  // アルコール（alcohol）
  var alcoholCheckboxes = document.querySelectorAll('.alcohol-input');
  var selectedAlcohol = null;

  alcoholCheckboxes.forEach(function(checkbox) {
    checkbox.addEventListener('change', function() {
      if (this.checked) {
        if (selectedAlcohol !== null && selectedAlcohol !== this) {
          selectedAlcohol.checked = false; // 他のチェックボックスを選択した場合は、すでに選択されているチェックを外す
        }
        selectedAlcohol = this;
      } else {
        selectedAlcohol = null; // チェックを外した場合は選択されたチェックボックスをリセット
      }
    });
  });

  // 余韻（finish）
  var finishCheckboxes = document.querySelectorAll('.finish-input');
  var selectedFinish = null;

  finishCheckboxes.forEach(function(checkbox) {
    checkbox.addEventListener('change', function() {
      if (this.checked) {
        if (selectedFinish !== null && selectedFinish !== this) {
          selectedFinish.checked = false; // 他のチェックボックスを選択した場合は、すでに選択されているチェックを外す
        }
        selectedFinish = this;
      } else {
        selectedFinish = null; // チェックを外した場合は選択されたチェックボックスをリセット
      }
    });
  });

  // 評価（evaluation）
  var evaluationCheckboxes = document.querySelectorAll('.evaluation-input');
  var selectedEvaluation = null;

  evaluationCheckboxes.forEach(function(checkbox) {
    checkbox.addEventListener('change', function() {
      if (this.checked) {
        if (selectedEvaluation !== null && selectedEvaluation !== this) {
          selectedEvaluation.checked = false; // 他のチェックボックスを選択した場合は、すでに選択されているチェックを外す
        }
        selectedEvaluation = this;
      } else {
        selectedEvaluation = null; // チェックを外した場合は選択されたチェックボックスをリセット
      }
    });
  });

  // 適正温度（serving_temperature）
  var servingTemperatureCheckboxes = document.querySelectorAll('.serving_temperature-input');
  var selectedServingTemperature = null;

  servingTemperatureCheckboxes.forEach(function(checkbox) {
    checkbox.addEventListener('change', function() {
      if (this.checked) {
        if (selectedServingTemperature !== null && selectedServingTemperature !== this) {
          selectedServingTemperature.checked = false; // 他のチェックボックスを選択した場合は、すでに選択されているチェックを外す
        }
        selectedServingTemperature = this;
      } else {
        selectedServingTemperature = null; // チェックを外した場合は選択されたチェックボックスをリセット
      }
    });
  });

  // グラス（glass）
  var glassCheckboxes = document.querySelectorAll('.glass-input');
  var selectedGlass = null;

  glassCheckboxes.forEach(function(checkbox) {
    checkbox.addEventListener('change', function() {
      if (this.checked) {
        if (selectedGlass !== null && selectedGlass !== this) {
          selectedGlass.checked = false; // 他のチェックボックスを選択した場合は、すでに選択されているチェックを外す
        }
        selectedGlass = this;
      } else {
        selectedGlass = null; // チェックを外した場合は選択されたチェックボックスをリセット
      }
    });
  });
};

window.addEventListener('DOMContentLoaded', checkOne);