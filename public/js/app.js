$("#summernote").summernote({
    placeholder: "Описание",
    tabsize: 2,
    height: 120,
    toolbar: [
        //   ["style", ["style"]],
        ["font", ["bold", "underline", "clear"]],
        //   ["color", ["color"]],
        ["para", ["ul", "ol", "paragraph", "height"]],
        //   ["table", ["table"]],
        //   ["insert", ["link", "picture", "video"]],
        //   ["view", ["codeview"]], //"fullscreen",, "help"
    ],
});
let content = $("#summernote").summernote("code");