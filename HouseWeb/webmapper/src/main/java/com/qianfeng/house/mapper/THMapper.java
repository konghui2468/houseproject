package com.qianfeng.house.mapper;

import com.qianfeng.house.pojo.tH;
import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocument;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Component
public class THMapper {

    @Autowired
    private SolrClient solrClient;

    public Map<String, Object> search(SolrQuery solrQuery, Integer pageSize) {
        Map<String, Object> map = new HashMap<String,Object>();
        // documentlist ---  list
        try {
            //1. 获取查询响应 queryresponse  solrServer.query(SolrParams params)
            QueryResponse queryResponse = solrClient.query(solrQuery);
            //2. 获取文档域列表
            SolrDocumentList documentList = queryResponse.getResults();
            // 获取总记录数
            long totalRecords = documentList.getNumFound();
            // 获取总页数
            long totalPages = (totalRecords + pageSize - 1) / pageSize;
            map.put("totalPages", totalPages);
            // 获取高亮集合
            Map<String, Map<String, List<String>>> highlighting = queryResponse.getHighlighting();
            // 获取普通的List
            List<tH> list = new ArrayList<tH>();
            //3. 遍历列表 转换成 List    documentList -- list
            for (SolrDocument document : documentList) {
                tH dto = new tH();
                //封装非高亮字段
                /*dto.setId((Integer) document.get("id"));*/
                dto.settName((String) document.get("house_name"));
                dto.settUrl((String) document.get("house_url"));
                dto.setArea((Double) document.get("house_area"));
                dto.setPrice((Integer) document.get("house_price"));

                dto.setRoom1((Integer) document.get("house_room_1"));
                dto.setRoom2((Integer) document.get("house_room_2"));
                dto.setRoom3((Integer) document.get("house_room_3"));
                dto.setLocation((String) document.get("house_location"));
                dto.setLevel((String) document.get("house_level"));
                dto.setTier((String) document.get("house_tier"));
                dto.setPackType((String) document.get("house_pack"));
                //封装高亮字段
                List<String> nameList = highlighting.get(document.get("id")).get("house_key");
                String namestr = "";
                if (nameList != null && !nameList.isEmpty()) {
                    namestr = nameList.get(0);
                }else{
                    namestr = (String) document.get("borrow_name");
                }
               /* dto.setName(namestr);*/
                list.add(dto);
            }
            map.put("list", list);
        } catch (Exception se) {
            se.printStackTrace();
        }
        return map;
    }
}
