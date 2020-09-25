/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Pacote;

/**
 *
 * @author cassio
 */
public class Pessoa {
    private String nome;
    private Pessoa pai;
    private Pessoa mãe;

    public Pessoa(String nome) {
        this.nome = nome;
    }

    public Pessoa(String nome, Pessoa pai, Pessoa mãe) {
        this.nome = nome;
        this.pai = pai;
        this.mãe = mãe;
    }

    public Pessoa getMãe() {
        return mãe;
    }

    public void setMãe(Pessoa mãe) {
        this.mãe = mãe;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public Pessoa getPai() {
        return pai;
    }

    public void setPai(Pessoa pai) {
        this.pai = pai;
    }
    
}
