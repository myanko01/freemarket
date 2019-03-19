
// $(function(){
  
//   // 正規表現をvalidation methodに追加
//   $.validator.addMethod(
//     "regex",
//     function(value, element, regexp) {
//       if (regexp.constructor != RegExp)
//         regexp = new RegExp(regexp);
//       else if (regexp.global)
//         regexp.lastIndex = 0;
//         return this.optional(element) || regexp.test(value);
//     },"erreur expression reguliere"
//   );

//   $("#user-forms").validate({
//     rules : {
//       nickname: {
//         required: true,
//         maxlength: 100
//       },
//       email: {
//         required: true,
//         maxlength: 255,
//         regex: /^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/,
//       },
//       password: {
//         required: true,
//         maxlength: 126
//       },
//       password_confirmation: {
//         required: true,
//         equalTo: "#password"
//       },
//       last_name: {
//         required: true,
//         maxlength: 126
//       },
//       first_name: {
//         required: true,
//         maxlength: 126
//       },
//       last_name_kana: {
//         required: true,
//         maxlength: 126,
//         regex: /[ァ-ヴ]/
//       },
//       first_name_kana: {
//         required: true,
//         maxlenght: 126,
//         regex: /[ァ-ヴ]/
//       },
//       birth_year: {
//         required: true
//       },
//       birth_month: {
//         required: true
//       },
//       birth_day: {
//         required: true
//       }
//     },
//     messages: {
//       nickname: {
//         required: "ニックネームを入力してください",
//         maxlength: "100文字以内のニックネームにしてください"
//       },
//       email: {
//         required: "メールアドレスを入力してください",
//         maxlength: "文字数が超過しています",
//         regex: "フォーマットが不適切です"
//       },
//       password: {
//         required: "パスワード(確認)を入力してください",
//         equalTo: "パスワードとパスワード (確認) が一致しません"
//       },
//       last_name: {
//         required: "姓(全角)を入力してください",
//         maxlength: "姓 は255文字までです"
//       },
//       first_name: {
//         required: "名(全角)を入力してください",
//         maxlength: "名 は255文字までです" 
//       },
//       last_name_kana: {
//         required: "姓(カナ)を入力してください",
//         maxlenght: "姓(カナ)は255文字までです",
//         regex: "カタカナで入力してください"
//       },
//       first_name_kana: {
//         required: "名(カナ)を入力してください",
//         maxlenght: "名(カナ)は255文字までです",
//         regex: "カタカナで入力してください"
//       },
//       birth_year: {
//         required: "選択してください"
//       },
//       birth_month: {
//         required: "選択してください"
//       },
//       birth_day: {
//         required: "選択してください"
//       }
//     }
//   });
// });
