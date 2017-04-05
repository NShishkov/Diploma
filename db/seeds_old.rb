# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.delete_all
categories = Category.create([{name: "Техническое обслуживание"}, {name: "Кузовной ремонт и покраска"},
	{name: "Ремонт ходовой и трансмиссии"}, {name: "Ремонт систем двигателя"}, {name: "Ремонт электрооборудования"},
	{name: "Ремонт других систем и агрегатов"}, {name: "Прочие услуги"}, {name: "Установка доп.оборудования"}])

Service.delete_all
cervices = Service.create([{:category => categories[0], :name => "Замена колодок"},
	{:category => categories[0], :name => "Плановое ТО"},
	{:category => categories[0], :name => "Послегарантийное обслуживание"},
	{:category => categories[0], :name => "Экспресс замена жидкостей"},
	{:category => categories[0], :name => "Экспресс замена масла, фильтров"},
	{:category => categories[1], :name => "Кузовной ремонт"},
	{:category => categories[1], :name => "Восстановление геометрии"},
	{:category => categories[1], :name => "Покраска"},
	{:category => categories[1], :name => "Матовая покраска"},
	{:category => categories[1], :name => "Подбор красок"},
	{:category => categories[1], :name => "Полировка кузова"},
	{:category => categories[1], :name => "Ремонт бамперов"},
	{:category => categories[1], :name => "Устранение сколов"},
	{:category => categories[1], :name => "Удаление вмятин без покраски"},
	{:category => categories[1], :name => "Локальная покраска"},
	{:category => categories[1], :name => "Аэрорграфия"},
	{:category => categories[1], :name => "Ламинирование пленками"},
	{:category => categories[1], :name => "Установка и ремонт автостекол"},
	{:category => categories[1], :name => "Антикоррозийная обработка"},
	{:category => categories[1], :name => "Аргонная сварка"},
	{:category => categories[1], :name => "Замена и вклейка автостекол"},
	{:category => categories[1], :name => "Ремонт крыши кабриолета"},
	{:category => categories[2], :name => "Диагностика ходовой"},
	{:category => categories[2], :name => "Диагностика КПП"},
	{:category => categories[2], :name => "Ремонт ходовой"},
	{:category => categories[2], :name => "Ремонт АКПП"},
	{:category => categories[2], :name => "Ремонт РКПП"},
	{:category => categories[2], :name => "Ремонт МКПП"},
	{:category => categories[2], :name => "Ремонт трансмиссии"},
	{:category => categories[2], :name => "Сход-развал"},
	{:category => categories[2], :name => "Замена тормозных дисков"},
	{:category => categories[3], :name => "Компьютерная диагностика двигателя"},
	{:category => categories[3], :name => "Ремонт двигателя"},
	{:category => categories[3], :name => "Ремонт дизельных двигателей"},
	{:category => categories[3], :name => "Ремонт ТНВД"},
	{:category => categories[3], :name => "Капитальный ремонт двигателя"},
	{:category => categories[3], :name => "Переборка двигателя"},
	{:category => categories[3], :name => "Ремонт турбин"},
	{:category => categories[3], :name => "Замена ремней ГРМ (цепей ГРМ)"},
	{:category => categories[3], :name => "Ремонт топливной системы"},
	{:category => categories[3], :name => "Ремонт карбюратора"},
	{:category => categories[3], :name => "Ремонт инжектора"},
	{:category => categories[3], :name => "Промывка инжектора"},
	{:category => categories[3], :name => "Промывка форсунок ультразвуком"},
	{:category => categories[3], :name => "Ремонт радиаторов"},
	{:category => categories[3], :name => "Ремонт системы охлаждения двигателя"},
	{:category => categories[4], :name => "Компьютерная диагностика электрооборудования"},
	{:category => categories[4], :name => "Ремонт электрооборудования"},
	{:category => categories[4], :name => "Ремонт генераторов"},
	{:category => categories[4], :name => "Ремонт стартеров"},
	{:category => categories[5], :name => "Ремонт рулевой рейки"},
	{:category => categories[5], :name => "Ремонт рулевого механизма"},
	{:category => categories[5], :name => "Ремонт гидроусилителя"},
	{:category => categories[5], :name => "Ремонт отопительной системы"},
	{:category => categories[5], :name => "Ремонт кондиционера"},
	{:category => categories[5], :name => "Ремонт глушителей"},
	{:category => categories[5], :name => "Ремонт катализаторов"},
	{:category => categories[5], :name => "Ремонт сцепления"},
	{:category => categories[5], :name => "Заправка кондиционера"},
	{:category => categories[5], :name => "Ремонт тормозной системы"},
	{:category => categories[6], :name => "Предпродажная подготовка"},
	{:category => categories[6], :name => "Химчистка"},
	{:category => categories[6], :name => "Шиномонтаж"},
	{:category => categories[6], :name => "Нано-полировка стекол и кузова"},
	{:category => categories[7], :name => "Бронирование фар"},
	{:category => categories[7], :name => "Перетяжка салона"},
	{:category => categories[7], :name => "Тонирование автомобилей"},
	{:category => categories[7], :name => "Тюнинг автомобиля"},
	{:category => categories[7], :name => "Тюнинг тормозной системы"},
	{:category => categories[7], :name => "Установа автозвука"},
	{:category => categories[7], :name => "Установка автосигнализации"},
	{:category => categories[7], :name => "Установка биксенона"},
	{:category => categories[7], :name => "Установка ксенона"},
	{:category => categories[7], :name => "Установка иммобилайзеров"},
	{:category => categories[7], :name => "Установка парктроников"},
	{:category => categories[7], :name => "Установка спутниковых сигнализаций"},
	{:category => categories[7], :name => "Установка, ремонт газоаппратуры"},
	{:category => categories[7], :name => "Установка навигации"},
	{:category => categories[7], :name => "Шумоизоляция"},
	{:category => categories[7], :name => "Установка подогрева сидений"},
	{:category => categories[7], :name => "Установка глушителей и насадок"},
	{:category => categories[7], :name => "Чип-тюнинг"}])

Model.delete_all
Brand.delete_all
brands = Brand.create([{name: 'BMW'}, {name: "Audi"}, {name: "Ford"}, {name: "Mazda"},
	{name: "LADA (ВАЗ)"}, {name: "Cadillac"}, {name: "Chery"}, {name: "Chevrolet"}, {name: "Chrysler"},
	{name: "Citroen"}, {name: "Daewoo"}, {name: "Dodge"}, {name: "Fiat"}, {name: "Great Wall"},
	{name: "Honda"}, {name: "Hyundai"}, {name: "Infiniti"}, {name: "Jaguar"}, {name: "Jeep"}, 
	{name: "Kia"}, {name: "Land Rover"}, {name: "Lexus"}, {name: "Lifan"}, {name: "Mini"},
	{name: "Mercedes-Benz"}, {name: "Mitsubishi"}, {name: "Nissan"}, {name: "Opel"}, {name: "Peugeot"}, 
	{name: "Porsche"}, {name: "Renault"}, {name: "Saab"}, {name: "Skoda"}, {name: "SsangYong"},
	{name: "Subaru"}, {name: "Toyota"}, {name: "Volkswagen"}, {name: "Volvo"}, {name: "ГАЗ"}, {name: "УАЗ"}])

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

Role.delete_all
roles = Role.create([{:name => 'client', :info => 'Клиент (заказчик)'},
  {:name => 'moderator', :info => 'Модератор системы'},
  {:name => 'admin', :info => 'Администратор системы'},
  {:name => 'contractor', :info => 'Исполнитель заданий'}])

con1 = Contractor.first
con2 = Contractor.second
cl1 = Client.first
cl2 = Client.second
us1 = User.where(:email => "contractor1").first
us2 = User.where(:email => "client1").first
r1 = Role.where(:name => "contractor").first
r2 = Role.where(:name => "client").first
r3 = Role.where(name: "admin").first

RoleUser.delete_all
RoleUser.create(:role => r1, :user => us1, :us_role => c1)
RoleUser.create(:role => r2, :user => us2, :us_role => c2)