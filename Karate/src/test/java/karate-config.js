function fn() {

   var config = {
	   name : "youssrasaadeddine",
      BaseURL : 'https://reqres.in/api/',
   };
   var env = karate.env
   karate.log("Env is:",env)
   karate.configure('connectTimeout', 5000);
   karate.configure('readTimeout', 5000);
   karate.configure('ssl', true);
   return config;
}