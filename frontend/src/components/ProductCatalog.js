import React, { useEffect, useState } from "react";
import { Button, Form, Input, Space, Table } from "antd";
import columns from "./columns";
import { postData } from "../service/productService";

const ProductCatalog = () => {
  const [data, setData] = useState([]);
  const [loading, setLoading] = useState(false);
  const [dataSource, setDataSource] = useState([]);

  const filterProductItems = ({ search }) => {
    if (search) {
      setDataSource(data.filter((element) => element.pnCode.includes(search)));
    } else {
      setDataSource(data);
    }
  };

  const onClick = () => {
    postData(
      "/api/products",
      dataSource.map((product) => product.id)
    ).then((data) => {
      console.log(data);
    });
  };

  useEffect(() => {
    setLoading(true);
    fetch("/api/products")
      .then((response) => response.json())
      .then((data) => {
        const transformData = data.map((row) => ({ ...row, key: row.id }));
        setData(transformData);
        setDataSource(transformData);
      })
      .finally(setLoading(false));
  }, [setLoading]);

  return (
    <div style={{ margin: "20px", padding: "20px" }}>
      <Form onFinish={filterProductItems}>
        <Form.Item key="search" name="search">
          <Input style={{ width: "24%" }} />
        </Form.Item>
        <Form.Item>
          <Space>
            <Button type="primary" htmlType="submit">
              Search
            </Button>
            <Button type="primary" onClick={onClick}>
              Download
            </Button>
          </Space>
        </Form.Item>
      </Form>
      <Table
        columns={columns}
        dataSource={dataSource}
        loading={loading}
        pagination={{ hideOnSinglePage: true, defaultPageSize: 25 }}
      />
    </div>
  );
};

export default ProductCatalog;
