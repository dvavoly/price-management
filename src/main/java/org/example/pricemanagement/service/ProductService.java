package org.example.pricemanagement.service;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.example.pricemanagement.model.Product;
import org.example.pricemanagement.repository.ProductRepository;
import org.springframework.stereotype.Service;

import jakarta.persistence.EntityNotFoundException;

@Service
public class ProductService {
  private final ProductRepository productRepository;

  public ProductService(ProductRepository productRepository) {
    this.productRepository = productRepository;
  }

  public List<Product> getAllProducts() {
    return productRepository.findAll();
  }

  public Product getProductById(Integer id) {
    return productRepository.findById(id)
        .orElseThrow(() -> new EntityNotFoundException("Entity with id %d does not not exist".formatted(id)));
  }

  public ByteArrayInputStream loadPriceAsResource(List<Integer> productIdList) {
    List<Product> priceList = productRepository.findAllById(productIdList);
    ByteArrayOutputStream out = new ByteArrayOutputStream();
    try (Workbook wbOut = new XSSFWorkbook()) {
      Sheet sheetOut = wbOut.createSheet("onix_pm");
      Row row = sheetOut.createRow(0);
      row.createCell(0).setCellValue("pn_code");
      row.createCell(1).setCellValue("vendor_description");
      row.createCell(2).setCellValue("price_fob");
      // row.createCell(3).setCellValue("price_cost");
      // row.createCell(4).setCellValue("price_1");
      // row.createCell(5).setCellValue("price_4");
      // row.createCell(6).setCellValue("price_2");
      // row.createCell(7).setCellValue("price_3");
      // row.createCell(8).setCellValue("price_5");

      int index = 1;
      for (Product item : priceList) {
        row = sheetOut.createRow(index++);
        row.createCell(0).setCellValue(item.getPnCode());
        row.createCell(1).setCellValue(item.getVendorDescription());
        row.createCell(2).setCellValue(item.getPriceFob());
      }
      sheetOut.autoSizeColumn(0);
      sheetOut.autoSizeColumn(1);
      wbOut.write(out);

    } catch (IOException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    return new ByteArrayInputStream(out.toByteArray());
  }
}
