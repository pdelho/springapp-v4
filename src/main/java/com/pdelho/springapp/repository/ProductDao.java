package com.pdelho.springapp.repository;

import java.util.List;

import com.pdelho.springapp.domain.Product;

public interface ProductDao {

    public List<Product> getProductList();

    public void saveProduct(Product prod);

}