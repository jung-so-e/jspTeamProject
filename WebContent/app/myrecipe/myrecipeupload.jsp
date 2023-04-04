<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>myrecipeupload</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/myrecipe/myrecipeupload.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/font/nanumbarungothicsubset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footer.css" />
    
    <style>
      * {font-family: "NanumBarunGothic", sans-serif;}
    </style>
    
  </head>
  <body>
    <header>
		<jsp:include page="${pageContext.request.contextPath}/app/header.jsp"/>
    </header>
    <main>
      <div class="upload-container">
        <!-- 나만의 레시피 상단박스  -->
        <div class="upload-box">
          <div class="upload-box-img"></div>
          <div class="upload-box-span">
            <div class="upload-box-title"><span>나만의 레시피 올리기</span></div>
            <div class="upload-box-title-s"><span>술.ZIP가이드에 도전하세요!</span></div>
            <div class="upload-box-info">
              <span
                >♥좋아요♥를 많이 받게되면<br />칵테일키트로 만들어드립니다. <br />매력적인 칵테일을 소개해주세요!
              </span>
            </div>
          </div>
        </div>
        <!-- 첨부파일-->
        <div class="file-upload">
          <label for="ex-file">
            <div class="img-icon">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512">
                <path
                  d="M220.6 121.2L271.1 96 448 96v96H333.2c-21.9-15.1-48.5-24-77.2-24s-55.2 8.9-77.2 24H64V128H192c9.9 0 19.7-2.3 28.6-6.8zM0 128V416c0 35.3 28.7 64 64 64H448c35.3 0 64-28.7 64-64V96c0-35.3-28.7-64-64-64H271.1c-9.9 0-19.7 2.3-28.6 6.8L192 64H160V48c0-8.8-7.2-16-16-16H80c-8.8 0-16 7.2-16 16l0 16C28.7 64 0 92.7 0 128zM168 304a88 88 0 1 1 176 0 88 88 0 1 1 -176 0z"
                />
              </svg>
              <span>이미지 업로드</span>
            </div>
          </label>
          <input type="file" id="ex-file" name="myRecipeFile" accept=".jpg, .jpeg, .png" multiple />
          <div class="img-preview">
			<img src="${pageContext.request.contextPath}/assets/img/myrecipe/${myRecipe.get사용자가올린mr파일이미지()}" class="card-img-top inside" alt="빅터프랑켄슈타인이미지">
		  </div>
          <div class="img-preview"></div>
          <div class="img-preview"></div>
        </div>
        <!-- 상품 이름 입력 -->
        <div class="name-title"><span>칵테일 이름</span></div>
        <input type="text" class="input" />
        <div class="name-title"><span>칵테일 영문 이름</span></div>
        <input type="text" class="input" />
        <!-- 상품 설명 -->
        <div class="pro-info-title"><span>칵테일 설명</span></div>
        <!-- <input type="text" class="info-input" /> -->
        <textarea name="" id="" cols="30" rows="10" class="info-input"></textarea>
        <!-- 재료 -->
        <div class="ingredient-title"><span>재료 정보</span></div>
        <div class="ingre-input-box">
          <span>1. </span><input type="text" class="ingre-input" placeholder="재료명" />
          <input type="text" class="ingre-input" placeholder="단위" />
          <span>6. </span><input type="text" class="ingre-input" placeholder="재료명" />
          <input type="text" class="ingre-input" placeholder="단위" />
        </div>
        <div class="ingre-input-box">
          <span>2. </span><input type="text" class="ingre-input" placeholder="재료명" />
          <input type="text" class="ingre-input" placeholder="단위" />
          <span>7. </span><input type="text" class="ingre-input" placeholder="재료명" />
          <input type="text" class="ingre-input" placeholder="단위" />
        </div>
        <div class="ingre-input-box">
          <span>3. </span><input type="text" class="ingre-input" placeholder="재료명" />
          <input type="text" class="ingre-input" placeholder="단위" />
          <span>8. </span><input type="text" class="ingre-input" placeholder="재료명" />
          <input type="text" class="ingre-input" placeholder="단위" />
        </div>
        <div class="ingre-input-box">
          <span>4. </span><input type="text" class="ingre-input" placeholder="재료명" />
          <input type="text" class="ingre-input" placeholder="단위" />
          <span>9. </span><input type="text" class="ingre-input" placeholder="재료명" />
          <input type="text" class="ingre-input" placeholder="단위" />
        </div>
        <div class="ingre-input-box">
          <span>5. </span><input type="text" class="ingre-input" placeholder="재료명" />
          <input type="text" class="ingre-input" placeholder="단위" />
          <span>10. </span><input type="text" class="ingre-input" placeholder="재료명" />
          <input type="text" class="ingre-input" placeholder="단위" />
        </div>
        <!-- 레시피 -->
        <div class="recipe-title"><span>레시피</span></div>
        <div class="input-box">
          <!-- <input type="text" class="recipe-input" /> -->
          <textarea name="" id="" cols="30" rows="10" class="recipe-input"></textarea>
        </div>
        <!-- 등록버튼 -->
        <div class="upload-btn-box">
          <button><span>업로드</span></button>
        </div>
        </div>
    </main>
    <footer>
    	<jsp:include page="${pageContext.request.contextPath}/app/footer.jsp"/>
    </footer>
  </body>
</html>
