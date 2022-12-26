package org.example.pricemanagement.model;

import java.time.LocalDateTime;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;

@Entity
@Table(name = "product_catalog")
public class Product {
  @Id
  @GeneratedValue
  private Integer id;

  @Column(name = "pn_code", unique = true)
  private String pnCode;

  @Column(name = "order_pn")
  private String orderPn;

  @Column(name = "model_code")
  private String modelCode;

  @OneToOne
  @JoinColumn(name = "product_type_id")
  private ProductType productTypeId;

  @Column(name = "product_type")
  private String productType;

  @Column(name = "package_type")
  private String packageType;

  @OneToOne
  @JoinColumn(name = "vendor_id")
  private Vendor vendor;

  @Column(name = "vendor_description")
  private String vendorDescription;

  @Column(name = "visible_in_pricing")
  private Integer visibleInPricing;

  @Column(name = "pricing_master")
  private String pricingMaster;

  @Column(name = "price_fob")
  private Double priceFob;

  @Column(name = "price_fob2")
  private Double priceFobTwo;

  @Column(name = "price_cost")
  private Double priceCost;

  @Column(name = "price_1")
  private Double priceOne;

  @Column(name = "price_2")
  private Double priceTwo;

  @Column(name = "price_3")
  private Double priceThree;

  @Column(name = "price_4")
  private Double priceFour;

  @Column(name = "price_5")
  private Double priceFive;

  @Column(name = "price_6")
  private Double priceSix;

  @Column(name = "price_7")
  private Double priceSeven;

  @Column(name = "price_8")
  private Double priceEight;

  @Column(name = "price_9")
  private Double priceNine;

  @Column(name = "prop_1")
  private String propOne;

  @Column(name = "prop_2")
  private String propTwo;

  @Column(name = "prop_3")
  private String propThree;

  @Column(name = "prop_4")
  private String propFour;

  @Column(name = "prop_5")
  private String propFive;

  @Column(name = "prop_6")
  private String propSix;

  @Column(name = "prop_7")
  private String propSeven;

  @Column(name = "prop_8")
  private String propEight;

  @Column(name = "prop_9")
  private String propNine;

  @Column(name = "prop_10")
  private String propTen;

  @Column(name = "name1")
  private String nameOne;

  @Column(name = "name2")
  private String nameTwo;

  @Column(name = "name3")
  private String nameThree;

  @Column(name = "name4")
  private String nameFour;

  @Column(name = "name5")
  private String nameFive;

  @Column(name = "description")
  private String description;

  @Column(name = "warranty")
  private Integer warranty;

  @Column(name = "is_assemble")
  private Integer isAssemble;

  @Column(name = "assemble_content")
  private String assembleContent;

  @Column(name = "components")
  private String components;

  @Column(name = "required_goods")
  private String requiredGoods;

  @Column(name = "url")
  private String url;

  @Column(name = "url_hl")
  private String urlHotline;

  @Column(name = "price_cost_formula")
  private String priceCostFormula;

  @Column(name = "price_1_formula")
  private String priceOneFormula;

  @Column(name = "price_2_formula")
  private String priceTwoFormula;

  @Column(name = "price_3_formula")
  private String priceThreeFormula;

  @Column(name = "price_4_formula")
  private String priceFourFormula;

  @Column(name = "price_5_formula")
  private String priceFiveFormula;

  @Column(name = "price_6_formula")
  private String priceSixFormula;

  @Column(name = "price_7_formula")
  private String priceSevenFormula;

  @Column(name = "price_8_formula")
  private String priceEightFormula;

  @Column(name = "price_9_formula")
  private String priceNineFormula;

  @Column(name = "name1_formula")
  private String nameOneFormula;

  @Column(name = "name2_formula")
  private String nameTwoFormula;

  @Column(name = "name3_formula")
  private String nameThreeFormula;

  @Column(name = "name4_formula")
  private String nameFourFormula;

  @Column(name = "name5_formula")
  private String nameFiveFormula;

  @Column(name = "description_formula")
  private String descriptionFormula;

  @Column(name = "warranty_assignment")
  private Double warrantyAssignment;

  @Column(name = "min_qtty")
  private Integer minimumOrderQuantity;

  @Column(name = "alternate_goods")
  private String alternateGoods;

  @Column(name = "hl_export")
  private Integer hotlineExport;

  @Column(name = "modify_time")
  private LocalDateTime modifyTime;

  @Column(name = "described")
  private Integer described;

  @Column(name = "checked")
  private Integer checked;

  @Column(name = "picture_id")
  private Integer pictureId;

  @Column(name = "availability")
  private Integer availability;

  @Column(name = "stock_update")
  private Integer stockUpdate;

  @Column(name = "system_category_id")
  private Integer systemCategoryId;

  @Column(name = "product_category_id")
  private Integer productCategoryId;

  @Column(name = "node_id")
  private Integer nodeId;

  @Column(name = "has_sn")
  private Integer hasSerialNumber;

  @Column(name = "xml_name")
  private String xmlName;

  @Column(name = "hidden")
  private Integer hidden;

  @Column(name = "custom_url")
  private String customUrl;

  @Column(name = "priority")
  private Integer priority;

  public Product() {
  }

  public Integer getId() {
    return id;
  }

  public void setId(Integer id) {
    this.id = id;
  }

  public String getPnCode() {
    return pnCode;
  }

  public void setPnCode(String pnCode) {
    this.pnCode = pnCode;
  }

  public String getOrderPn() {
    return orderPn;
  }

  public void setOrderPn(String orderPn) {
    this.orderPn = orderPn;
  }

  public String getModelCode() {
    return modelCode;
  }

  public void setModelCode(String modelCode) {
    this.modelCode = modelCode;
  }

  public ProductType getProductTypeId() {
    return productTypeId;
  }

  public void setProductTypeId(ProductType productTypeId) {
    this.productTypeId = productTypeId;
  }

  public String getProductType() {
    return productType;
  }

  public void setProductType(String productType) {
    this.productType = productType;
  }

  public String getPackageType() {
    return packageType;
  }

  public void setPackageType(String packageType) {
    this.packageType = packageType;
  }

  public Vendor getVendor() {
    return vendor;
  }

  public void setVendor(Vendor vendor) {
    this.vendor = vendor;
  }

  public String getVendorDescription() {
    return vendorDescription;
  }

  public void setVendorDescription(String vendorDescription) {
    this.vendorDescription = vendorDescription;
  }

  public Integer getVisibleInPricing() {
    return visibleInPricing;
  }

  public void setVisibleInPricing(Integer visibleInPricing) {
    this.visibleInPricing = visibleInPricing;
  }

  public String getPricingMaster() {
    return pricingMaster;
  }

  public void setPricingMaster(String pricingMaster) {
    this.pricingMaster = pricingMaster;
  }

  public Double getPriceFob() {
    return priceFob;
  }

  public void setPriceFob(Double priceFob) {
    this.priceFob = priceFob;
  }

  public Double getPriceFobTwo() {
    return priceFobTwo;
  }

  public void setPriceFobTwo(Double priceFobTwo) {
    this.priceFobTwo = priceFobTwo;
  }

  public Double getPriceCost() {
    return priceCost;
  }

  public void setPriceCost(Double priceCost) {
    this.priceCost = priceCost;
  }

  public Double getPriceOne() {
    return priceOne;
  }

  public void setPriceOne(Double priceOne) {
    this.priceOne = priceOne;
  }

  public Double getPriceTwo() {
    return priceTwo;
  }

  public void setPriceTwo(Double priceTwo) {
    this.priceTwo = priceTwo;
  }

  public Double getPriceThree() {
    return priceThree;
  }

  public void setPriceThree(Double priceThree) {
    this.priceThree = priceThree;
  }

  public Double getPriceFour() {
    return priceFour;
  }

  public void setPriceFour(Double priceFour) {
    this.priceFour = priceFour;
  }

  public Double getPriceFive() {
    return priceFive;
  }

  public void setPriceFive(Double priceFive) {
    this.priceFive = priceFive;
  }

  public Double getPriceSix() {
    return priceSix;
  }

  public void setPriceSix(Double priceSix) {
    this.priceSix = priceSix;
  }

  public Double getPriceSeven() {
    return priceSeven;
  }

  public void setPriceSeven(Double priceSeven) {
    this.priceSeven = priceSeven;
  }

  public Double getPriceEight() {
    return priceEight;
  }

  public void setPriceEight(Double priceEight) {
    this.priceEight = priceEight;
  }

  public Double getPriceNine() {
    return priceNine;
  }

  public void setPriceNine(Double priceNine) {
    this.priceNine = priceNine;
  }

  public String getPropOne() {
    return propOne;
  }

  public void setPropOne(String propOne) {
    this.propOne = propOne;
  }

  public String getPropTwo() {
    return propTwo;
  }

  public void setPropTwo(String propTwo) {
    this.propTwo = propTwo;
  }

  public String getPropThree() {
    return propThree;
  }

  public void setPropThree(String propThree) {
    this.propThree = propThree;
  }

  public String getPropFour() {
    return propFour;
  }

  public void setPropFour(String propFour) {
    this.propFour = propFour;
  }

  public String getPropFive() {
    return propFive;
  }

  public void setPropFive(String propFive) {
    this.propFive = propFive;
  }

  public String getPropSix() {
    return propSix;
  }

  public void setPropSix(String propSix) {
    this.propSix = propSix;
  }

  public String getPropSeven() {
    return propSeven;
  }

  public void setPropSeven(String propSeven) {
    this.propSeven = propSeven;
  }

  public String getPropEight() {
    return propEight;
  }

  public void setPropEight(String propEight) {
    this.propEight = propEight;
  }

  public String getPropNine() {
    return propNine;
  }

  public void setPropNine(String propNine) {
    this.propNine = propNine;
  }

  public String getPropTen() {
    return propTen;
  }

  public void setPropTen(String propTen) {
    this.propTen = propTen;
  }

  public String getNameOne() {
    return nameOne;
  }

  public void setNameOne(String nameOne) {
    this.nameOne = nameOne;
  }

  public String getNameTwo() {
    return nameTwo;
  }

  public void setNameTwo(String nameTwo) {
    this.nameTwo = nameTwo;
  }

  public String getNameThree() {
    return nameThree;
  }

  public void setNameThree(String nameThree) {
    this.nameThree = nameThree;
  }

  public String getNameFour() {
    return nameFour;
  }

  public void setNameFour(String nameFour) {
    this.nameFour = nameFour;
  }

  public String getNameFive() {
    return nameFive;
  }

  public void setNameFive(String nameFive) {
    this.nameFive = nameFive;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public Integer getWarranty() {
    return warranty;
  }

  public void setWarranty(Integer warranty) {
    this.warranty = warranty;
  }

  public Integer getIsAssemble() {
    return isAssemble;
  }

  public void setIsAssemble(Integer isAssemble) {
    this.isAssemble = isAssemble;
  }

  public String getAssembleContent() {
    return assembleContent;
  }

  public void setAssembleContent(String assembleContent) {
    this.assembleContent = assembleContent;
  }

  public String getComponents() {
    return components;
  }

  public void setComponents(String components) {
    this.components = components;
  }

  public String getRequiredGoods() {
    return requiredGoods;
  }

  public void setRequiredGoods(String requiredGoods) {
    this.requiredGoods = requiredGoods;
  }

  public String getUrl() {
    return url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public String getUrlHotline() {
    return urlHotline;
  }

  public void setUrlHotline(String urlHotline) {
    this.urlHotline = urlHotline;
  }

  public String getPriceCostFormula() {
    return priceCostFormula;
  }

  public void setPriceCostFormula(String priceCostFormula) {
    this.priceCostFormula = priceCostFormula;
  }

  public String getPriceOneFormula() {
    return priceOneFormula;
  }

  public void setPriceOneFormula(String priceOneFormula) {
    this.priceOneFormula = priceOneFormula;
  }

  public String getPriceTwoFormula() {
    return priceTwoFormula;
  }

  public void setPriceTwoFormula(String priceTwoFormula) {
    this.priceTwoFormula = priceTwoFormula;
  }

  public String getPriceThreeFormula() {
    return priceThreeFormula;
  }

  public void setPriceThreeFormula(String priceThreeFormula) {
    this.priceThreeFormula = priceThreeFormula;
  }

  public String getPriceFourFormula() {
    return priceFourFormula;
  }

  public void setPriceFourFormula(String priceFourFormula) {
    this.priceFourFormula = priceFourFormula;
  }

  public String getPriceFiveFormula() {
    return priceFiveFormula;
  }

  public void setPriceFiveFormula(String priceFiveFormula) {
    this.priceFiveFormula = priceFiveFormula;
  }

  public String getPriceSixFormula() {
    return priceSixFormula;
  }

  public void setPriceSixFormula(String priceSixFormula) {
    this.priceSixFormula = priceSixFormula;
  }

  public String getPriceSevenFormula() {
    return priceSevenFormula;
  }

  public void setPriceSevenFormula(String priceSevenFormula) {
    this.priceSevenFormula = priceSevenFormula;
  }

  public String getPriceEightFormula() {
    return priceEightFormula;
  }

  public void setPriceEightFormula(String priceEightFormula) {
    this.priceEightFormula = priceEightFormula;
  }

  public String getPriceNineFormula() {
    return priceNineFormula;
  }

  public void setPriceNineFormula(String priceNineFormula) {
    this.priceNineFormula = priceNineFormula;
  }

  public String getNameOneFormula() {
    return nameOneFormula;
  }

  public void setNameOneFormula(String nameOneFormula) {
    this.nameOneFormula = nameOneFormula;
  }

  public String getNameTwoFormula() {
    return nameTwoFormula;
  }

  public void setNameTwoFormula(String nameTwoFormula) {
    this.nameTwoFormula = nameTwoFormula;
  }

  public String getNameThreeFormula() {
    return nameThreeFormula;
  }

  public void setNameThreeFormula(String nameThreeFormula) {
    this.nameThreeFormula = nameThreeFormula;
  }

  public String getNameFourFormula() {
    return nameFourFormula;
  }

  public void setNameFourFormula(String nameFourFormula) {
    this.nameFourFormula = nameFourFormula;
  }

  public String getNameFiveFormula() {
    return nameFiveFormula;
  }

  public void setNameFiveFormula(String nameFiveFormula) {
    this.nameFiveFormula = nameFiveFormula;
  }

  public String getDescriptionFormula() {
    return descriptionFormula;
  }

  public void setDescriptionFormula(String descriptionFormula) {
    this.descriptionFormula = descriptionFormula;
  }

  public Double getWarrantyAssignment() {
    return warrantyAssignment;
  }

  public void setWarrantyAssignment(Double warrantyAssignment) {
    this.warrantyAssignment = warrantyAssignment;
  }

  public Integer getMinimumOrderQuantity() {
    return minimumOrderQuantity;
  }

  public void setMinimumOrderQuantity(Integer minimumOrderQuantity) {
    this.minimumOrderQuantity = minimumOrderQuantity;
  }

  public String getAlternateGoods() {
    return alternateGoods;
  }

  public void setAlternateGoods(String alternateGoods) {
    this.alternateGoods = alternateGoods;
  }

  public Integer getHotlineExport() {
    return hotlineExport;
  }

  public void setHotlineExport(Integer hotlineExport) {
    this.hotlineExport = hotlineExport;
  }

  public LocalDateTime getModifyTime() {
    return modifyTime;
  }

  public void setModifyTime(LocalDateTime modifyTime) {
    this.modifyTime = modifyTime;
  }

  public Integer getDescribed() {
    return described;
  }

  public void setDescribed(Integer described) {
    this.described = described;
  }

  public Integer getChecked() {
    return checked;
  }

  public void setChecked(Integer checked) {
    this.checked = checked;
  }

  public Integer getPictureId() {
    return pictureId;
  }

  public void setPictureId(Integer pictureId) {
    this.pictureId = pictureId;
  }

  public Integer getAvailability() {
    return availability;
  }

  public void setAvailability(Integer availability) {
    this.availability = availability;
  }

  public Integer getStockUpdate() {
    return stockUpdate;
  }

  public void setStockUpdate(Integer stockUpdate) {
    this.stockUpdate = stockUpdate;
  }

  public Integer getSystemCategoryId() {
    return systemCategoryId;
  }

  public void setSystemCategoryId(Integer systemCategoryId) {
    this.systemCategoryId = systemCategoryId;
  }

  public Integer getProductCategoryId() {
    return productCategoryId;
  }

  public void setProductCategoryId(Integer productCategoryId) {
    this.productCategoryId = productCategoryId;
  }

  public Integer getNodeId() {
    return nodeId;
  }

  public void setNodeId(Integer nodeId) {
    this.nodeId = nodeId;
  }

  public Integer getHasSerialNumber() {
    return hasSerialNumber;
  }

  public void setHasSerialNumber(Integer hasSerialNumber) {
    this.hasSerialNumber = hasSerialNumber;
  }

  public String getXmlName() {
    return xmlName;
  }

  public void setXmlName(String xmlName) {
    this.xmlName = xmlName;
  }

  public Integer getHidden() {
    return hidden;
  }

  public void setHidden(Integer hidden) {
    this.hidden = hidden;
  }

  public String getCustomUrl() {
    return customUrl;
  }

  public void setCustomUrl(String customUrl) {
    this.customUrl = customUrl;
  }

  public Integer getPriority() {
    return priority;
  }

  public void setPriority(Integer priority) {
    this.priority = priority;
  }
}
