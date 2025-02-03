-- Unittest on 

-- TEST 01
create or replace procedure public.test() language plpgsql as $$
-- DECLARE
--     var INTEGER;
begin
   
    -- Logga l'ID generato
    RAISE NOTICE 'Some log';

    -- Assert: Verifica che la funzione restituisca un ID valido (intero > 0)
    ASSERT test_result > 0, 'Some fail message';

    -- Annulla la transazione per non lasciare dati di test nel database
    ROLLBACK;
end;
$$;

call public.test();

DROP PROCEDURE public.test;