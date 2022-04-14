*** Variables ***

&{formRegister}
...     firstName=//input[@placeholder='First Name']
...     lastName=//input[@placeholder='Last Name']
...     adress=//textarea[@ng-model='Adress']
...     email=//input[@type='email']
...     phone=//input[@type='tel']
...     gender=//input[@value='Male']
...     hobbies=//input[@id='checkbox2']
...     languages=//div[@id='msdd']
...     cmbLanguages=//a[normalize-space()='Catalan']
...     skills=//select[@id='Skills']
...     country=//select[@id='countries']
...     selectCountry=//select[@id='country']
...     year=//select[@id='yearbox']
...     month=//select[@placeholder='Month']
...     day=//select[@id='daybox']
...     password=//input[@id='firstpassword']
...     confirmPass=//input[@id='secondpassword']
...     submit=//button[@id='submitbtn']
...     image=//input[@id='imagesrc']
...     text=//div[h1]

&{preencherForm}
...     firstName=Romilton
...     lastName=Viana
...     adress=Rua Principal
...     email=rhom0909@gmail.com
...     phone=1199999999
...     skills=Software
...     country=br
...     selectCountry=Netherlands
...     year=1987
...     month=April
...     day=8
...     password=pwd123
...     confirmPass=pwd123