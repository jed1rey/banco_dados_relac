use PetShop

--altere o nome do pateta para goofy
select nome from Animais where nome='Pateta'
update Animais set nome='Goofy' where nome= 'Pateta'  -- muda o nome
select nome from Animais where nome='Goofy'

 

--altere o peso do Garfield para 10 kg
select * from Animais where nome='Garfield'
update Animais set peso=10 where nome= 'Garfield'

 

--altere a cor de todos os gatos para laranja
select * from 
animais join especies on
especies.id = Animais.especie_id
where Especies.nome = 'gato'

 

update Animais set cor='laranja' where especie_id=1

 

--crie um campo observacao para os animais
alter table Animais add observacao varchar(100);

select * from Animais


-- remova todos os animais que pesam mais que 200 kg

delete Animais where peso > 200;

-- remova todos os animais que o nome inicie com a letra 'C'

delete Animais where Nome like 'C%';

-- remova o campo cor dos animais

select * from Animais
alter table Animais drop column cor;


-- aumente o tamanho do campo nome dos animais pra 80 caracteres

alter table Animais alter column nome varchar(80);




