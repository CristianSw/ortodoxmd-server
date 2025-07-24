
INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Morning Prayers',
    'Rugăciuni de Dimineață',
    'Утренние молитвы',
    '',
    '',
    '',
    'MORNING',
    0,
    NULL
);


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

-- V3__insert_sample_prayers.sql
-- Insert-uri sample pentru toate categoriile, cu ierarhie simplă.
-- Principal focus pe MORNING (cum ai completat), dar adaug sample-uri pentru EVENING, FOR_ILLNESS, GENERAL.
-- Ajustează parent_id după ID-uri reale din DB (verifica în H2 Console după run inițial).
-- Order_index secvențial per categorie.





-- Categorie EVENING - Principal
INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Evening Prayers',
    'Rugăciuni de Seară',
    'Вечерние молитвы',
    '',
    '',
    '',
    'EVENING',
    0,
    NULL
);

-- Sub-rugăciuni EVENING (sample-uri simple)
INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Sample Evening Sub-Prayer 1',
    'Rugăciune de Seară Exemplu 1',
    'Вечерняя молитва Пример 1',
    'Sample English text for evening prayer.',
    'Text sample în română pentru rugăciune de seară.',
    'Пример текста на русском для вечерней молитвы.',
    'EVENING',
    1,
    2  -- Ajustează după insert (ex: 2 dacă după MORNING)
);

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Sample Evening Sub-Prayer 2',
    'Rugăciune de Seară Exemplu 2',
    'Вечерняя молитва Пример 2',
    'Another sample English text.',
    'Alt text sample în română.',
    'Еще один пример текста на русском.',
    'EVENING',
    2,
    2
);

-- Categorie FOR_ILLNESS - Principal
INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Prayers for Illness',
    'Rugăciuni pentru Boală',
    'Молитвы при болезни',
    '',
    '',
    '',
    'FOR_ILLNESS',
    0,
    NULL
);

-- Sub-rugăciuni FOR_ILLNESS (sample-uri simple)
INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Sample Illness Sub-Prayer 1',
    'Rugăciune pentru Boală Exemplu 1',
    'Молитва при болезни Пример 1',
    'Sample English text for illness prayer.',
    'Text sample în română pentru rugăciune pentru boală.',
    'Пример текста на русском для молитвы при болезни.',
    'FOR_ILLNESS',
    1,
    3  -- Ajustează (ex: 3)
);

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Sample Illness Sub-Prayer 2',
    'Rugăciune pentru Boală Exemplu 2',
    'Молитва при болезни Пример 2',
    'Another sample English text.',
    'Alt text sample în română.',
    'Еще один пример текста на русском.',
    'FOR_ILLNESS',
    2,
    3
);

-- Categorie GENERAL - Principal
INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'General Prayers',
    'Rugăciuni Generale',
    'Общие молитвы',
    '',
    '',
    '',
    'GENERAL',
    0,
    NULL
);

-- Sub-rugăciuni GENERAL (sample-uri simple)
INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Sample General Sub-Prayer 1',
    'Rugăciune Generală Exemplu 1',
    'Общая молитва Пример 1',
    'Sample English text for general prayer.',
    'Text sample în română pentru rugăciune generală.',
    'Пример текста на русском для общей молитвы.',
    'GENERAL',
    1,
    4  -- Ajustează (ex: 4)
);

INSERT INTO core_schema.prayers (title_en, title_ro, title_ru, text_en, text_ro, text_ru, category, order_index, parent_id)
VALUES (
    'Sample General Sub-Prayer 2',
    'Rugăciune Generală Exemplu 2',
    'Общая молитва Пример 2',
    'Another sample English text.',
    'Alt text sample în română.',
    'Еще один пример текста на русском.',
    'GENERAL',
    2,
    4
);

-- Note: După run inițial, verifică ID-uri în H2 Console și ajustează parent_id pentru sub-rugăciuni. După ajustare, re-run pentru a popula corect.
-- Completează cu rugăciuni reale.
