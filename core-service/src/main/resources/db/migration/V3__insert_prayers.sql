



INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Prayer to the Holy Spirit',
    'Rugăciunea către Duhul Sfânt',
    'Молитва к Святому Духу',
    '',  -- Text engleză gol
    'Slavă Ție, Dumnezeul nostru, slavă Ție.' || '\n' ||
    'Împărate Ceresc, Mângâieto­rule, Duhul adevărului, Care pretutindenea ești și toate le îm­plinești,' || '\n' ||
    'Vistierul bunătăților și dătătorule de viață, vino și Te sălășluiește întru noi,' || '\n' ||
    'și ne curățește pe noi de toată întinăciunea și mântuiește, Bunule, sufletele noastre.' || '\n\n' ||
    'Sfinte Dumnezeule, Sfinte tare, Sfinte fără de moarte, miluiește-ne pe noi (de trei ori).' || '\n\n' ||
    'Slavă Tatălui și Fiului și Sfântului Duh, și acum și pururea și în vecii vecilor. Amin.' || '\n\n' ||
    'Preasfântă Treime, miluiește-ne pe noi. Doam­ne, curățește păcatele noastre. Stăpâne, iartă fărădelegile noastre.' || '\n' ||
    'Sfinte, cercetează și vin­decă neputințele noas­tre, pentru numele Tău.' || '\n\n' ||
    'Doamne miluiește (de trei ori), Slavă..., și acum...',  -- Text română complet
    '',  -- Text rusă gol
    'MORNING',
    1,
    1  -- Ajustează cu ID-ul real al categoriei principale "Rugăciuni de Dimineață" după insert
);
-- Insert sub-rugăciune pentru Dimineață: Tatăl Nostru (order_index = 2, ajustează parent_id după ID-ul categoriei MORNING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Our Father',
    'Tatăl Nostru',
    'Отче наш',
    '',  -- Text engleză gol
    'Tatăl nostru, Care ești în ceruri, sfin­țească-Se numele Tău,' || '\n' ||
    'vie împărăția Ta, fie voia Ta, precum în cer așa și pe pă­mânt.' || '\n' ||
    'Pâinea noastră cea de toate zilele, dă-ne-o nouă astăzi și ne iartă nouă greșelile noastre,' || '\n' ||
    'precum și noi iertăm greșiților noș­tri. Și nu ne duce pe noi în ispită,' || '\n' ||
    'ci ne izbă­vește de cel rău. Pentru rugăciunile Sfinților Părinților noștri,' || '\n' ||
    'Doamne Iisuse Hristoase Fiul lui Dumnezeu, miluiește-ne pe noi. Amin.',  -- Text română complet
    '',  -- Text rusă gol
    'MORNING',
    2,
    1  -- Ajustează cu ID-ul real al categoriei principale "Rugăciuni de Dimineață" după insert
);
-- Insert sub-rugăciune pentru Dimineață: Tropare și Rugăciune (order_index = 2, ajustează parent_id după ID-ul categoriei MORNING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Tropare and Prayer',
    'Tropare și Rugăciune',
    'Тропари и Молитва',
    '',  -- Text engleză gol
    'Sculându-ne din somn, cădem către Tine, Bunule, și cântare îngerească strigăm Ție, Puternice: Sfânt, Sfânt, Sfânt ești, Dumnezeule; pentru rugăciunile îngerilor Tăi, miluiește-ne pe noi.' || '\n\n' ||
    'Slavă...' || '\n' ||
    'Din pat și din somn m-ai ridicat, Doamne; mintea mea o luminează, inima și buzele mele le deschide ca să Te laud pe Tine, Sfântă Treime: Sfânt, Sfânt, Sfânt ești, Dumnezeule; pentru rugăciunile tuturor sfinților Tăi, miluiește-ne pe noi.' || '\n\n' ||
    'Și acum...' || '\n' ||
    'Fără de veste Judecătorul va veni și faptele fiecăruia se vor descoperi. Ci cu frică să strigăm în miezul nopții: Sfânt, Sfânt, Sfânt ești, Dumnezeule, pentru Născătoarea de Dumnezeu, miluiește-ne pe noi.' || '\n\n' ||
    'Doamne, miluiește (de 12 ori), apoi rugăciunea aceasta:',  -- Text română complet
    '',  -- Text rusă gol
    'MORNING',
    3,
    1  -- Ajustează cu ID-ul real al categoriei principale "Rugăciuni de Dimineață" după insert
);
-- Insert sub-rugăciune pentru Dimineață: Din somn sculându-mă... (order_index = 3, ajustează parent_id după ID-ul categoriei MORNING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Prayer upon Rising from Sleep',
    'Din somn sculându-mă',
    'Молитва по пробуждении от сна',
    '',  -- Text engleză gol
    'Din somn sculându-mă, mulțumescu-Ți Ție, Preasfântă Treime,' || '\n' ||
    'că pentru multa bunătatea Ta și pentru îndelungă răbdarea Ta,' || '\n' ||
    'nu Te-ai mâniat pe mine, leneșul și păcătosul,' || '\n' ||
    'nici nu m-ai pierdut pentru fărădelegile mele,' || '\n' ||
    'ci ai arătat iubire de oameni, după obicei;' || '\n' ||
    'și, întru deznădăjduire zăcând eu, m-ai ridicat,' || '\n' ||
    'ca să mânec și să slăvesc puterea Ta.' || '\n' ||
    'Deci acum luminează-mi ochii gândului,' || '\n' ||
    'deschide-mi gura, ca să mă învăț cuvintele Tale,' || '\n' ||
    'să înțeleg poruncile Tale, să fac voia Ta,' || '\n' ||
    'să-Ți cânt întru mărturisirea inimii și să laud preasfânt numele Tău,' || '\n' ||
    'al Tatălui și al Fiului și al Sfântului Duh,' || '\n' ||
    'acum și pururea și in vecilor vecilor. Amin.',  -- Text română complet
    '',  -- Text rusă gol
    'MORNING',
    4,
    1  -- Ajustează cu ID-ul real al categoriei principale "Rugăciuni de Dimineață" după insert
);
-- Insert sub-rugăciune pentru Dimineață: Psalmul 50 (order_index = 4, ajustează parent_id după ID-ul categoriei MORNING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Psalm 50',
    'Psalmul 50',
    'Псалом 50',
    '',  -- Text engleză gol
    'Miluiește-mă, Dumnezeule, după mare mila Ta și după mulțimea îndurărilor Tale șterge fărădelegea mea.' || '\n' ||
    'Mai vârtos mă spală de fărădelegea mea și de păcatul meu mă curățește.' || '\n' ||
    'Că fărădelegea mea eu o cunosc și păcatul meu înaintea mea este pururea.' || '\n' ||
    'Ție Unuia am greșit și rău înaintea Ta am făcut, așa încât drept ești Tu întru cuvintele Tale și biruitor când vei judeca Tu.' || '\n' ||
    'Că iată întru fărădelegi m-am zămislit și în păcate m-a născut maica mea.' || '\n' ||
    'Că iată adevărul ai iubit; cele nearătate și cele ascunse ale înțelepciunii Tale, mi-ai arătat mie.' || '\n' ||
    'Stropi-mă-vei cu isop și mă voi curăți; spăla-mă-vei și mai vârtos decât zăpada mă voi albi.' || '\n' ||
    'Auzului meu vei da bucurie și veselie; bucura-se-vor oasele mele cele smerite.' || '\n' ||
    'Întoarce fața Ta de la păcatele mele și toate fărădelegile mele șterge-le.' || '\n' ||
    'Inimă curată zidește intru mine, Dumnezeule și duh drept înnoiește întru cele dinlăuntru ale mele.' || '\n' ||
    'Nu mă lepăda de la fața Ta și Duhul Tău Cel Sfânt nu-L lua de la mine.' || '\n' ||
    'Dă-mi mie bucuria mântuirii Tale și cu duh stăpânitor mă întărește.' || '\n' ||
    'Învăța-voi pe cei fără de lege căile Tale și cei necredincioși la Tine se vor întoarce.' || '\n' ||
    'Izbăvește-mă de vărsarea de sânge, Dumnezeule, Dumnezeul mântuirii mele; bucura-se-va limba mea de dreptatea Ta.' || '\n' ||
    'Doamne, buzele mele vei deschide și gura mea va vesti lauda Ta.' || '\n' ||
    'Că de ai fi voit jertfă, ți-aș fi dat; arderile de tot nu le vei binevoi.' || '\n' ||
    'Jertfa lui Dumnezeu: duhul umilit; inima înfrântă și smerită Dumnezeu nu o va urgisi.' || '\n' ||
    'Fă bine, Doamne, întru bună voirea Ta Sionului, și să se zidească zidurile Ierusalimului.' || '\n' ||
    'Atunci vei binevoi jertfa dreptății, prinosul și arderile de tot; atunci vor pune pe altarul Tău viței.',  -- Text română complet
    '',  -- Text rusă gol
    'MORNING',
    5,
    1  -- Ajustează cu ID-ul real al categoriei principale "Rugăciuni de Dimineață" după insert
);
-- Insert sub-rugăciune pentru Dimineață: Crezul (order_index = 5, ajustează parent_id după ID-ul categoriei MORNING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'The Creed',
    'Crezul',
    'Символ веры',
    '',  -- Text engleză gol
    'Cred într-unul Dumnezeu, Tatăl, Atotțiitorul, Făcătorul cerului și al pământului, văzutelor tuturor și nevăzutelor.' || '\n' ||
    'Și într-unul Domn Iisus Hristos, Fiul lui Dumnezeu, Unul-Născut, Care din Tatăl S-a născut mai înainte de toți vecii.' || '\n' ||
    'Lumină din Lumină, Dumnezeu adevărat din Dumnezeu adevărat, născut, nu făcut; Cel de o ființă cu Tatăl, prin Care toate s-au făcut.' || '\n' ||
    'Care pentru noi oamenii şi pentru a noastră mântuire S-a pogorât din ceruri şi S-a întrupat de la Duhul Sfânt şi din Maria Fecioara, şi S-a făcut om.' || '\n' ||
    'Şi S-a răstignit pentru noi în zilele lui Ponţiu Pilat şi a pătimit şi S-a îngropat.' || '\n' ||
    'Şi a înviat a treia zi, după Scripturi.' || '\n' ||
    'Şi S-a înălţat la ceruri şi șade de-a dreapta Tatălui.' || '\n' ||
    'Şi iarăși va să vină cu slavă, să judece viii şi morţii, a Cărui împărăţie nu va avea sfârşit.' || '\n' ||
    'Şi întru Duhul Sfânt, Domnul de viață Făcătorul, Care de la Tatăl purcede, Cel ce împreună cu Tatăl şi cu Fiul este închinat şi slăvit, Care a grăit prin prooroci.' || '\n' ||
    'Într-una sfântă, sobornicească și apostolească Biserică;' || '\n' ||
    'Mărturisesc un Botez spre iertarea păcatelor.' || '\n' ||
    'Aştept învierea morţilor' || '\n' ||
    'Şi viața veacului ce va să fie.Amin.',  -- Text română complet
    '',  -- Text rusă gol
    'MORNING',
    6,
    1  -- Ajustează cu ID-ul real al categoriei principale "Rugăciuni de Dimineață" după insert
);
-- Insert sub-rugăciune pentru Dimineață: Rugăciunea întâi a Sfântului Macarie cel Mare (order_index = 6, ajustează parent_id după ID-ul categoriei MORNING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'First Prayer of Saint Macarius the Great',
    'Rugăciunea întâi, a Sfântului Macarie cel Mare',
    'Первая молитва Святого Макария Великого',
    '',  -- Text engleză gol
    'Doamne, curățește-mă pe mine pă­­că­to­sul, că niciodată n-am făcut bine înaintea Ta.' || '\n' ||
    'Izbăvește-mă deci de cel viclean și să fie întru mine voia Ta,' || '\n' ||
    'ca fără de osândă să deschid gura mea cea nevrednică și să laud prea­sfânt nu­mele Tău,' || '\n' ||
    'al Tatălui și al Fiului și al Sfântului Duh, acum și puru­rea și în vecii vecilor. Amin.',  -- Text română complet
    '',  -- Text rusă gol
    'MORNING',
    7,
    1  -- Ajustează cu ID-ul real al categoriei principale "Rugăciuni de Dimineață" după insert
);
-- Insert sub-rugăciune pentru Dimineață: Rugăciunea a doua a Sfântului Macarie cel Mare (order_index = 7, ajustează parent_id după ID-ul categoriei MORNING)

  INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
  VALUES (
      'Second Prayer of Saint Macarius the Great',
      'Rugăciunea a doua, a Sfântului Macarie cel Mare',
      'Вторая молитва Святого Макария Великого',
      '',  -- Text engleză gol
      'Din somn sculându-mă, cântare de miez de noapte aduc Ție, Mân­tu­itorule, și înaintea Ta căzând, strig:' || '\n' ||
      'Nu mă lăsa să adorm în moartea pă­catelor, ci mă mi­luiește, Cel Care Te-ai răstignit de voie,' || '\n' ||
      'și pe mine, cel care zac în lene, grăbind mă scoa­lă și mă mân­tuiește,' || '\n' ||
      'ca să stau înaintea Ta întru rugăciuni; iar după somnul nopții, să-mi lumi­nezi ziua fără de păcat,' || '\n' ||
      'Hris­toase Doam­ne, și mă mântuiește.',  -- Text română complet
      '',  -- Text rusă gol
      'MORNING',
      8,
      1  -- Ajustează cu ID-ul real al categoriei principale "Rugăciuni de Dimineață" după insert
  );

-- Insert sub-rugăciune pentru Dimineață: Rugăciunea a treia a Sfântului Macarie cel Mare (order_index = 8, ajustează parent_id după ID-ul categoriei MORNING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Third Prayer of Saint Macarius the Great',
    'Rugăciunea a treia, a Sfântului Macarie cel Mare',
    'Третья молитва Святого Макария Великого',
    '',  -- Text engleză gol
    'Sculându-mă din somn, către Tine, Stă­pâne, Iubitorule de oameni, scap și spre lucrurile Tale mă nevoiesc.' || '\n' ||
    'Mă rog Ție, ajută-mi cu milostivirea Ta în toată vre­mea și în tot lucrul.' || '\n' ||
    'Iz­bă­vește-mă de toa­te lucrurile lumești cele rele și de spo­rirea diavolească izbăvește-mă' || '\n' ||
    'și mă du întru Împă­răția Ta cea veșnică.' || '\n' ||
    'Că Tu ești Făcă­­torul meu și Purtătorul de grijă și Dătătorul a tot binele' || '\n' ||
    'și întru Tine este toa­­tă nă­dejdea mea și Ție slavă înalț, acum și pururea și în vecii vecilor. Amin.',  -- Text română complet
    '',  -- Text rusă gol
    'MORNING',
    9,
    1  -- Ajustează cu ID-ul real al categoriei principale "Rugăciuni de Dimineață" după insert
);

-- Insert sub-rugăciune pentru Dimineață: Rugăciunea a patra a Sfântului Macarie cel Mare (order_index = 9, ajustează parent_id după ID-ul categoriei MORNING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Fourth Prayer of Saint Macarius the Great',
    'Rugăciunea a patra, a Sfântului Macarie cel Mare',
    'Четвертая молитва Святого Макария Великого',
    '',  -- Text engleză gol
    'Doamne, Cel Care cu multa Ta bu­nă­tate și cu îndurările Tale cele mari mi-ai dat mie, robului Tău,' || '\n' ||
    'de am trecut timpul nopții acesteia fără ispită de toată răutatea pizmașului,' || '\n' ||
    'Tu Însuți, Stăpâne, Făcătorule a toate câte sunt,' || '\n' ||
    'învednicește-mă cu ade­vărată lumina Ta ca să fac voia Ta cu inimă lu­mi­na­tă,' || '\n' ||
    'acum și pururea și în vecii vecilor. Amin.',  -- Text română complet
    '',  -- Text rusă gol
    'MORNING',
    10,
    1  -- Ajustează cu ID-ul real al categoriei principale "Rugăciuni de Dimineață" după insert
);

-- Insert sub-rugăciune pentru Dimineață: Rugăciunea a cincea (order_index = 10, ajustează parent_id după ID-ul categoriei MORNING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Fifth Prayer',
    'Rugăciunea a cincea',
    'Пятая молитва',
    '',  -- Text engleză gol
    'Doamne, Dumnezeule, Atotțiitoru­le, Care primești de la puterile Tale cele ce­rești cântarea Sfintei Treimi,' || '\n' ||
    'pri­mește și de la noi, nevrednicii robii Tăi, cântarea Sfintei Treimi' || '\n' ||
    'și ne dă­ru­iește ca în toți anii vieții noas­tre și în tot ceasul Ție sla­vă să-Ți înăl­țăm:' || '\n' ||
    'Ta­tălui și Fiului și Sfân­tului Duh, acum și pururea și în vecii ve­cilor. Amin.',  -- Text română complet
    '',  -- Text rusă gol
    'MORNING',
    11,
    1  -- Ajustează cu ID-ul real al categoriei principale "Rugăciuni de Dimineață" după insert
);
-- Insert sub-rugăciune pentru Dimineață: Rugăciunea a șasea (order_index = 10, ajustează parent_id după ID-ul categoriei MORNING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Sixth Prayer',
    'Rugăciunea a șasea',
    'Шестая молитва',
    '',  -- Text engleză gol
    'Doamne, Atotțiitorule, Dumne­zeul pu­te­rilor și al tuturor trupurilor, Care între cele de sus locuiești și spre cele de jos privești;' || '\n' ||
    'Cel Care is­pitești inimile și ră­runchii și tainele oamenilor le știi cu ade­vărat;' || '\n' ||
    'Lu­mină fără de început și pururea fii­toare, în care nu este mu­tare sau umbră de schimbare;' || '\n' ||
    'Însuți, Îm­părate fără de moar­te, primește ru­găciunile noastre pe care le aducem Ție din gurile noastre cele întinate,' || '\n' ||
    'în acest ceas al nopții, îndrăz­nind pentru mulțimea milelor Tale.' || '\n' ||
    'Iartă-ne greșe­lile ce am greșit înaintea Ta, cu cu­vân­tul, cu fapta, din știință și din ne­știință.' || '\n' ||
    'Curățește-ne pe noi de toate în­ti­nă­ciunile trupești și sufletești, fă­cân­du-ne pe noi casă cinstitului și Sfân­tului Tău Duh.' || '\n' ||
    'Și ne dăruiește nouă cu inimă veghetoare și curată să trecem toată noaptea acestei vieți,' || '\n' ||
    'aștep­tând luminata și sfânta zi a Unuia-Născut Fiului Tău, a Dom­nu­lui Dumnezeului și Mân­­tuitorului nostru Iisus Hristos,' || '\n' ||
    'când va veni pe pământ cu slavă să judece pe toți și să plătească fiecăruia după faptele lui.' || '\n' ||
    'Ca să nu fim aflați zăcând și dormitând, ci priveghind și sculați în lucrarea po­runcilor Lui' || '\n' ||
    'și să fim gata a intra în bucuria și cămara sla­vei Lui celei dum­nezeiești,' || '\n' ||
    'unde este gla­sul cel ne­încetat al celor care Te laudă și nes­pusa dulceață a celor care văd pu­rurea fru­musețea cea nespusă a slavei Tale.' || '\n' ||
    'Că Tu ești Lumina cea adevărată, Care lu­mi­nezi și sfințești toate, și pe Tine Te laudă toată făptura în veci. Amin.',  -- Text română complet
    '',  -- Text rusă gol
    'MORNING',
    12,
    1  -- Ajustează cu ID-ul real al categoriei principale "Rugăciuni de Dimineață" după insert
);
-- Insert sub-rugăciune pentru Dimineață: Rugăciunea a șaptea (order_index = 11, ajustează parent_id după ID-ul categoriei MORNING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Seventh Prayer',
    'Rugăciunea a șaptea',
    'Седьмая молитва',
    '',  -- Text engleză gol
    'Pe Tine Te binecuvântăm, Dum­neze­ule Preaînalte și Doamne al mile­lor,' || '\n' ||
    'Cel Care faci cu noi pururea lucruri mari și cu anevoie de urmat, slăvite și preaminunate, care nu au număr.' || '\n' ||
    'Cel Care ne-ai dat nouă somn spre odihna nepu­tințelor noastre și spre repaos de ostenelile trupului,' || '\n' ||
    'mul­țumindu-Ți că nu ne-ai pierdut pe noi cu fărădelegile noastre,' || '\n' ||
    'ci, după obicei, Te-ai arătat iu­bitor de oameni și ne-ai ridicat pe noi pen­tru a slăvi stăpânirea Ta.' || '\n' ||
    'Pen­tru aceea ne rugăm bunătății Tale celei nease­mănate: luminează ochii gândului nostru' || '\n' ||
    'și ridică mintea noastră din somnul cel greu al lenei și deschide gura noastră și o umple de laudele Tale,' || '\n' ||
    'ca să putem în liniște a cânta, a striga și a ne mărturisi pururea Ție,' || '\n' ||
    'Dumnezeului Celui slăvit în toate și de toți: Tatălui Celui fără de în­ceput,' || '\n' ||
    'împreună și Unuia-Născut Fiului Tău și Preasfântului și Bu­nului și de viață Făcătorului Tău Duh,' || '\n' ||
    'acum și pururea și în vecii vecilor. Amin.',  -- Text română complet
    '',  -- Text rusă gol
    'MORNING',
    13,
    1  -- Ajustează cu ID-ul real al categoriei principale "Rugăciuni de Dimineață" după insert
);
-- Insert sub-rugăciune pentru Dimineață: Rugăciunea a opta a Sfântului Ioan Gură de Aur (order_index = 12, ajustează parent_id după ID-ul categoriei MORNING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Eighth Prayer of Saint John Chrysostom',
    'Rugăciunea a opta, a Sfântului Ioan Gură de Aur, după numărul ceasurilor nopții și ale zilei',
    'Восьмая молитва Святого Иоанна Златоуста, по числу часов ночи и дня',
    '',  -- Text engleză gol
    'Pentru ceasurile nopții:' || '\n\n' ||
    'Doamne, nu mă lipsi de bine­le Tău cel ceresc. Doamne, izbăvește-mă de chi­nurile cele veșnice. Doamne, de am gre­șit, fie cu mintea, fie cu gândul, sau cu cu­vântul, sau cu fapta, iartă-mă.' || '\n' ||
    'Doamne, izbăvește-mă de toată ne­­știința și uitarea, de trândăvia și de ne­simțirea cea îm­pietrită. Doamne, iz­­băvește-mă de toată ispitirea.' || '\n' ||
    'Doam­­ne, luminează-mi inima pe care a în­tu­necat-o pofta cea rea. Doamne, eu ca un om am greșit, iar Tu ca un Dum­­nezeu îndurător, văzând ne­putința sufletului meu, miluiește-mă.' || '\n' ||
    'Doamne, trimite mila Ta întru ajutorul meu, ca să prea­slăvesc Preasfânt numele Tău. Doamne, Iisuse Hristoase, scrie-mă pe mine, robul Tău, în Cartea Vieții și-mi dăruiește sfârșit bun.' || '\n' ||
    'Doamne, Dum­ne­zeul meu, deși n-am făcut nici un bine înaintea Ta, dă-mi, după harul Tău, să pun început bun. Doamne, stro­pește inima mea cu roua ha­rului Tău.' || '\n' ||
    'Doamne al cerului și al pă­mân­tului, pome­neș­te-mă pe mine, păcă­tosul, ru­șinatul și nevred­­nicul robul Tău, întru Îm­părăția Ta. Amin.' || '\n\n' ||
    'Pentru ceasurile zilei:' || '\n\n' ||
    'Doamne, primește-mă întru pocă­ință. Doamne, nu mă lăsa. Doamne, nu mă duce în ispită. Doamne, dă-mi cuget bun.' || '\n' ||
    'Doam­ne, dă-mi la­cri­mi și aduce­re aminte de moarte și umi­lință. Doam­­ne, dă-mi cuget să mărturisesc toate pă­catele mele.' || '\n' ||
    'Doamne, dă-mi smerenie, curăție și ascultare. Doamne, dă-mi răbdare și voie nebiruită și blân­­­dețe.' || '\n' ||
    'Doamne, sădește în mine ră­dă­cina bu­nă­tăților și frica Ta în ini­ma mea. Doam­ne, învrednicește-mă să Te iu­besc cu tot sufletul și gândul meu și să fac în toate voia Ta.' || '\n' ||
    'Doam­ne, apără-mă de oamenii gâl­cevitori, de diavoli și de patimile trupești și de toate cele­lal­te lucruri necuviin­cioase.' || '\n' ||
    'Doam­ne, știu că faci precum vrei Tu, deci să fie și întru mine, păcă­tosul, voia Ta, că bi­necuvântat ești în veci. Amin.',  -- Text română complet
    '',  -- Text rusă gol
    'MORNING',
    14,
    1  -- Ajustează cu ID-ul real al categoriei principale "Rugăciuni de Dimineață" după insert
);
-- Insert sub-rugăciune pentru Dimineață: Rugăciunea a noua către Sfântul Înger Păzitor (order_index = 13, ajustează parent_id după ID-ul categoriei MORNING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Ninth Prayer to the Guardian Angel',
    'Rugăciunea a noua, către sfântul înger păzitor al vieții noastre',
    'Девятая молитва к святому ангелу-хранителю нашей жизни',
    '',  -- Text engleză gol
    'Îngerule sfânt al lui Hristos, că­tre tine cad și mă rog, păzitorul meu cel sfânt,' || '\n' ||
    'care ești dat mie de la Sfân­tul Bo­tez spre păzirea sufletului și a pă­că­to­sului meu trup.' || '\n' ||
    'Iar eu, cu lenea mea și cu obiceiurile mele cele rele, am mâ­niat prea­curată lumina ta și te-am iz­gonit de la mine prin toate lu­crurile cele de rușine:' || '\n' ||
    'cu minciu­nile, cu cle­vetirile, cu pizma, cu osân­direa, cu tru­fia, cu neascultarea, cu neiubirea de frați și cu ținerea de minte a răului,' || '\n' ||
    'cu iubirea de argint, cu des­frâ­narea, cu mânia, cu scumpătatea, cu mânca­rea cea fără de saț, cu beția, cu multa vorbire,' || '\n' ||
    'cu gândurile cele rele și vi­clene, cu obiceiurile cele rele și cu aprin­de­rea spre desfrânare,' || '\n' ||
    'având mai ales voire spre toată pof­ta cea trupească.' || '\n' ||
    'O, rea voire a mea, pe care nici ființele cele necuvân­tătoare nu o au!' || '\n' ||
    'Dar cum vei putea să cauți spre mine sau să te apropii de mine, cel necurat?' || '\n' ||
    'Sau cu ce ochi, îngerule al lui Hristos, vei căuta spre mi­ne, cel care m-am în­curcat așa de rău în lu­cru­rile cele întinate?' || '\n' ||
    'Sau cum voi pu­tea să-mi cer ier­tare pentru faptele mele cele amare, rele și vi­clene,' || '\n' ||
    'în care cad în toate zilele și nopțile și în tot ceasul?' || '\n' ||
    'De aceea cad înaintea ta și mă rog, pă­zitorul meu cel sfânt, mi­losti­vește-te spre mine, păcă­tosul,' || '\n' ||
    'și-mi fii mie aju­tător și sprijinitor asu­pra vrăjmașului meu celui rău, cu sfintele tale rugăciuni,' || '\n' ||
    'și Îm­părăției lui Dum­nezeu mă fă păr­taș, cu toți sfinții, acum și pu­rurea și în vecii vecilor. Amin.',  -- Text română complet
    '',  -- Text rusă gol
    'MORNING',
    15,
    1  -- Ajustează cu ID-ul real al categoriei principale "Rugăciuni de Dimineață" după insert
);
-- Insert sub-rugăciune pentru Dimineață: Rugăciunea a zecea către Preasfânta Născătoare de Dumnezeu (order_index = 14, ajustează parent_id după ID-ul categoriei MORNING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Tenth Prayer to the Theotokos',
    'Rugăciunea a zecea, către Preasfânta Născătoare de Dumnezeu',
    'Десятая молитва к Пресвятой Богородице',
    '',  -- Text engleză gol
    'Preasfântă Stăpâna mea, de Dum­­ne­zeu Născătoare, cu sfintele și prea­puternicele tale rugăciuni izgo­nește de la mine,' || '\n' ||
    'sme­ritul și ticălosul robul tău, deznădăjdui­rea, uitarea, necu­noș­tința, nepurtarea de gri­jă' || '\n' ||
    'și toate gân­durile cele întinate, cele rele și hu­litoare de la ticăloasa mea inimă și de la întu­ne­cata mea minte.' || '\n' ||
    'Și stinge vă­paia pof­te­lor mele, că sărac sunt și ti­călos.' || '\n' ||
    'Și mă iz­bă­vește de multe rele și adu­ceri-aminte și năravuri, și de toa­te fap­tele cele rele mă slobozește.' || '\n' ||
    'Că bine­cu­vântată ești de toate nea­mu­rile și prea­cinstitul tău nume se slăvește în vecii ve­cilor. Amin.',  -- Text română complet
    '',  -- Text rusă gol
    'MORNING',
    16,
    1  -- Ajustează cu ID-ul real al categoriei principale "Rugăciuni de Dimineață" după insert
);
-- Insert sub-rugăciune pentru Dimineață: Altă rugăciune către Preasfânta Născătoare de Dumnezeu (order_index = 15, ajustează parent_id după ID-ul categoriei MORNING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Another Prayer to the Theotokos',
    'Altă rugăciune către Preasfânta Născătoare de Dumnezeu',
    'Другая молитва к Пресвятой Богородице',
    '',  -- Text engleză gol
    'Împărăteasa mea preabună și nă­dejdea mea, Născătoare de Dumne­zeu, primitoarea săracilor și ajutătoa­rea stră­­inilor,' || '\n' ||
    'bucuria celor mâhniți, aco­pe­rirea celor necăjiți, vezi-mi nevoia, vezi-mi necazul;' || '\n' ||
    'ajută-mă ca pe un ne­putincios, hrănește-mă ca pe un străin.' || '\n' ||
    'Necazul meu îl știi; ci îl dez­lea­gă precum voiești, că n-am alt ajutor afară de tine,' || '\n' ||
    'nici altă folositoare grab­­­nică, nici altă mângâietoare bună, ci numai pe tine, o, Maica lui Dum­ne­zeu,' || '\n' ||
    'ca să mă păzești și să mă acoperi în vecii ve­cilor. Amen.' || '\n\n' ||
    'Apoi:' || '\n\n' ||
    'Cuvine-se cu adevărat să te fe­ri­cim, Născătoare de Dumnezeu, cea puru­rea fe­ricită și preanevinovată și Maica Dum­ne­zeului nostru.' || '\n' ||
    'Ceea ce ești mai cinstită decât heruvimii și mai mărită, fără de ase­mănare, decât serafimii,' || '\n' ||
    'ca­re fără stricăciune pe Dumnezeu Cu­vântul ai născut, pe tine, cea cu ade­vărat Năs­cătoare de Dumnezeu, te mărim.',  -- Text română complet
    '',  -- Text rusă gol
    'MORNING',
    17,
    1  -- Ajustează cu ID-ul real al categoriei principale "Rugăciuni de Dimineață" după insert
);
-- Insert sub-rugăciune pentru Dimineață: Ultima rugăciune (order_index = 16, ajustează parent_id după ID-ul categoriei MORNING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Final Morning Prayer',
    'Ultima rugăciune de dimineață',
    'Последняя утренняя молитва',
    '',  -- Text engleză gol
    'Slavă Tatălui și Fiului și Sfântului Duh, și acum și pururea și în vecii vecilor. Amin.' || '\n' ||
    'Doamne, miluiește! Doamne, miluiește! Doamne miluiește!' || '\n\n' ||
    'Pentru rugăciunile sfinților părinților noștri, Doamne Iisuse Hristoase, Fiul lui Dumnezeu, miluiește-ne pe noi. Amin.',  -- Text română complet
    '',  -- Text rusă gol
    'MORNING',
    18,
    1  -- Ajustează cu ID-ul real al categoriei principale "Rugăciuni de Dimineață" după insert
);


-- Insert sub-rugăciune pentru Seară: Prima rugăciune (order_index = 1, parent_id = 2 pentru categoria EVENING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'First Evening Prayer',
    'Prima rugăciune de seară',
    'Первая вечерняя молитва',
    '',  -- Text engleză gol
    'Slavă Ție, Dumnezeul nostru, slavă Ție.' || '\n' ||
    'Împărate ceresc, Mângâieto­rule, Duhul adevărului, Care pretutindenea ești și toate le îm­plinești,' || '\n' ||
    'Vistierul bunătăților și dătătorule de viață, vino și Te sălășluiește întru noi,' || '\n' ||
    'și ne curățește pe noi de toată întinăciunea și mântuiește, Bunule, sufletele noastre.' || '\n\n' ||
    'Sfinte Dumnezeule, Sfinte tare, Sfinte fără de moarte, miluiește-ne pe noi (de trei ori).' || '\n\n' ||
    'Slavă Tatălui și Fiului și Sfântului Duh și acum și pururea și în vecii vecilor. Amin.',  -- Text română complet
    '',  -- Text rusă gol
    'EVENING',
    1,
    2  -- ID-ul categoriei principale "Rugăciuni de Seară", ajustează dacă necesar
);


-- Insert sub-rugăciune pentru Seară: A doua rugăciune (order_index = 2, parent_id = 2 pentru categoria EVENING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Second Evening Prayer',
    'A doua rugăciune de seară',
    'Вторая вечерняя молитва',
    '',  -- Text engleză gol
    'Preasfântă Treime, miluiește-ne pe noi. Doam­ne, curățește păcatele noastre. Stăpâne, iartă fărădelegile noastre.' || '\n' ||
    'Sfinte, cercetează și vin­decă neputințele noas­tre, pentru numele Tău.' || '\n\n' ||
    'Doamne miluiește (de trei ori), Slavă..., și acum...',  -- Text română complet
    '',  -- Text rusă gol
    'EVENING',
    2,
    2  -- ID-ul categoriei principale "Rugăciuni de Seară", ajustează dacă necesar
);

-- Insert sub-rugăciune pentru Seară: Tatăl Nostru (order_index = 3, parent_id = 2 pentru categoria EVENING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Our Father',
    'Tatăl Nostru',
    'Отче наш',
    '',  -- Text engleză gol
    'Tatăl nostru, Care ești în ceruri, sfin­țească-Se numele Tău,' || '\n' ||
    'vie împărăția Ta, fie voia Ta, precum în cer așa și pe pă­mânt.' || '\n' ||
    'Pâinea noastră cea de toate zilele, dă-ne-o nouă astăzi și ne iartă nouă greșelile noastre,' || '\n' ||
    'precum și noi iertăm greșiților noș­tri. Și nu ne duce pe noi în ispită,' || '\n' ||
    'ci ne izbă­vește de cel rău. Pentru rugăciunile Sfinților Părinților noștri,' || '\n' ||
    'Doamne Iisuse Hristoase Fiul lui Dumnezeu miluiește-ne pe noi. Amin.',  -- Text română complet
    '',  -- Text rusă gol
    'EVENING',
    3,
    2  -- ID-ul categoriei principale "Rugăciuni de Seară", ajustează dacă necesar
);

-- Insert sub-rugăciune pentru Seară: Troparele de umilință (order_index = 4, parent_id = 2 pentru categoria EVENING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Tropare of Humility',
    'Troparele de umilință',
    'Тропари смирения',
    '',  -- Text engleză gol
    'Miluiește-ne pe noi, Doamne, mi­lu­iește-ne pe noi, că, nepricepându-ne de nici un răspuns, această rugă­ciune a­du­cem Ție, ca unui Stăpân, noi păcă­toșii robii Tăi; miluiește-ne pe noi.' || '\n\n' ||
    'Slavă...,' || '\n' ||
    'Doamne, miluiește-ne pe noi, că întru Tine am nădăjduit; nu Te mânia pe noi foarte, nici pomeni fărăde­legile noastre,' || '\n' ||
    'ci caută și acum ca un milos­tiv și ne izbăvește pe noi de vrăj­mașii noștri, că Tu ești Dumne­zeul nostru și noi suntem poporul Tău,' || '\n' ||
    'toți lucrul mâinilor Tale și numele Tău chemăm.' || '\n\n' ||
    'Și acum...,' || '\n' ||
    'Ușa mi­lostivirii deschide-o nouă, bi­necu­vân­tată Născătoare de Dum­ne­zeu, ca să nu pierim cei ce nădăj­duim întru tine,' || '\n' ||
    'ci să ne mântuim prin tine din nevoi, că tu ești mân­tuirea neamului creștinesc.' || '\n\n' ||
    'Doamne, miluiește (de 12 ori).',  -- Text română complet
    '',  -- Text rusă gol
    'EVENING',
    4,
    2  -- ID-ul categoriei principale "Rugăciuni de Seară", ajustează dacă necesar
);
-- Insert sub-rugăciune pentru Seară: Rugăciunea întâi a Sfântului Macarie cel Mare, către Dumnezeu Tatăl (order_index = 5, parent_id = 2 pentru categoria EVENING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'First Prayer of Saint Macarius the Great to God the Father',
    'Rugăciunea întâi, a Sfântului Macarie cel Mare, către Dumnezeu Tatăl',
    'Первая молитва Святого Макария Великого к Богу Отцу',
    '',  -- Text engleză gol
    'Dumnezeule cel veșnic și Împărate a toată făptura, Cel ce m-ai învred­ni­cit a ajunge până în acest ceas,' || '\n' ||
    'iartă-mi păca­tele ce am făcut în a­ceastă zi, cu fapta, cu cuvântul și cu gândul;' || '\n' ||
    'și cu­ră­țește, Doam­­ne, sme­ritul meu suflet de toată în­tină­ciu­nea trupului și a su­fletului.' || '\n' ||
    'Și-mi dă, Doamne, în aceas­tă noapte, a trece som­­­nul în pa­ce ca, scu­lându-mă din ticălosul meu așternut,' || '\n' ||
    'bine să plac Prea­sfântului Tău nume în toate zi­lele vieții mele și să calc pe vrăjmașii cei ce se lup­tă cu mine,' || '\n' ||
    'pe cei tru­pești și pe cei fără de trup.' || '\n' ||
    'Și mă izbă­vește, Doamne, de gândurile cele deșarte, care mă în­ti­nează, și de pof­tele cele rele.' || '\n' ||
    'Că a Ta este împă­răția, puterea și slava, a Ta­tălui și a Fiului și a Sfân­­­tului Duh,' || '\n' ||
    'acum și pu­rurea și în vecii vecilor. Amin.',  -- Text română complet
    '',  -- Text rusă gol
    'EVENING',
    5,
    2  -- ID-ul categoriei principale "Rugăciuni de Seară", ajustează dacă necesar
);
-- Insert sub-rugăciune pentru Seară: Rugăciunea a doua a Sfântului Antioh, către Domnul nostru Iisus Hristos (order_index = 6, parent_id = 2 pentru categoria EVENING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Second Prayer of Saint Antioh to Our Lord Jesus Christ',
    'Rugăciunea a doua, a Sfântului Antioh, către Domnul nostru Iisus Hristos',
    'Вторая молитва Святого Антиоха к Господу нашему Иисусу Христу',
    '',  -- Text engleză gol
    'Atotțiitorule, Cuvinte al Tatălui, În­suți fiind desăvârșit, Iisuse Hris­toase,' || '\n' ||
    'pentru multă milostivirea Ta, nu Te dez­lipi de mine, robul Tău, ci odih­nește întru mine pururea,' || '\n' ||
    'Iisuse, Cel ce ești Păstor bun al oilor Tale.' || '\n' ||
    'Nu mă da is­pitei șarpelui, nici nu mă lăsa în pofta satanei, că sămânța stricăciunii este întru mine.' || '\n' ||
    'Tu, Doam­­ne Dum­ne­zeul, Cel Căruia ne în­chi­­­năm, Îm­pă­rate Sfinte, Iisuse Hristoase,' || '\n' ||
    'pă­zește-mă în timpul somnului cu lumina cea ne­întunecată, cu Duhul Tău cel Sfânt, cu Care ai sfințit pe ucenicii Tăi.' || '\n' ||
    'Dă-mi, Doamne, și mie, nevrednicului robului Tău, mântuirea Ta în așternutul meu.' || '\n' ||
    'Lu­­mi­nează mintea mea cu lumina în­țele­gerii Sfintei Tale Evanghelii,' || '\n' ||
    'su­fletul meu cu dra­gos­tea Crucii Tale, inima mea cu curăția cuvintelor Tale,' || '\n' ||
    'trupul meu cu pa­tima Ta cea nebi­ruită, cugetul meu cu smerenia Ta îl păzește' || '\n' ||
    'și mă ri­dică la vre­me cuviincioasă spre a Ta slăvire,' || '\n' ||
    'că prea­slăvit ești cu Cel fără de început al Tău Părinte și cu Prea­­sfântul Duh în veci. Amin.',  -- Text română complet
    '',  -- Text rusă gol
    'EVENING',
    6,
    2  -- ID-ul categoriei principale "Rugăciuni de Seară", ajustează dacă necesar
);
-- Insert sub-rugăciune pentru Seară: Rugăciunea a treia către Sfântul Duh (order_index = 7, parent_id = 2 pentru categoria EVENING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Third Prayer to the Holy Spirit',
    'Rugăciunea a treia, către Sfântul Duh',
    'Третья молитва к Святому Духу',
    '',  -- Text engleză gol
    'Doamne, Împărate Ceresc, Mân­gâ­ie­­­to­rule, Duhule adevărate, milosti­vește-Te spre mine, păcătosul ro­bul Tău, și mă miluiește și-mi iartă mie, ne­vrednicu­lui,' || '\n' ||
    'toate câte am greșit Ție astăzi ca un om, și nu numai ca un om, ci și mai rău decât necuvân­tătoarele,' || '\n' ||
    'păcatele mele cele de voie și cele fără de voie, cele ști­ute și cele ne­știute, care sunt din tinerețe și din obiceiul cel rău' || '\n' ||
    'și care sunt din voia cea slobodă și din lene; ori de m-am jurat cu numele Tău,' || '\n' ||
    'ori de L-am hulit în gândul meu, sau pe cineva am ocărât, sau pe cineva am clevetit în mânia mea,' || '\n' ||
    'sau am mâhnit, sau de ceva m-am mâniat, sau am min­țit, sau fără de vreme am dormit,' || '\n' ||
    'sau vreun sărac a venit la mine și nu l-am so­cotit, sau pe fratele meu l-am mâh­nit,' || '\n' ||
    'sau m-am sfădit, sau pe cineva am osândit, sau m-am mărit, sau m-am tru­fit,' || '\n' ||
    'sau m-am mâniat, sau, stând la rugăciune, mintea mea s-a îngrijit de vicleniile acestei lumi,' || '\n' ||
    'sau răzvră­tire am cugetat, sau prea m-am sătu­rat, sau m-am îmbătat, sau nebunește am râs,' || '\n' ||
    'sau ceva rău am cugetat, sau frumusețe străină am văzut și cu dânsa mi-am rănit inima,' || '\n' ||
    'sau ce nu se cu­vine am grăit, sau de păcatul fratelui meu am râs, iar pă­catele mele sunt ne­numărate,' || '\n' ||
    'sau de ru­găciune nu m-am îngrijit, sau altceva rău am făcut și nu-mi aduc aminte;' || '\n' ||
    'că acestea toate și mai mari decât acestea am făcut.' || '\n' ||
    'Milu­iește-mă, Stăpâne și Făcătorul meu, pe mine leneșul și nevrednicul robul Tău,' || '\n' ||
    'și mă ușurează, și mă slobozește și mă iartă, ca un bun și de oameni iubitor.' || '\n' ||
    'Ca în pace să mă culc și să dorm eu, păcă­tosul și necuratul și ticălosul,' || '\n' ||
    'și să mă închin și să cânt și să prea­slă­vesc prea­cinstitul Tău nu­me, împreună cu al Tatălui și cu al Unuia-Născut Fi­ului Lui,' || '\n' ||
    'acum și pururea și în vecii ve­cilor. Amin.',  -- Text română complet
    '',  -- Text rusă gol
    'EVENING',
    7,
    2  -- ID-ul categoriei principale "Rugăciuni de Seară", ajustează dacă necesar
);
-- Insert sub-rugăciune pentru Seară: Rugăciunea a patra (order_index = 8, parent_id = 2 pentru categoria EVENING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Fourth Prayer',
    'Rugăciunea a patra',
    'Четвертая молитва',
    '',  -- Text engleză gol
    'Doamne, Dumnezeul nostru, orice am greșit în această zi cu cuvântul, cu fapta, și cu gândul,' || '\n' ||
    'ca un bun și iubi­tor de oa­meni, iartă-mi.' || '\n' ||
    'Somn cu pace și fără mâhnire dăruiește-mi.' || '\n' ||
    'Pe îngerul Tău cel apără­tor trimite-l să mă aco­pere și să mă pă­zească de tot răul.' || '\n' ||
    'Că Tu ești păzitorul su­fle­telor și al tru­purilor noastre și Ție slavă înăl­țăm,' || '\n' ||
    'Ta­tălui și Fiului și Sfân­­tului Duh, acum și pururea și în vecii vecilor.Amin.',  -- Text română complet
    '',  -- Text rusă gol
    'EVENING',
    8,
    2  -- ID-ul categoriei principale "Rugăciuni de Seară", ajustează dacă necesar
);
-- Insert sub-rugăciune pentru Seară: Rugăciunea a cincea (order_index = 9, parent_id = 2 pentru categoria EVENING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Fifth Prayer',
    'Rugăciunea a cincea',
    'Пятая молитва',
    '',  -- Text engleză gol
    'Doamne, Dumnezeul nostru, în Care credem și al Cărui nume mai mult decât tot numele Îl chemăm,' || '\n' ||
    'dă-ne no­uă ier­tare sufletului și tru­pu­lui, celor ce mer­gem spre somn;' || '\n' ||
    'pă­zeș­te-ne de toa­tă nălu­cirea și, fără întunecată dulceață, potolește pornirea pofte­lor,' || '\n' ||
    'stinge a­prin­derea zbur­dării trupești și ne dă în curăție a viețui cu lu­cru­rile și cu­vin­tele,' || '\n' ||
    'ca, dobândind viață cu fapte bu­ne, să nu cădem din bi­nele Tău cel fă­gă­duit,' || '\n' ||
    'că binecuvântat ești în veci. Amin.',  -- Text română complet
    '',  -- Text rusă gol
    'EVENING',
    9,
    2  -- ID-ul categoriei principale "Rugăciuni de Seară", ajustează dacă necesar
);
-- Insert sub-rugăciune pentru Seară: Rugăciunea a șasea către Sfânta Născătoare de Dumnezeu (order_index = 10, parent_id = 2 pentru categoria EVENING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Sixth Prayer to the Theotokos',
    'Rugăciunea a șasea, către Sfânta Născătoare de Dumnezeu',
    'Шестая молитва к Святой Богородице',
    '',  -- Text engleză gol
    'Preacurată și binecuvântată de Dum­­ne­­zeu Născătoare, Marie, Maica cea bună a Bu­nului Împărat,' || '\n' ||
    'varsă mila Fiului Tău și Dum­nezeului nostru spre pătimașul meu suflet și,' || '\n' ||
    'cu ru­gă­ciunile tale, mă îndrep­tează spre fapte bu­ne, ca cealaltă vreme a vieții mele fără de prihană să o trec' || '\n' ||
    'și pen­tru tine raiul să dobândesc, Fecioa­ră de Dum­nezeu Năs­­cătoare,' || '\n' ||
    'care ești una cu­rată și binecuvântată.',  -- Text română complet
    '',  -- Text rusă gol
    'EVENING',
    10,
    2  -- ID-ul categoriei principale "Rugăciuni de Seară", ajustează dacă necesar
);
-- Insert sub-rugăciune pentru Seară: Rugăciunea a șaptea către Sfântul Înger Păzitor (order_index = 11, parent_id = 2 pentru categoria EVENING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Seventh Prayer to the Guardian Angel',
    'Rugăciunea a șaptea, către sfântul înger, păzitor al vieții noastre',
    'Седьмая молитва к святому ангелу-хранителю нашей жизни',
    '',  -- Text engleză gol
    'Îngerule al lui Hristos, păzitorul meu cel sfânt și acoperitorul sufle­tului și al tru­pului meu,' || '\n' ||
    'iartă-mi toate câte am gre­­șit în ziua de astăzi, și de toată vi­clenia vrăjma­șului meu celui potri­v­nic mă izbăvește,' || '\n' ||
    'ca să nu mânii cu niciun păcat pe Dumne­zeul meu; și te roagă pentru mine, păcă­tosul și ne­vred­­nicul rob,' || '\n' ||
    'ca să mă arăți vred­nic bunătății și milei Preasfintei Trei­mi și Mai­cii Dom­­nului meu Iisus Hristos și tu­turor sfin­ților. Amin.',  -- Text română complet
    '',  -- Text rusă gol
    'EVENING',
    11,
    2  -- ID-ul categoriei principale "Rugăciuni de Seară", ajustează dacă necesar
);
-- Insert sub-rugăciune pentru Seară: Condacul Născătoarei de Dumnezeu (order_index = 12, parent_id = 2 pentru categoria EVENING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Kontakion of the Theotokos',
    'Condacul Născătoarei de Dumnezeu',
    'Кондак Богородице',
    '',  -- Text engleză gol
    'Apărătoare Doamnă, pentru bi­ru­­­in­ță mul­țumiri, izbăvindu-ne din ne­­voi, adu­cem ție, Născătoare de Dum­­nezeu, noi, robii tăi.' || '\n' ||
    'Ci, ca aceea ce ai stă­pânire nebi­ruită, izbăvește-ne din toa­te nevo­ile, ca să strigăm ție: Bucură-te, Mi­reasă, pururea fecioară.' || '\n\n' ||
    'Fecioară, care ești pururea slă­vită, de Dum­nezeu Născătoare, Marie, Maica lui Hristos, Dumnezeul nos­tru,' || '\n' ||
    'pri­meș­te ru­gă­ciunile noastre și le du Fiului tău și Dumnezeului nostru,' || '\n' ||
    'ca să mântuiască și să lumineze, pentru tine, su­fletele noastre.' || '\n\n' ||
    'Toată nădejdea mea spre tine o pun, Maica lui Dumnezeu, păzește-mă sub a­co­perământul tău.' || '\n\n' ||
    'De Dumnezeu Născătoare Fe­cioa­ră, nu mă trece cu vederea pe mine, păcă­tosul, cel ce am nevoie de ajutorul tău și de folosința ta,' || '\n' ||
    'că spre tine nă­dăj­duiește su­fletul meu, și mă miluiește.',  -- Text română complet
    '',  -- Text rusă gol
    'EVENING',
    12,
    2  -- ID-ul categoriei principale "Rugăciuni de Seară", ajustează dacă necesar
);

-- Insert sub-rugăciune pentru Seară: Rugăciunea Sfântului Ioanichie (order_index = 13, parent_id = 2 pentru categoria EVENING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Prayer of Saint Ioanichie',
    'Rugăciunea Sfântului Ioanichie',
    'Молитва Святого Иоаникия',
    '',  -- Text engleză gol
    'Nădejdea mea este Tatăl, scă­pa­rea mea este Fiul, acoperământul meu este Duhul Sfânt,' || '\n' ||
    'Treime Sfântă, sla­vă Ție.',  -- Text română complet
    '',  -- Text rusă gol
    'EVENING',
    13,
    2  -- ID-ul categoriei principale "Rugăciuni de Seară", ajustează dacă necesar
);
-- Insert sub-rugăciune pentru Seară: Ultima rugăciune de seară (order_index = 14, parent_id = 2 pentru categoria EVENING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Final Evening Prayer',
    'Rugaciune catre Maica Domnului',
    'Последняя вечерняя молитва',
    '',  -- Text engleză gol
    'Apoi:' || '\n\n' ||
    'Cuvine-se cu adevărat să te feri­cim, Născătoare de Dumnezeu, cea puru­rea fe­ricită și prea nevinovată și Maica Dumne­zeului nostru.' || '\n' ||
    'Ceea ce ești mai cinstită decât heruvimii și mai mărită fără de ase­mănare decât sera­fimii,' || '\n' ||
    'ca­re fără stri­că­ciune pe Dum­nezeu Cu­vântul ai născut,' || '\n' ||
    'pe tine, cea cu ade­vărat Năs­cătoare de Dum­nezeu, te mărim.' || '\n\n' ||
    'Doamne, Iisuse Hristoase, Fiul lui Dumnezeu,' || '\n' ||
    'pentru rugăciunile Preacu­ratei Maicii Tale, ale cuvio­șilor părin­ților noștri și ale tuturor sfinților, mântuiește-mă pe mine, păcătosul.',  -- Text română complet
    '',  -- Text rusă gol
    'EVENING',
    14,
    2  -- ID-ul categoriei principale "Rugăciuni de Seară", ajustează dacă necesar
);
-- Insert sub-rugăciune pentru Seară: Rugăciunea Sfântului Ioan Damaschin (order_index = 15, parent_id = 2 pentru categoria EVENING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Prayer of Saint John Damascene',
    'Rugăciunea Sfântului Ioan Damaschin',
    'Молитва Святого Иоанна Дамаскина',
    '',  -- Text engleză gol
    'Stăpâne, Iubitorule de oameni, au doa­ră nu-mi va fi mie acest pat groa­pă?' || '\n' ||
    'Sau încă vei mai lumina cu ziua tică­losul meu suflet?' || '\n' ||
    'Iată, groapa îmi zace înainte și iată, moartea îmi stă înainte.' || '\n' ||
    'De judecata Ta, Doamne, mă tem, și de chinul cel fără de sfâr­șit; iar a face rău nu mai contenesc.' || '\n' ||
    'Pe Tine, Domnul Dumnezeul meu, puru­rea Te mânii și pe Preacurata Maica Ta' || '\n' ||
    'și pe toate puterile cerești și pe sfântul înger, pă­zitorul meu.' || '\n' ||
    'Și știu, Doamne, că nu sunt vrednic de iubi­rea Ta de oameni, ci vrednic sunt de toată osânda și chi­nul.' || '\n' ||
    'Ci, rogu-Te, Doamne, mântu­iește-mă du­pă mul­ți­mea bunătății Tale,' || '\n' ||
    'că, de vei mân­tui pe cel drept, nu-i lucru mare, iar de vei milui pe cel curat, nu-i nicio mi­nu­ne,' || '\n' ||
    'că sunt vrednici de mila Ta, ci spre mine, păcătosul, să faci mi­nuni cu mila Ta;' || '\n' ||
    'întru aceasta să arăți iu­birea Ta de oa­meni, ca să nu bi­ru­iască rău­tatea mea bu­nătatea și milos­ti­virea Ta cea veșnică,' || '\n' ||
    'ci, precum vo­iești, toc­­mește pentru mine lucrul.',  -- Text română complet
    '',  -- Text rusă gol
    'EVENING',
    15,
    2  -- ID-ul categoriei principale "Rugăciuni de Seară", ajustează dacă necesar
);
-- Insert sub-rugăciune pentru Seară: Rugăciunea Sfântului Ioan Damaschin extinsă (order_index = 16, parent_id = 2 pentru categoria EVENING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Extended Prayer of Saint John Damascene',
    'Rugăciunea Sfântului Ioan Damaschin: (aceasta să o zici arătând spre patul tău)',
    'Расширенная молитва Святого Иоанна Дамаскина: (произнеси это, указывая на свою постель)',
    '',  -- Text engleză gol
    'Apoi, cu închinăciune până la pământ, zi:' || '\n\n' ||
    'Mă închin Ție, Preasfântă Treime, Care ești o Ființă de viață făcătoare și nedes­părțită: Părinte și Fiule și Du­­hule Sfinte;' || '\n' ||
    'cred întru Tine și Te măr­turi­sesc și Te slăvesc, Îți mulțumesc și Te laud, Te cinstesc, Te preaînalț și Te rog: miluiește-mă pe mine, ne­vredni­cul robul Tău, pentru nu­mele Tău (de trei ori).' || '\n\n' ||
    'Mă închin ție, Preasfântă Născă­toa­re de Dumnezeu, care ai arătat nouă lu­mi­na cea adevărată cu naș­terea ta,' || '\n' ||
    'îm­pă­răteasa cerului și a pământului, nă­dej­dea celor fără de nădejde, aju­tă­toa­rea nepu­­tincio­șilor și împăcarea cu Dum­­nezeu a tuturor păcătoșilor.' || '\n' ||
    'Tu mă aco­peră și mă apă­ră de toate ne­voile și împresurările sufletești și tru­pești.' || '\n' ||
    'Și te rog să-mi fii folositoare cu prea­pu­­ter­nicele tale ru­găciuni (o închinăciune).' || '\n\n' ||
    'Preasfântă Stăpână de Dumnezeu Năs­­­­cătoare, primește această puțină ru­­gă­ciu­ne și o du Fiului tău și Dum­ne­zeului nostru,' || '\n' ||
    'ca să mântuiască și să lumi­neze, pen­tru tine, sufletele noas­tre (o închină­ciune).' || '\n\n' ||
    'Toate puterile cerești: Scaunele, Dom­­nii­le, Începătoriile, Stăpâniile, Pute­rile, He­ruvimii, Serafimii, Ar­hanghe­lii și În­ge­rii,' || '\n' ||
    'ru­gați-vă lui Dum­nezeu pentru mine, păcă­tosul (o închinăciune).' || '\n\n' ||
    'Sfinte și mare Proorocule Ioane, Îna­inte­mergătorule și Botezătorule al Dom­­nu­lui, cel ce ai pătimit pentru Hristos și ai luat îndrăzneală către Stăpânul,' || '\n' ||
    'roagă-te pentru mine, pă­că­tosul, ca să mă mântuiesc cu rugă­­­ciunile tale (o închinăciune).' || '\n\n' ||
    'Sfinților ai lui Dumnezeu: apos­to­­­lilor, proorocilor, mucenicilor, arhi­e­rei­lor, postitorilor, temătorilor de Dum­­ne­zeu, drepți­lor, locuitorilor în pustie,' || '\n' ||
    'călugărilor, patriarhilor și toți sfinții care ați pătimit pen­tru Hristos și ați câștigat îndrăzneală către Stăpânul,' || '\n' ||
    'rugați-vă pentru mine, pă­că­tosul, ca să mă mântuiesc cu rugăciunile voastre (o închinăciune).' || '\n\n' ||
    'Sfinte Ioane Gură de Aur, cu Va­sile cel Mare, cu Grigorie, de Dum­nezeu cu­vântătorul, și cu făcătorul de minuni Ni­colae,' || '\n' ||
    'cu toți sfinții în­cepători ai pre­oției, ajutați-mi și mi­luiți-mă cu rugă­ciunile și ajutorul vostru (o închinăciune).' || '\n\n' ||
    'Toate sfintele femei: mironosițe, mu­­­­ce­­nițe, temătoare de Dumnezeu și fecioa­re,' || '\n' ||
    'care ați slujit Mân­tui­to­rului Hristos cum se cuvine, ru­gați pe Dum­­nezeu pentru mine, păcă­tosul (o în­chi­năciune).' || '\n\n' ||
    'Cea nebiruită și dumnezeiască putere a cinstitei și de viață făcătoarei Cruci a Dom­nu­lui,' || '\n' ||
    'nu mă lăsa pe mine pă­cătosul, ci mă apără de toata ispita cea trupească și sufletească (o închinăciune).' || '\n\n' ||
    'Preacurată Stăpână, de Dum­ne­zeu Năs­­­­că­toare, nădejdea tuturor crești­ni­lor,' || '\n' ||
    'pentru că altă îndrăzneală și nă­dejde nu am, fără numai pe tine, ceea ce ești cu totul nevinovată,' || '\n' ||
    'Stă­pâna mea și Doam­nă, de Dumne­zeu Născătoare, Mai­ca lui Hristos Dum­nezeului meu,' || '\n' ||
    'pentru aceea mă rog: mi­luiește-mă și mă izbăvește de toate rău­tățile mele' || '\n' ||
    'și roagă pe Milostivul tău Fiu și Dum­nezeul meu ca să mi­luiască tică­losul meu suflet și să mă izbăvească de veșnicele chinuri' || '\n' ||
    'și să mă învredni­cească împărăției Sale (o închinăciune).' || '\n\n' ||
    'Sfinte îngere, păzitorul meu, aco­peră-mă cu aripile bunătății tale' || '\n' ||
    'și iz­gonește de la mine toată lucrarea cea rea a diavolului și roagă pe Dum­nezeu pentru mine, păcătosul.' || '\n\n' ||
    'Și apoi, vrând să te așezi pe așternut, zi acestea:' || '\n\n' ||
    'Luminează ochii mei, Hristoase Dum­­­­ne­zeule, ca nu cândva să adorm întru moar­te,' || '\n' ||
    'ca nu cândva să zică vrăj­mașul meu: întăritu-m-am asu­pra lui.' || '\n\n' ||
    'Slavă...,' || '\n' ||
    'Sprijinitor sufletului meu fii, Dum­­­ne­zeule, că umblu prin mijlocul a multe curse;' || '\n' ||
    'izbăvește-mă de dânsele și mă mân­­tuiește, Bunule, ca un iubitor de oameni.' || '\n\n' ||
    'Și acum..., a Născătoarei de Dumnezeu:' || '\n' ||
    'Preaslăvită Maică a lui Dum­ne­zeu, care ești mai sfântă decât sfinții în­geri,' || '\n' ||
    'neîn­cetat te cântăm cu inima și cu gura, mărturisind că tu ești de Dum­­­nezeu Năs­cătoare,' || '\n' ||
    'căci cu ade­vă­­rat ne-ai născut nouă pe Dumnezeu în­tru­pat și te rogi ne­încetat pentru su­fletele noastre.',  -- Text română complet
    '',  -- Text rusă gol
    'EVENING',
    16,
    2  -- ID-ul categoriei principale "Rugăciuni de Seară", ajustează dacă necesar
);
-- Insert sub-rugăciune pentru Seară: Rugăciunea cinstitei Cruci (order_index = 17, parent_id = 2 pentru categoria EVENING)

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Prayer of the Holy Cross',
    'Rugăciunea cinstitei Cruci',
    'Молитва святого Креста',
    '',  -- Text engleză gol
    'Apoi, sărutând Sfânta Cruce (sau o icoană), faci semnul acesteia peste locul unde te vei odihni, zicând:' || '\n\n' ||
    'Rugăciunea cinstitei Cruci:' || '\n\n' ||
    'Să învie Dumnezeu și să se risipească vrăjmașii Lui și să fugă de la fața Lui cei ce-L urăsc pe Dânsul.' || '\n' ||
    'Să piară cum piere fumul; cum se topește ceara de fața focului, așa să piară dia­volii de la fața celor ce iu­besc pe Dum­­nezeu' || '\n' ||
    'și se însemnează cu semnul Crucii și zic cu veselie: Bucură-te, prea­cins­tită și de viață făcătoare Cru­cea Dom­nului,' || '\n' ||
    'care alungi pe diavoli cu puterea Celui ce S-a răstignit pe tine, a Dom­nului nostru Iisus Hristos,' || '\n' ||
    'și S-a pogorât la iad și a călcat puterea diavolului și te-a dăruit nouă pe tine, cinstită Crucea Sa,' || '\n' ||
    'spre alungarea a tot piz­mașul.' || '\n' ||
    'O, preacinstită și de via­ță fă­că­toare Crucea Dom­nului, ajută-mi cu Sfânta Doamnă Fe­cioa­ră, Năs­că­toa­re de Dumnezeu,' || '\n' ||
    'și cu toți sfinții în veci. Amin.' || '\n' ||
    'Apoi, făcându-ți semnul crucii și cu ru­gă­ciunea în minte adormind, gândește-te la ziua judecății, cum vei sta înaintea lui Dumnezeu.',  -- Text română complet
    '',  -- Text rusă gol
    'EVENING',
    17,
    2  -- ID-ul categoriei principale "Rugăciuni de Seară", ajustează dacă necesar
);