
--------------------------------------------------------------------------------
-- INSERIR MOTOS
--------------------------------------------------------------------------------
INSERT INTO TB_MOTO VALUES (1, 1, 1, 'ABC1A23', 'CHS12345678901113', 'MTR123A', 'Honda CG 160');
INSERT INTO TB_MOTO VALUES (2, 2, 2, 'DEF4B56', 'CHS09876543111314', 'MTR456B', 'Yamaha Fazer 250');
INSERT INTO TB_MOTO VALUES (3, 1, 3, 'GHI7C89', 'CHS11223311134455', 'MTR789C', 'Suzuki GSR 750');

-- INSERIR TAGS
--------------------------------------------------------------------------------
INSERT INTO TB_TAG VALUES (1, 'MTR789C', 'WiFi_A', 20, 32, SYSDATE);
INSERT INTO TB_TAG VALUES (2, 'RFID002', 'WiFi_B', 20, 30, SYSDATE);
INSERT INTO TB_TAG VALUES (3, 'RFID003', 'WiFi_C', 10, 19, SYSDATE);

-- INSERIR ANTENAS
--------------------------------------------------------------------------------
INSERT INTO TB_ANTENA VALUES (1, 1, 'ANTENA001', -23.550520, 46.633308);
INSERT INTO TB_ANTENA VALUES (2, 2, 'ANTENA002', 12, 23);
INSERT INTO TB_ANTENA VALUES (3, 3, 'ANTENA003', -19.916681, -43.934493);
INSERT INTO TB_ANTENA VALUES (2, 2, 'ANTENA002', 22.906847, 43.172897);
INSERT INTO TB_ANTENA VALUES (3, 3, 'ANTENA003', -19.916681, -43.934493);

-- INSERIR PATIOS
--------------------------------------------------------------------------------
INSERT INTO TB_PATIO VALUES (1, 1, '01001-000', '100', 'São Paulo', 'SP', 50);
INSERT INTO TB_PATIO VALUES (2, 2, '20010-000', '200', 'Rio de Janeiro', 'RJ', 60);
INSERT INTO TB_PATIO VALUES (3, 3, '30110-000', '300', 'Belo Horizonte', 'MG', 40);

--------------------------------------------------------------------------------
-- INSERIR USUÁRIOS
--------------------------------------------------------------------------------
INSERT INTO TB_USUARIO VALUES (1, 'João Silva', 'joao@gmail.com', 'senha1223');
INSERT INTO TB_USUARIO VALUES (2, 'Maria Souza', 'maria@gmail.com', 'senha123');
INSERT INTO TB_USUARIO VALUES (3, 'Carlos Lima', 'carlos@gmail.com', 'senha123');