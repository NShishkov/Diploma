# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Model.delete_all
Brand.delete_all
brands = Brand.create([{name: 'BMW'}, {name: "Audi"}, {name: "Ford"}, {name: "Mazda"}])

Model.delete_all
Model.create!(name: "Mondeo 4",
	description: 
		%{Ford Mondeo 4 поколения появился в 2007 году
  		и производился до 2013 года. Седан бизнес-класса
  		делит платформу с минивэном Ford S-Max, дебютировавшего 
  		в том же году на автошоу в Женеве. Эту платформу также получил 
  		и полноразмерный минивэн Ford Galaxy.},
  years_of_production: "2007 - 2013",
  brand: Brand.where(:name => "Ford").first)

Model.create!(name: "Focus 2",
	description: 
		%{Ford Focus второго поколения – автомобиль гольф-класса, производившийся 
			с 2005 по 2011 год в кузове хетчбек с тремя и пятью дверьми (трехдверка 
			позиционировалась как купе), седан, универсал и купе-кабриолет. 
			Модель имеет одну платформу с моделями Mazda 3 и Volvo S40/V50}	,
  years_of_production: "2005 - 2012",
  brand: Brand.where(:name => "Ford").first)

Model.create!(name: "6 GH",
	description: 
		%{Премьера второго поколения Mazda 6 состоялась в сентябре 2007 года 
			на автосалоне во Франкфурте. Автомобиль основан на собственной 
			оригинальной платформе [1] и поставлялся в кузове седан, хэтчбэк и 
			универсал (в Северной Америке не продавался). Кроме этого, американская 
			версия имела другие размеры."},
	years_of_production: "2005 - 2012",
  brand: Brand.where(:name => "Mazda").first)

Model.create!(name: "3 BL",
	description: 
		%{Второе поколение было представлено в 2009 году. Автомобиль изменился снаружи, 
			сохранилась колёсная база - 2640 мм в сравнении с первым поколением, выпускался 
			автомобиль все на той же платформе C1. Новая Mazda3 немного увеличилась в габаритах, 
			при этом стала легче чем предыдущее поколение. Значительно коснулись изменения интерьера}	,
  years_of_production: "2009 - 2013",
  brand: Brand.where(:name => "Mazda").first)

Model.create!(name: "X5 E70",
	description: 
		%{BMW X5 E70 — второе поколение баварского кроссовера X5. Автомобиль был 
			представлен в августе 2006 года на автосалоне в Париже. Продажи стартовали 
			в ноябре 2006 года в Северной Америке и в начале 2007 года в Европе, закончились 
			в конце 2013 . Как и предшественник E53, второе поколение собиралось на заводе в США.},
  years_of_production: "2007 - 2013",
  brand: Brand.where(:name => "BMW").first)

Model.create!(name: "X6 F16",
	description: 
		%{Cреднеразмерный кроссовер, выпускаемый компанией BMW. Он сочетает в себе как признаки 
			внедорожника (полный привод, большой дорожный просвет, большие колёса, тяговитый 
			двигатель), так и признаки купе (сильный скос крыши в задней части автомобиля). 
			Сама компания классифицирует данный автомобиль как Sports Activity Coupé (SAC) — 
			спортивное купе для активного отдыха},
  years_of_production: "2008 - Настоящее время",
  brand: Brand.where(:name => "BMW").first)

Client.delete_all
Client.create!([{:name => "Василий", :patronymic => "Петрович",	 :surname => "Пупкин", :phone_number => "+79153241232"},
	{:name => "Иван", :patronymic => "Иванович", :surname => "Иванов", :phone_number => "+79155341353"}])

Contractor.delete_all
Contractor.create!([
{:name => "Алексей", :patronymic => "Сергеевич", :surname => "Федоров", :info => "Частный мастер. Работаю в собственном гараже. Индвидуальный подход. Низкие цены.",
:address => "г. Москва, ул. Свободная, д. 32", :phone_number => "+79132315432"}, 
{:name => "Сергей", :patronymic => "Владимирович", :surname => "Андреев", :info => "Частный мастер. Опыт работы более 20 лет. Специализация на марка: ВАЗ, УАЗ",
:address => "г. Москва, ул. Саянская, д. 10", :phone_number => "+79185238298"}])