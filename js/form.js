const list = [];

const getID = () => {
  const select = document.querySelectorAll(".symptom-list");
  for (let i = 0; i < select.length; i++) {
    const id = select[i].options[select[i].selectedIndex];
    console.log(id);
  }
};

const handleSubmit = () => {
  const info = [];

  const select = document.querySelectorAll(".symptom-list");
  for (let i = 0; i < select.length; i++) {
    const name = select[i].name;
    const value = select[i].value;
    const newObj = { name: name, id: value };
    info.push(newObj);
  }

  console.log(info);
};

$(function () {
  //   $.validator.addMethod(
  //     "validInputSymptom",
  //     function (value, element) {
  //       if ($("input[name='showSymptom']:checked").val() == "Yes") {
  //         if (value == "") return false;
  //       }
  //       return true;
  //     },
  //     "Bạn chưa nhập triệu chứng."
  //   );
  $("#form").validate({
    rules: {
      GanXuong: "required",
      CoLuc: "required",
      TruongLucCo: "required",
      RoiLoanCamGiac: "required",
    },
    // Specify validation error messages
    messages: {
      GanXuong: "Bạn chưa chọn Phản xạ gân xương",
      CoLuc: "Bạn chưa chọn Cơ Lực",
      TruongLucCo: "Bạn chưa chọn trường lực cơ",
      RoiLoanCamGiac: "Bạn chưa chọn Cảm giác",
    },

    errorPlacement: function (error, element) {
      error.insertAfter(element);
    },

    submitHandler: function (form) {
      form.submit();
    },
    // Make sure the form is submitted to the destination defined
    // in the "action" attribute of the form when valid
  });
});

$(document).ready(function () {
  $("#camgiacnong").hide();
  $("#camgiacsau").hide();
  $("#camgiacBT").hide();
  $("#camgiacdau").hide();
  $("#roiloancg").change((event) => {
    let RoiLoanCG = $("#roiloancg-dropdown").val();
    console.log(typeof RoiLoanCG + ", val:" + RoiLoanCG);
    if (RoiLoanCG === "1") {
      $("#camgiacnong").show();
      $("#camgiacsau").show();
      $("#camgiacBT").show();
      $("#camgiacdau").show();
    } else {
      $("#camgiacnong").hide();
      $("#camgiacsau").hide();
      $("#camgiacBT").hide();
      $("#camgiacdau").hide();
    }
  });
});
