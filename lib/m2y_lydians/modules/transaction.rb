module M2yLydians
  class Transaction < Base
    ### TRANSACTIONS ###

    # Coc.svc/ContaPgtoTEF_37
    def self.perform_p2p(body)
      post(base_url + BASE_ACCOUNT_PATH + PERFORM_P2P_PATH, parsed_body(body))
    end

    # Coc.svc/ContaPgtoTED_37
    def self.perform_ted(body)
      post(base_url + BASE_ACCOUNT_PATH + PERFORM_TED_PATH, parsed_body(body))
    end

    # Coc.svc/ContaPgtoDOC_37
    def self.perform_doc(body)
      post(base_url + BASE_ACCOUNT_PATH + PERFORM_DOC_PATH, parsed_body(body))
    end

    # Coc.svc/ContaIncluirLancto_37
    def self.include_debit(body)
      post(base_url + BASE_ACCOUNT_PATH + INCLUDE_DEBT_PATH, parsed_body(body))
    end

    # Coc.svc/EstornarLancamento_37
    def self.reverse_debit(body)
      post(base_url + BASE_ACCOUNT_PATH + REVERSE_DEBT_PATH, parsed_body(body))
    end

    ### AUXILIARY METHODS ###

    # Glb.svc/IFsConsultar_37
    def self.bank_list
      post(base_url + BASE_GLB_PATH + BANK_LIST_PATH, parsed_body({}))
    end

    # Coc.svc/ContaPgtoReprovar_37
    def self.cancel_transaction(body)
      post(base_url + BASE_ACCOUNT_PATH + CANCEL_SCHEDULED_TRANSACTION_PATH, parsed_body(body))
    end

    # ContaPgtoAgenda_37
    def self.list_scheduled_transactions(body)
      post(base_url + BASE_ACCOUNT_PATH + LIST_SCHEDULED_TRANSACTIONS, parsed_body(body))
    end

    # ContaPagamento_37
    def self.status_transaction(body)
      post(base_url + BASE_ACCOUNT_PATH + TRANSACTION_STATUS, parsed_body(body))
    end
  end
end
