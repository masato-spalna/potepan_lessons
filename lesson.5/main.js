$(function() {
  const searchWord = () => {
    let searchText = $('input[name="search-word"]').val(); //検索ボッックスに入力された値
    
    $('.search_lists li').each(function(){
      let targetText = $(this).text(); //各キーワードの値を取得
      
      //各キーワードの値に検索ボックスの値がヒットしたら'hidden'クラスを追加
      if(targetText.indexOf(searchText) != -1){
        $(this).removeClass('hidden');
      } else {
        $(this).addClass('hidden');
      }
    });
  };
  
  // searchWordの実行
  $('#search_filter').on('input', searchWord);
});