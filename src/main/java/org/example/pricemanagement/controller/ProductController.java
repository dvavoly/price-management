package org.example.pricemanagement.controller;

import java.io.ByteArrayInputStream;
import java.util.List;

import org.example.pricemanagement.dto.ProductDTO;
import org.example.pricemanagement.model.Product;
import org.example.pricemanagement.service.ProductService;
import org.modelmapper.ModelMapper;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.ContentDisposition;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class ProductController {
  private final ProductService productService;
  private final ModelMapper mapper;

  public ProductController(ProductService productService, ModelMapper mapper) {
    this.productService = productService;
    this.mapper = mapper;
  }

  @GetMapping("/products")
  public List<Product> getAll() {
    return productService.getAllProducts();
  }

  @GetMapping("/products/{id}")
  public ProductDTO getById(@PathVariable Integer id) {
    return mapper.map(productService.getProductById(id), ProductDTO.class);
  }

  @PostMapping("/products")
  public ResponseEntity<InputStreamResource> downloadPrice(@RequestBody List<Integer> productIdList) {
    ByteArrayInputStream in = productService.loadPriceAsResource(productIdList);
    HttpHeaders headers = new HttpHeaders();
    headers.setContentDisposition(ContentDisposition.attachment().filename("pm.xls").build());
    headers.setContentType(MediaType.parseMediaType("application/vnd.ms-excel"));
    return new ResponseEntity<InputStreamResource>(new InputStreamResource(in), headers, HttpStatus.OK);
  }
}
