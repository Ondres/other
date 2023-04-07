import requests # Модуль для обработки URL
from bs4 import BeautifulSoup # Модуль для работы с HTML
import time # Модуль для остановки программы
import smtplib # Модуль для работы с почтой
import re



# Основной класс
class Currency:
	# Ссылка на нужную страницу
	DOLLAR_RUB = 'https://www.google.com/search?q=usd+tp+rub&rlz=1C1PNFB_enUA975UA1001&oq=usd+tp+rub&aqs=chrome..69i57j0i10i131i433j0i10l8.2357j0j7&sourceid=chrome&ie=UTF-8'
	
	# Заголовки для передачи вместе с URL
	DOLLAR_BTC = 'https://www.google.com/search?q=usd+to+btc&client=opera-gx&hs=pen&biw=632&bih=754&sxsrf=ALiCzsZfKFCjm6k3UxiBHrO8NOWQ-ON2xQ%3A1660368375686&ei=9zX3YpnCKYqU9u8PoOip4AU&ved=0ahUKEwjZmeqZisP5AhUKiv0HHSB0ClwQ4dUDCA0&uact=5&oq=usd+to+btc&gs_lcp=Cgdnd3Mtd2l6EAMyCQgAEEMQRhCCAjIFCAAQywEyBQgAEMsBMgUIABDLATIFCAAQywEyBQgAEMsBMgUIABDLATIFCAAQywEyBQgAEMsBMgUIABDLAToECCMQJzoECAAQQzoKCAAQsQMQgwEQQzoJCCMQJxBGEIICOhAIABCABBCHAhCxAxCDARAUOggIABCABBCxAzoFCAAQgAQ6BwgAEAoQywFKBAhBGABKBAhGGABQAFitD2C9EGgAcAF4AIABbYgBrweSAQM3LjOYAQCgAQHAAQE&sclient=gws-wiz'
	DOLLAR_EUR ='https://www.xe.com/currencyconverter/convert/?Amount=1&From=USD&To=EUR'
	DOLLAR_ERC20 = 'https://www.google.com/search?q=dollar+to+ERC20&rlz=1C1PNFB_enUA975UA1001&sxsrf=ALiCzsYxpOeE3AG8i3Ik7P-n3B21ZCxH8w%3A1660372071172&ei=Z0T3YuuTCsaSwPAP-dmrCA&ved=0ahUKEwir4_z7l8P5AhVGCRAIHfnsCgEQ4dUDCA4&uact=5&oq=dollar+to+ERC20&gs_lcp=Cgdnd3Mtd2l6EAMyBQghEKABMgUIIRCgAToHCAAQRxCwA0oECEEYAEoECEYYAFC9Flj_OWDSPWgCcAF4AIABggGIAacJkgEDOC40mAEAoAEByAEGwAEB&sclient=gws-wiz'

	DOLLAR_TRC20 = 'https://www.google.com/search?q=dollar+to+ERC20&rlz=1C1PNFB_enUA975UA1001&sxsrf=ALiCzsYxpOeE3AG8i3Ik7P-n3B21ZCxH8w%3A1660372071172&ei=Z0T3YuuTCsaSwPAP-dmrCA&ved=0ahUKEwir4_z7l8P5AhVGCRAIHfnsCgEQ4dUDCA4&uact=5&oq=dollar+to+ERC20&gs_lcp=Cgdnd3Mtd2l6EAMyBQghEKABMgUIIRCgAToHCAAQRxCwA0oECEEYAEoECEYYAFC9Flj_OWDSPWgCcAF4AIABggGIAacJkgEDOC40mAEAoAEByAEGwAEB&sclient=gws-wiz'

	DOLLAR_POL = 'https://www.google.com/search?q=dollar+to+ERC20&rlz=1C1PNFB_enUA975UA1001&sxsrf=ALiCzsYxpOeE3AG8i3Ik7P-n3B21ZCxH8w%3A1660372071172&ei=Z0T3YuuTCsaSwPAP-dmrCA&ved=0ahUKEwir4_z7l8P5AhVGCRAIHfnsCgEQ4dUDCA4&uact=5&oq=dollar+to+ERC20&gs_lcp=Cgdnd3Mtd2l6EAMyBQghEKABMgUIIRCgAToHCAAQRxCwA0oECEEYAEoECEYYAFC9Flj_OWDSPWgCcAF4AIABggGIAacJkgEDOC40mAEAoAEByAEGwAEB&sclient=gws-wiz'
	DOLLAR_DAI = 'https://ru.investing.com/crypto/multi-collateral-dai/dai-usd'
	
	DOLLAR_PAX = 'https://24paybank.net/visa-mastercard-usd-to-pax.html'
	
	DOLLAR_BUSD = 'https://www.google.com/search?q=usd+to+busd&rlz=1C1PNFB_enUA975UA1001&ei=YSv0YquMCs6qrgTq56iYDA&ved=0ahUKEwjrwK3Xo735AhVOlYsKHeozCsMQ4dUDCA4&uact=5&oq=usd+to+busd&gs_lcp=Cgdnd3Mtd2l6EAMyBQgAEIAEMgUIABCABDIFCAAQgAQyBggAEB4QFjIICAAQHhAWEAoyCAgAEB4QFhAKMggIABAeEBYQCjIGCAAQHhAWMgYIABAeEBYyBggAEB4QFjoECAAQQzoLCAAQgAQQsQMQgwE6BwgAELEDEEM6DQguELEDEIMBENQCEEM6CAgAELEDEIMBOggIABCABBCxAzoJCAAQQxBGEIICOgoIABCxAxCDARAKOgQIABAKSgQIQRgASgQIRhgAUABYuy9gnzFoAXABeACAAWWIAfMHkgEEMTEuMZgBAKABAcABAQ&sclient=gws-wiz'

	DOLLAR_SOLANA = 'https://www.google.com/search?q=%D0%B4%D0%BE%D0%BB%D0%BB%D0%B0%D1%80+%D0%BA+%D1%81%D0%BE%D0%BB%D0%B0%D0%BD%D0%B5&rlz=1C1PNFB_enUA975UA1001&ei=Dzz0YvnyBeqxrgTv66awDA&ved=0ahUKEwi5trXLs735AhXqmIsKHe-1CcYQ4dUDCA4&uact=5&oq=%D0%B4%D0%BE%D0%BB%D0%BB%D0%B0%D1%80+%D0%BA+%D1%81%D0%BE%D0%BB%D0%B0%D0%BD%D0%B5&gs_lcp=Cgdnd3Mtd2l6EAMyBQgAEIAEOgcIABBHELADSgQIQRgASgQIRhgAUNcEWNcEYIAGaAFwAXgAgAFViAFVkgEBMZgBAKABAcgBCMABAQ&sclient=gws-wiz'

	DOLLAR_ETHEREUM = 'https://www.google.com/search?q=usd+to+ethereum&rlz=1C1PNFB_enUA975UA1001&ei=-Sv0YqW3DKmvrgTBxYLwDQ&ved=0ahUKEwjll-2fpL35AhWpl4sKHcGiAN4Q4dUDCA4&uact=5&oq=usd+to+ethereum&gs_lcp=Cgdnd3Mtd2l6EANKBAhBGABKBAhGGABQAFgAYABoAHAAeACAAQCIAQCSAQCYAQA&sclient=gws-wiz'

	DOLLAR_MONERO = 'https://www.google.com/search?q=usd+to+monero&rlz=1C1PNFB_enUA975UA1001&ei=CCz0YtugO52Wjgb3vIfoAg&ved=0ahUKEwjbxK-npL35AhUdi8MKHXfeAS0Q4dUDCA4&uact=5&oq=usd+to+monero&gs_lcp=Cgdnd3Mtd2l6EAMyBQgAEIAEMgUIABCABDIGCAAQHhAWMgYIABAeEBYyBggAEB4QFjIGCAAQHhAWMgYIABAeEBYyCAgAEB4QDxAWMgYIABAeEBYyBggAEB4QFjoHCAAQRxCwAzoHCAAQsAMQQzoKCAAQ5AIQsAMYAToSCC4QxwEQ0QMQyAMQsAMQQxgCOgwILhDIAxCwAxBDGAJKBAhBGABKBAhGGAFQ_AZY5wxg6Q5oAXABeACAAV2IAfgDkgEBNpgBAKABAcgBE8ABAdoBBggBEAEYCdoBBggCEAEYCA&sclient=gws-wiz'

	DOLLAR_LITECOIN = 'https://www.google.com/search?q=usd+to+litecoin&rlz=1C1PNFB_enUA975UA1001&ei=Fiz0YrvvGenorgSA9qLYBg&ved=0ahUKEwi70uStpL35AhVptIsKHQC7CGsQ4dUDCA4&uact=5&oq=usd+to+litecoin&gs_lcp=Cgdnd3Mtd2l6EANKBAhBGABKBAhGGABQAFgAYABoAHAAeACAAQCIAQCSAQCYAQA&sclient=gws-wiz'

	DOLLAR_DASH = 'https://www.google.com/search?q=usd+to+dash&rlz=1C1PNFB_enUA975UA1001&ei=ICz0YtqIDOySrgSD4Jr4AQ&ved=0ahUKEwjamLmypL35AhVsiYsKHQOwBh8Q4dUDCA4&uact=5&oq=usd+to+dash&gs_lcp=Cgdnd3Mtd2l6EAMyBQgAEIAEMgYIABAeEBYyBggAEB4QFjIGCAAQHhAWMgYIABAeEBYyBggAEB4QFjIGCAAQHhAWMgYIABAeEBYyBggAEB4QFjIGCAAQHhAWOgcIABBHELADOgcIABCwAxBDOgQIABBDOgQIABAKSgQIQRgASgQIRhgAULsFWLkJYKEMaAFwAXgAgAFbiAHHApIBATSYAQCgAQHIAQnAAQE&sclient=gws-wiz'
	
	DOLLAR_TRON = 'https://www.google.com/search?q=usd+to+tron&rlz=1C1PNFB_enUA975UA1001&ei=Kyz0YrKSHY_xrgTTxazAAw&ved=0ahUKEwjy0-m3pL35AhWPuIsKHdMiCzgQ4dUDCA4&uact=5&oq=usd+to+tron&gs_lcp=Cgdnd3Mtd2l6EAMyBQgAEIAEMgUIABCABDIFCAAQgAQyBggAEB4QFjIGCAAQHhAWMgYIABAeEBYyBggAEB4QFjIGCAAQHhAWMgYIABAeEBYyBggAEB4QFjoHCAAQRxCwAzoHCAAQsAMQQ0oECEEYAEoECEYYAFCSFljlGmD2HGgDcAF4AIABkgGIAZoDkgEDMy4xmAEAoAEByAEGwAEB&sclient=gws-wiz'

	DOLLAR_STELLAR = 'https://www.google.com/search?q=usd+to+stellar&rlz=1C1PNFB_enUA975UA1001&ei=Nyz0YuiKAtKwjgbFiIO4CQ&ved=0ahUKEwiogqu9pL35AhVSmMMKHUXEAJcQ4dUDCA4&uact=5&oq=usd+to+stellar&gs_lcp=Cgdnd3Mtd2l6EAMyBAgAEBMyCAgAEB4QFhATOgcIABBHELADOgcIABCwAxBDOgUIABCABDoECAAQQzoGCAAQHhAWOggIABAeEBYQCjoICAAQHhANEApKBAhBGABKBAhGGABQ9ARY3BFgoxNoAXABeACAAVqIAc4EkgEBN5gBAKABAcgBCsABAQ&sclient=gws-wiz'

	DOLLAR_RIPPLE = 'https://www.xe.com/currencyconverter/convert/?Amount=1&From=USD&To=XRP'

	DOLLAR_ZCASH = 'https://finance.yahoo.com/quote/ZEC-USD/'

	DOLLAR_DOGECOIN = 'https://www.google.com/search?q=usd+to+dogecoin&rlz=1C1PNFB_enUA975UA1001&ei=eSz0Yu-pOZLurgSQgIuACA&ved=0ahUKEwivyp7dpL35AhUSt4sKHRDAAoAQ4dUDCA4&uact=5&oq=usd+to+dogecoin&gs_lcp=Cgdnd3Mtd2l6EAMyBQgAEIAEMgUIABCABDIGCAAQHhAWMgYIABAeEBYyBggAEB4QFjIGCAAQHhAWMgYIABAeEBYyBggAEB4QFjIGCAAQHhAWMgYIABAeEBY6BwgAEEcQsANKBAhBGABKBAhGGABQxgVY1Q5g9xBoAXABeACAAVCIAe8EkgEBOJgBAKABAcgBCMABAQ&sclient=gws-wiz'

	DOLLAR_AZN = 'https://www.google.com/search?q=usd+to+AZN&rlz=1C1PNFB_enUA975UA1001&ei=myz0YoS6EqHqrgSD-p6QDA&ved=0ahUKEwjE85LtpL35AhUhtYsKHQO9B8IQ4dUDCA4&uact=5&oq=usd+to+AZN&gs_lcp=Cgdnd3Mtd2l6EAMyBQgAEMQCMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgYIABAeEBYyBggAEB4QFjIGCAAQHhAWOgcIABBHELADOgcIABCwAxBDOhIILhDHARDRAxDIAxCwAxBDGAE6DAguEMgDELADEEMYAUoECEEYAEoECEYYAFCqAViqAWCrBmgBcAF4AIABUogBUpIBATGYAQCgAQKgAQHIAQvAAQHaAQQIARgI&sclient=gws-wiz'

	DOLLAR_KZT = 'https://www.google.com/search?q=usd+to+KZT&rlz=1C1PNFB_enUA975UA1001&ei=iSz0Yt7CDKmqrgS-9IvQBw&ved=0ahUKEwieq8LkpL35AhUplYsKHT76AnoQ4dUDCA4&uact=5&oq=usd+to+KZT&gs_lcp=Cgdnd3Mtd2l6EAMyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEMgUIABCABDIFCAAQgAQyBQgAEIAEOgcIABBHELADOgcIABCwAxBDOgoIABDkAhCwAxgBOhIILhDHARDRAxDIAxCwAxBDGAJKBAhBGABKBAhGGAFQvwNYvwNgzgVoAXABeACAAU6IAU6SAQExmAEAoAECoAEByAERwAEB2gEGCAEQARgJ2gEGCAIQARgI&sclient=gws-wiz'

	headers = {'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36 OPR/89.0.4447.64'}

	current_converted_price = 0
	difference = 5 # Разница после которой будет отправлено сообщение на почту

	def __init__(self):
		# Установка курса валюты при создании объекта
		self.current_converted_price = str(self.get_currency_price().replace(",", "."))

	# Метод для получения курса валюты
	def get_currency_price(self):
		# Парсим всю страницу
		full_page = requests.get(self.DOLLAR_RUB, headers=self.headers)
		
		full_page1 = requests.get(self.DOLLAR_BTC, headers=self.headers)

		###############################################################
		full_page2 = requests.get(self.DOLLAR_EUR, headers=self.headers)
		
		full_page3 = requests.get(self.DOLLAR_ERC20, headers=self.headers)
		
		full_page4 = requests.get(self.DOLLAR_TRC20, headers=self.headers)
		
		full_page5 = requests.get(self.DOLLAR_POL, headers=self.headers)
		###############################################################
		full_page6 = requests.get(self.DOLLAR_DAI, headers=self.headers)
		###############################################################
		full_page7 = requests.get(self.DOLLAR_PAX, headers=self.headers)
		
		full_page8 = requests.get(self.DOLLAR_BUSD, headers=self.headers)
		
		full_page9 = requests.get(self.DOLLAR_SOLANA, headers=self.headers)
		
		full_page10 = requests.get(self.DOLLAR_ETHEREUM, headers=self.headers)
		
		full_page11 = requests.get(self.DOLLAR_MONERO, headers=self.headers)
		
		full_page12 = requests.get(self.DOLLAR_LITECOIN, headers=self.headers)
		
		full_page13 = requests.get(self.DOLLAR_DASH, headers=self.headers)
		
		full_page14 = requests.get(self.DOLLAR_TRON, headers=self.headers)
		
		full_page15 = requests.get(self.DOLLAR_STELLAR, headers=self.headers)
		###############################################################
		full_page16 = requests.get(self.DOLLAR_RIPPLE, headers=self.headers)
		
		full_page17 = requests.get(self.DOLLAR_ZCASH, headers=self.headers)
		
		full_page18 = requests.get(self.DOLLAR_DOGECOIN, headers=self.headers)

		full_page19 = requests.get(self.DOLLAR_KZT, headers=self.headers)

		full_page20 = requests.get(self.DOLLAR_AZN, headers=self.headers)

		# Разбираем через BeautifulSoup
		soup = BeautifulSoup(full_page.content, 'html.parser')
		
		soup1 = BeautifulSoup(full_page1.content, 'html.parser')
		
		soup2 = BeautifulSoup(full_page2.content, 'html.parser')
		
		soup3 = BeautifulSoup(full_page3.content, 'html.parser')
		
		soup4 = BeautifulSoup(full_page4.content, 'html.parser')
		
		soup5 = BeautifulSoup(full_page5.content, 'html.parser')
		
		soup6 = BeautifulSoup(full_page6.content, 'html.parser')
		
		soup7 = BeautifulSoup(full_page7.content, 'html.parser')
		
		soup8 = BeautifulSoup(full_page8.content, 'html.parser')
		
		soup9 = BeautifulSoup(full_page9.content, 'html.parser')
		
		soup10 = BeautifulSoup(full_page10.content, 'html.parser')
		
		soup11 = BeautifulSoup(full_page11.content, 'html.parser')
		
		soup12 = BeautifulSoup(full_page12.content, 'html.parser')
		
		soup13 = BeautifulSoup(full_page13.content, 'html.parser')
		
		soup14 = BeautifulSoup(full_page14.content, 'html.parser')
		
		soup15 = BeautifulSoup(full_page15.content, 'html.parser')
		
		soup16 = BeautifulSoup(full_page16.content, 'html.parser')
		
		soup17 = BeautifulSoup(full_page17.content, 'html.parser')
		
		soup18 = BeautifulSoup(full_page18.content, 'html.parser')

		soup19 = BeautifulSoup(full_page19.content, 'html.parser')

		soup20 = BeautifulSoup(full_page20.content, 'html.parser')
		
	

		# Получаем нужное для нас значение и возвращаем его
		convert = soup.findAll("span", {"class": "DFlfde", "class": "SwHCTb", "data-precision": 2})
		
		convert1 = soup1.findAll("span", {"class":"pclqee"})
		###############################################################
		convert2 = soup2.findAll("p", {"class": "result__BigRate-sc-1bsijpp-1", "class": "iGrAod"})
		###############################################################
		convert3 = soup3.findAll("span", {"class":"ILfuVd"})
		
		convert4 = soup4.findAll("span", {"class":"hgKElc"})
		
		convert5 = soup5.findAll("span", {"class":"hgKElc"})
		###############################################################
		convert6 = soup6.findAll("span", {"class":"text-2xl"})
		###############################################################
		convert7 = soup7.findAll("span", {"class":"exch-disc-num", "class":"course"})
		###############################################################
		convert8 = soup8.findAll("tr", {"class":"ztXv9"})
		
		convert9 = soup9.findAll("div", {"class":"webanswers-webanswers_table__webanswers-table"})
		
		convert10 = soup10.findAll("span", {"class":"pclqee"})
		
		convert11 = soup11.findAll("span", {"class":"pclqee"})
		
		convert12 = soup12.findAll("span", {"class":"pclqee"})
		
		convert13 = soup13.findAll("span", {"class":"pclqee"})
		
		convert14 = soup14.findAll("span", {"class":"pclqee"})
		
		convert15 = soup15.findAll("div", {"class":"webanswers-webanswers_table__webanswers-table"})
		###############################################################
		convert16 = soup16.findAll("p", {"class": "result__BigRate-sc-1bsijpp-1", "class": "iGrAod"})
		###############################################################
		convert17 = soup17.findAll("fin-streamer", {"class":"Fw(b)","class":"Fz(36px)","class":"Mb(-4px)","class":"D(ib)",})
		
		convert18 = soup18.findAll("span", {"class":"pclqee"})

		convert19 = soup19.findAll("span", {"class": "DFlfde", "class": "SwHCTb", "data-precision": 2})

		convert20 = soup20.findAll("span", {"class": "DFlfde", "class": "SwHCTb", "data-precision": 2})

		
		
		file = open("lib/курсы.dart", "w")
		file.write('import '+'"package:flutter/material.dart"'+';'+"\n")
		file.write('List<double> Courses1 = [ \n')
		s = [float(s) for s in re.findall(r'-?\d+\.?\d*', convert[0].text.replace(",", "."))]
		file.write(str(s[0])+",\n")
		print(s)
		file.write(convert1[0].text.replace(",", ".")+",\n")
		print(convert1[0].text.replace(",", "."))
		s = [float(s) for s in re.findall(r'-?\d+\.?\d*', convert2[0].text.replace(",", "."))]
		file.write(str(s[0])+",\n")
		print(s)
		s = [float(s) for s in re.findall(r'-?\d+\.?\d*', convert3[0].text.replace(",", "."))]
		file.write(str(s[1])+",\n")
		file.write(str(s[1])+",\n")
		file.write(str(s[1])+",\n")
		print(s)

		
		s = [float(s) for s in re.findall(r'-?\d+\.?\d*', convert6[0].text.replace(",", "."))]
		file.write(str(s[0])+",\n")
		print(s)
		s = [float(s) for s in re.findall(r'-?\d+\.?\d*', convert7[0].text.replace(",", "."))]
		file.write(str(s[1])+",\n")
		print(s)
		s = [float(s) for s in re.findall(r'-?\d+\.?\d*', convert8[0].text.replace(",", "."))]
		file.write(str(s[0])+",\n")
		print(s)
		s = [float(s) for s in re.findall(r'-?\d+\.?\d*', convert9[0].text.replace(",", "."))]
		file.write(str(1/s[0])+",\n")
		print(s)
		s = [float(s) for s in re.findall(r'-?\d+\.?\d*', convert10[0].text.replace(",", "."))]
		file.write(str(s[0])+",\n")
		print(s)
		s = [float(s) for s in re.findall(r'-?\d+\.?\d*', convert11[0].text.replace(",", "."))]
		file.write(str(s[0])+",\n")
		print(s)
		s = [float(s) for s in re.findall(r'-?\d+\.?\d*', convert12[0].text.replace(",", "."))]
		file.write(str(s[0])+",\n")
		print(s)
		s = [float(s) for s in re.findall(r'-?\d+\.?\d*', convert13[0].text.replace(",", "."))]
		file.write(str(s[0])+",\n")
		print(s)
		s = [float(s) for s in re.findall(r'-?\d+\.?\d*', convert14[0].text.replace(",", "."))]
		file.write(str(s[0])+",\n")
		print(s)
		s = [float(s) for s in re.findall(r'-?\d+\.?\d*', convert15[0].text.replace(",", "."))]
		file.write(str(s[1])+",\n")
		print(s)
		s = [float(s) for s in re.findall(r'-?\d+\.?\d*', convert16[0].text.replace(",", "."))]
		file.write(str(s[0])+",\n")
		print(s)
		s = [float(s) for s in re.findall(r'-?\d+\.?\d*', convert17[0].text.replace(",", "."))]
		file.write(str(s[0])+",\n")
		print(s)
		s = [float(s) for s in re.findall(r'-?\d+\.?\d*', convert18[0].text.replace(",", "."))]
		file.write(str(s[0])+",\n")

		s = [float(s) for s in re.findall(r'-?\d+\.?\d*', convert19[0].text.replace(",", "."))]
		file.write(str(s[0])+",\n")

		s = [float(s) for s in re.findall(r'-?\d+\.?\d*', convert20[0].text.replace(",", "."))]
		file.write(str(s[0])+",\n")
		file.write(str(1.0)+",\n")
		file.write('];')
		print(s)
		file.close()
                

		print(convert1[0].text)
		print(convert2[0].text)
		print(convert3[0].text)
		#print(convert4[0].text)
		print(convert5[0].text)
		print(convert6[0].text)
		print(convert7[0].text)
		print(convert8[0].text)
		print(convert9[0].text)
		print(convert10[0].text)
		print(convert11[0].text)
		print(convert12[0].text)
		print(convert13[0].text)
		print(convert14[0].text)
		print(convert15[0].text)
		print(convert16[0].text)
		print(convert17[0].text)
		print(convert18[0].text)
		return convert1[0].text

	# Проверка изменения валюты
	def check_currency(self):
		#currency = float(self.get_currency_price().replace(",", "."))		
		#print("Сейчас курс: 1 доллар = " + self.get_currency_price())
		time.sleep(300) # Засыпание программы на 3 секунды
		self.check_currency()


# Создание объекта и вызов метода
currency = Currency()
currency.check_currency()
