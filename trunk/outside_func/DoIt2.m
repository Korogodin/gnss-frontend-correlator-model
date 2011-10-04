            % В тактовой модели сворачиваемся
    
            Ip_do(l) =  cos_Acum2(l) * MCode_Shifted_p(l) * y(l);
            Qp_do(l) =  sin_Acum2(l) * MCode_Shifted_p(l) * y(l);
            Ie_do(l) =  cos_Acum2(l) * MCode_Shifted_e(l) * y(l);
            Qe_do(l) =  sin_Acum2(l) * MCode_Shifted_e(l) * y(l);
            Il_do(l) =  cos_Acum2(l) * MCode_Shifted_l(l) * y(l);
            Ql_do(l) =  sin_Acum2(l) * MCode_Shifted_l(l) * y(l);

            Ipsum = Ipsum +  Ip_do(l);
            Qpsum = Qpsum +  Qp_do(l);
            Iesum = Iesum +  Ie_do(l);
            Qesum = Qesum +  Qe_do(l);
            Ilsum = Ilsum +  Il_do(l);
            Qlsum = Qlsum +  Ql_do(l);

            Ipsum_l(l) = Ipsum; Qpsum_l(l) = Qpsum;
            Iesum_l(l) = Iesum; Qesum_l(l) = Qesum;
            Ilsum_l(l) = Ilsum; Qlsum_l(l) = Qlsum;