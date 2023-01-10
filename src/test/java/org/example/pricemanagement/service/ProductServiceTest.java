package org.example.pricemanagement.service;

import org.example.pricemanagement.model.Product;
import org.example.pricemanagement.repository.ProductRepository;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.List;

import static org.assertj.core.api.Assertions.*;

@ExtendWith(MockitoExtension.class)
class ProductServiceTest {

  @Mock
  private ProductRepository productRepository;

  @InjectMocks
  private ProductService productService;

  @Test
  void getAllProducts() {
    Mockito.when(productRepository.findAll()).thenReturn(List.of());

    List<Product> actual = productService.getAllProducts();
    assertThat(actual).isNotNull();
  }

  @Test
  void getProductById() {
  }
}
