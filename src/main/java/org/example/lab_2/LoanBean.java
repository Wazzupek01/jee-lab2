package org.example.lab_2;

import java.io.Serializable;

public class LoanBean implements Serializable {
    Double k = 1000.0;
    Double pr = 10.0;
    Double n = 10.0;
    Double kwota;

    public Double getRata() {
        validate_data();
        return (k * ((pr/100)/12)) / (1 - (1 / Math.pow(1 + ((pr/100)/12), n)));
    }
    
    private void validate_data() {
        if(k < 0.0 || pr < 0.0 || n < 0.0) {
            throw new IllegalArgumentException("Values cannot be negative.");
        }
    }

    public Double getK() {
        return k;
    }

    public void setK(Double k) {
        this.k = k;
    }

    public Double getPr() {
        return pr;
    }

    public void setPr(Double pr) {
        this.pr = pr;
    }

    public Double getN() {
        return n;
    }

    public void setN(Double n) {
        this.n = n;
    }
    

    public Double getKwota() {
        return kwota;
    }

    public void setKwota(Double kwota) {
        this.kwota = kwota;
    }
}
