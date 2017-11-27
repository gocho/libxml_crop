/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.c
 * Author: lgc
 *
 * Created on January 17, 2017, 5:18 PM
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <libxml/parser.h>
#include <libxml/tree.h>
#include <libxml/xmlsave.h>

#define PRESETS_PATH "./test.xml"


int traversal_node_set_parameter_image_color(xmlNodePtr cur)
{
    if ((cur == NULL) || (cur->xmlChildrenNode == NULL))
        return;

    xmlNodePtr tempNodePtr;

    for (cur = cur->xmlChildrenNode; cur != NULL; cur = cur->next) {
        if (strcmp(cur->name, "text") == 0)
            continue;

        fprintf(stderr, "[!!!!!!!]%s = %s\n", cur->name, xmlNodeGetContent(cur));
        //fprintf(stderr, "[!!!!!!!]cur->type = %d\n", cur->type);

        xmlAttrPtr attrPtr = cur->properties;
        while (attrPtr != NULL) {
            xmlChar* szAttr = xmlGetProp(cur, BAD_CAST attrPtr->name);
            //fprintf(stderr, "[!!!!!!!]properties : %s : %s\n", attrPtr->name, szAttr);
            xmlFree(szAttr);
            attrPtr = attrPtr->next;
        }

        if (cur->type == 3)
            continue;
    }

    return 0;
}


int XMLParserTest(void)
{
    char buffer[] = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n"
            "<DeviceInfo version=\"1.0\" xmlns=\"http://www.hikvision.com/ver10/XMLSchema\">\r\n"
            "<deviceName>IP CAMERA</deviceName>\r\n"
            "<deviceID>88</deviceID>\r\n"
            "<deviceDescription>IPCamera</deviceDescription>\r\n"
            "<deviceLocation>hangzhou</deviceLocation>\r\n"
            "<systemContact>Hikvision.China</systemContact>\r\n"
            "<model>DS-2CD2A20F-IS</model>\r\n"
            "<serialNumber>DS-2CD2A20F-IS20151217AACH564141878</serialNumber>\r\n"
            "<macAddress>28:57:be:5b:08:6a</macAddress>\r\n"
            "<firmwareVersion>V5.3.5</firmwareVersion>\r\n"
            "<firmwareReleasedDate>build 151029</firmwareReleasedDate>\r\n"
            "<bootVersion>V1.3.4</bootVersion>\r\n"
            "<bootReleasedDate>100316</bootReleasedDate>\r\n"
            "<hardwareVersion>0x0</hardwareVersion>\r\n"
            "</DeviceInfo>\r\n";

    int size = strlen(buffer);

    xmlDocPtr doc;
    xmlNodePtr curNode;
    xmlKeepBlanksDefault(0);
    doc = xmlReadMemory(buffer, size, NULL, "utf8", XML_PARSE_RECOVER);
    if (NULL == doc) {
        fprintf(stderr, "Document not parsed successfully\n");
        return -1;
    }
    curNode = xmlDocGetRootElement(doc);
    if (NULL == curNode) {
        fprintf(stderr, "empty document\n");
        xmlFreeDoc(doc);
        return -1;
    }
    if (xmlStrcasecmp(curNode->name, BAD_CAST "DeviceInfo")) {
        fprintf(stderr, "document of the wrong type!\n");
        xmlFreeDoc(doc);
        return -1;
    }


    traversal_node_set_parameter_image_color(curNode);

    xmlFreeDoc(doc);
}


void XMLCreateTest()
{
    xmlDocPtr doc;
    xmlNodePtr tree;
    
#ifdef SAVEXMLFILE
    if (access(PRESETS_PATH, F_OK)) {
        fprintf(stderr, "%s(%d): run...\r\n", __func__, __LINE__);
        doc = xmlNewDoc(BAD_CAST "1.0");
        doc->encoding = BAD_CAST strdup("UTF-8");
        tree = xmlNewNode(NULL, BAD_CAST "PTZPresetList");
        xmlNewProp(tree, BAD_CAST "version", BAD_CAST "2.0");
        xmlNewProp(tree, BAD_CAST "xmlns", BAD_CAST "http://www.hikvision.com/ver20/XMLSchema");
        xmlDocSetRootElement(doc, tree);
    } else {
        fprintf(stderr, "%s(%d): run...\r\n", __func__, __LINE__);
        xmlKeepBlanksDefault(0);
        //xmlDocPtr doc = xmlReadFile(PRESETS_PATH, "UTF-8", XML_PARSE_PEDANTIC);
        xmlDocPtr doc = xmlParseFile(PRESETS_PATH);
        if (NULL == doc) {
            fprintf(stderr, "Document not parsed successfully\n");
            return -1;
        }
        tree = xmlDocGetRootElement(doc);
        if (NULL == tree) {
            fprintf(stderr, "empty document\n");
            xmlFreeDoc(doc);
            return -1;
        }

        if (xmlStrcasecmp(tree->name, BAD_CAST "PTZPresetList")) {
            fprintf(stderr, "document of the wrong type!\n");
            xmlFreeDoc(doc);
            return -1;
        }
    }
#else
    doc = xmlNewDoc(BAD_CAST "1.0");
    doc->encoding = BAD_CAST strdup("UTF-8");
    tree = xmlNewNode(NULL, BAD_CAST "PTZPresetList");
    xmlNewProp(tree, BAD_CAST "version", BAD_CAST "2.0");
    xmlNewProp(tree, BAD_CAST "xmlns", BAD_CAST "http://www.hikvision.com/ver20/XMLSchema");
    xmlDocSetRootElement(doc, tree);
#endif    
    
    
    xmlNodePtr PTZPreset_node = xmlNewNode(NULL, BAD_CAST "PTZPreset");
    xmlAddChild(tree, PTZPreset_node);
    xmlNewTextChild(PTZPreset_node, NULL, BAD_CAST "enabled", BAD_CAST "true");
    xmlNewTextChild(PTZPreset_node, NULL, BAD_CAST "id", BAD_CAST "1");
    xmlNewTextChild(PTZPreset_node, NULL, BAD_CAST "presetName", BAD_CAST "preset1");
    xmlNodePtr AbsoluteHigh_node = xmlNewNode(NULL, BAD_CAST "AbsoluteHigh");
    xmlAddChild(PTZPreset_node, AbsoluteHigh_node);
    xmlNewTextChild(PTZPreset_node, NULL, BAD_CAST "elevation", BAD_CAST "0");
    xmlNewTextChild(PTZPreset_node, NULL, BAD_CAST "azimuth", BAD_CAST "0");
    xmlNewTextChild(PTZPreset_node, NULL, BAD_CAST "absoluteZoom", BAD_CAST "10");
    //xmlSaveFile(PRESETS_PATH, doc);
    
    
    xmlChar *buffer = NULL;
    int size;
    xmlDocDumpFormatMemory(doc, (xmlChar **)&buffer, &size, 1);
    fprintf(stderr, "%s(%d): buffer = %s\r\n", __func__, __LINE__, buffer);
	
    xmlMemoryDump();
    free(buffer);
    
}




int main(int argc, char** argv)
{
    XMLCreateTest();
    XMLParserTest();

    return (EXIT_SUCCESS);
}

