.class public Lorg/eclipse/jetty/webapp/WebDescriptor;
.super Lorg/eclipse/jetty/webapp/Descriptor;
.source "WebDescriptor.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field protected static _parserSingleton:Lorg/eclipse/jetty/xml/XmlParser;


# instance fields
.field protected _classNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _distributable:Z

.field protected _isOrdered:Z

.field protected _majorVersion:I

.field protected _metaDataComplete:Lorg/eclipse/jetty/webapp/MetaDataComplete;

.field protected _minorVersion:I

.field protected _ordering:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lorg/eclipse/jetty/webapp/WebDescriptor;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/webapp/WebDescriptor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 2
    .param p1, "xml"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/webapp/Descriptor;-><init>(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_majorVersion:I

    .line 48
    iput v1, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_minorVersion:I

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_classNames:Ljava/util/ArrayList;

    .line 52
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_isOrdered:Z

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_ordering:Ljava/util/List;

    .line 143
    return-void
.end method


# virtual methods
.method public addClassName(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 240
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_classNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_classNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_0
    return-void
.end method

.method public ensureParser()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_parserSingleton:Lorg/eclipse/jetty/xml/XmlParser;

    if-nez v0, :cond_0

    .line 61
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebDescriptor;->newParser()Lorg/eclipse/jetty/xml/XmlParser;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_parserSingleton:Lorg/eclipse/jetty/xml/XmlParser;

    .line 63
    :cond_0
    sget-object v0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_parserSingleton:Lorg/eclipse/jetty/xml/XmlParser;

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_parser:Lorg/eclipse/jetty/xml/XmlParser;

    .line 64
    return-void
.end method

.method public getClassNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_classNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMajorVersion()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_majorVersion:I

    return v0
.end method

.method public getMetaDataComplete()Lorg/eclipse/jetty/webapp/MetaDataComplete;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_metaDataComplete:Lorg/eclipse/jetty/webapp/MetaDataComplete;

    return-object v0
.end method

.method public getMinorVersion()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_minorVersion:I

    return v0
.end method

.method public getOrdering()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_ordering:Ljava/util/List;

    return-object v0
.end method

.method public isDistributable()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_distributable:Z

    return v0
.end method

.method public isOrdered()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_isOrdered:Z

    return v0
.end method

.method public newParser()Lorg/eclipse/jetty/xml/XmlParser;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v20, Lorg/eclipse/jetty/xml/XmlParser;

    invoke-direct/range {v20 .. v20}, Lorg/eclipse/jetty/xml/XmlParser;-><init>()V

    .line 72
    .local v20, "xmlParser":Lorg/eclipse/jetty/xml/XmlParser;
    const-class v22, Ljavax/servlet/Servlet;

    const-string v23, "javax/servlet/resources/web-app_2_2.dtd"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v5

    .line 73
    .local v5, "dtd22":Ljava/net/URL;
    const-class v22, Ljavax/servlet/Servlet;

    const-string v23, "javax/servlet/resources/web-app_2_3.dtd"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v6

    .line 74
    .local v6, "dtd23":Ljava/net/URL;
    const-class v22, Ljavax/servlet/Servlet;

    const-string v23, "javax/servlet/resources/j2ee_1_4.xsd"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v8

    .line 75
    .local v8, "j2ee14xsd":Ljava/net/URL;
    const-class v22, Ljavax/servlet/Servlet;

    const-string v23, "javax/servlet/resources/web-app_2_4.xsd"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v13

    .line 76
    .local v13, "webapp24xsd":Ljava/net/URL;
    const-class v22, Ljavax/servlet/Servlet;

    const-string v23, "javax/servlet/resources/web-app_2_5.xsd"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v14

    .line 77
    .local v14, "webapp25xsd":Ljava/net/URL;
    const-class v22, Ljavax/servlet/Servlet;

    const-string v23, "javax/servlet/resources/web-app_3_0.xsd"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v15

    .line 78
    .local v15, "webapp30xsd":Ljava/net/URL;
    const-class v22, Ljavax/servlet/Servlet;

    const-string v23, "javax/servlet/resources/web-common_3_0.xsd"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v16

    .line 79
    .local v16, "webcommon30xsd":Ljava/net/URL;
    const-class v22, Ljavax/servlet/Servlet;

    const-string v23, "javax/servlet/resources/web-fragment_3_0.xsd"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v17

    .line 80
    .local v17, "webfragment30xsd":Ljava/net/URL;
    const-class v22, Ljavax/servlet/Servlet;

    const-string v23, "javax/servlet/resources/XMLSchema.dtd"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v12

    .line 81
    .local v12, "schemadtd":Ljava/net/URL;
    const-class v22, Ljavax/servlet/Servlet;

    const-string v23, "javax/servlet/resources/xml.xsd"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v21

    .line 82
    .local v21, "xmlxsd":Ljava/net/URL;
    const-class v22, Ljavax/servlet/Servlet;

    const-string v23, "javax/servlet/resources/j2ee_web_services_client_1_1.xsd"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v18

    .line 83
    .local v18, "webservice11xsd":Ljava/net/URL;
    const-class v22, Ljavax/servlet/Servlet;

    const-string v23, "javax/servlet/resources/javaee_web_services_client_1_2.xsd"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v19

    .line 84
    .local v19, "webservice12xsd":Ljava/net/URL;
    const-class v22, Ljavax/servlet/Servlet;

    const-string v23, "javax/servlet/resources/datatypes.dtd"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v4

    .line 86
    .local v4, "datatypesdtd":Ljava/net/URL;
    const/4 v9, 0x0

    .line 87
    .local v9, "jsp20xsd":Ljava/net/URL;
    const/4 v10, 0x0

    .line 91
    .local v10, "jsp21xsd":Ljava/net/URL;
    :try_start_0
    const-class v22, Lorg/eclipse/jetty/webapp/WebXmlConfiguration;

    const-string v23, "javax.servlet.jsp.JspPage"

    invoke-static/range {v22 .. v23}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 92
    .local v11, "jsp_page":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v22, "/javax/servlet/resources/jsp_2_0.xsd"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v9

    .line 93
    const-string v22, "/javax/servlet/resources/jsp_2_1.xsd"

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 101
    if-nez v9, :cond_0

    const-class v22, Ljavax/servlet/Servlet;

    const-string v23, "javax/servlet/resources/jsp_2_0.xsd"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v9

    .line 102
    :cond_0
    if-nez v10, :cond_1

    const-class v22, Ljavax/servlet/Servlet;

    const-string v23, "javax/servlet/resources/jsp_2_1.xsd"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v10

    .line 105
    .end local v11    # "jsp_page":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    const-string v22, "web-app_2_2.dtd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v5}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 106
    const-string v22, "-//Sun Microsystems, Inc.//DTD Web Application 2.2//EN"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v5}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 107
    const-string v22, "web.dtd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v6}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 108
    const-string v22, "web-app_2_3.dtd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v6}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 109
    const-string v22, "-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v6}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 110
    const-string v22, "XMLSchema.dtd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v12}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 111
    const-string v22, "http://www.w3.org/2001/XMLSchema.dtd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v12}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 112
    const-string v22, "-//W3C//DTD XMLSCHEMA 200102//EN"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v12}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 113
    const-string v22, "jsp_2_0.xsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v9}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 114
    const-string v22, "http://java.sun.com/xml/ns/j2ee/jsp_2_0.xsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v9}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 115
    const-string v22, "http://java.sun.com/xml/ns/javaee/jsp_2_1.xsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v10}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 116
    const-string v22, "j2ee_1_4.xsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v8}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 117
    const-string v22, "http://java.sun.com/xml/ns/j2ee/j2ee_1_4.xsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v8}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 118
    const-string v22, "web-app_2_4.xsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v13}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 119
    const-string v22, "http://java.sun.com/xml/ns/j2ee/web-app_2_4.xsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v13}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 120
    const-string v22, "web-app_2_5.xsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v14}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 121
    const-string v22, "http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v14}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 122
    const-string v22, "web-app_3_0.xsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v15}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 123
    const-string v22, "http://java.sun.com/xml/ns/javaee/web-app_3_0.xsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v15}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 124
    const-string v22, "web-common_3_0.xsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 125
    const-string v22, "http://java.sun.com/xml/ns/javaee/web-common_3_0.xsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 126
    const-string v22, "web-fragment_3_0.xsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 127
    const-string v22, "http://java.sun.com/xml/ns/javaee/web-fragment_3_0.xsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 128
    const-string v22, "xml.xsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 129
    const-string v22, "http://www.w3.org/2001/xml.xsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 130
    const-string v22, "datatypes.dtd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v4}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 131
    const-string v22, "http://www.w3.org/2001/datatypes.dtd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v4}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 132
    const-string v22, "j2ee_web_services_client_1_1.xsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 133
    const-string v22, "http://www.ibm.com/webservices/xsd/j2ee_web_services_client_1_1.xsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 134
    const-string v22, "javaee_web_services_client_1_2.xsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 135
    const-string v22, "http://www.ibm.com/webservices/xsd/javaee_web_services_client_1_2.xsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/webapp/WebDescriptor;->redirect(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;Ljava/net/URL;)V

    .line 136
    return-object v20

    .line 95
    :catch_0
    move-exception v7

    .line 97
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v22, Lorg/eclipse/jetty/webapp/WebDescriptor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v22

    invoke-interface {v0, v7}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    if-nez v9, :cond_2

    const-class v22, Ljavax/servlet/Servlet;

    const-string v23, "javax/servlet/resources/jsp_2_0.xsd"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v9

    .line 102
    :cond_2
    if-nez v10, :cond_1

    const-class v22, Ljavax/servlet/Servlet;

    const-string v23, "javax/servlet/resources/jsp_2_1.xsd"

    const/16 v24, 0x1

    invoke-static/range {v22 .. v24}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v10

    goto/16 :goto_0

    .line 101
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v22

    if-nez v9, :cond_3

    const-class v23, Ljavax/servlet/Servlet;

    const-string v24, "javax/servlet/resources/jsp_2_0.xsd"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v9

    .line 102
    :cond_3
    if-nez v10, :cond_4

    const-class v23, Ljavax/servlet/Servlet;

    const-string v24, "javax/servlet/resources/jsp_2_1.xsd"

    const/16 v25, 0x1

    invoke-static/range {v23 .. v25}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v10

    :cond_4
    throw v22
.end method

.method public parse()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 148
    invoke-super {p0}, Lorg/eclipse/jetty/webapp/Descriptor;->parse()V

    .line 149
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebDescriptor;->processVersion()V

    .line 150
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebDescriptor;->processOrdering()V

    .line 151
    return-void
.end method

.method public processOrdering()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 213
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_root:Lorg/eclipse/jetty/xml/XmlParser$Node;

    const-string v5, "absolute-ordering"

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v3

    .line 214
    .local v3, "ordering":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-nez v3, :cond_1

    .line 236
    :cond_0
    return-void

    .line 217
    :cond_1
    iput-boolean v6, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_isOrdered:Z

    .line 221
    invoke-virtual {v3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 222
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 223
    .local v1, "node":Lorg/eclipse/jetty/xml/XmlParser$Node;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 226
    .local v2, "o":Ljava/lang/Object;
    instance-of v4, v2, Lorg/eclipse/jetty/xml/XmlParser$Node;

    if-eqz v4, :cond_2

    move-object v1, v2

    .line 227
    check-cast v1, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 229
    invoke-virtual {v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "others"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 231
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_ordering:Ljava/util/List;

    const-string v5, "others"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :cond_3
    invoke-virtual {v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 234
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_ordering:Ljava/util/List;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public processVersion()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 173
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_root:Lorg/eclipse/jetty/xml/XmlParser$Node;

    const-string v5, "version"

    const-string v6, "DTD"

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "version":Ljava/lang/String;
    const-string v4, "DTD"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    iput v7, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_majorVersion:I

    .line 177
    const/4 v4, 0x3

    iput v4, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_minorVersion:I

    .line 178
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_parser:Lorg/eclipse/jetty/xml/XmlParser;

    invoke-virtual {v4}, Lorg/eclipse/jetty/xml/XmlParser;->getDTD()Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "dtd":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v4, "web-app_2_2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_0

    .line 181
    iput v7, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_majorVersion:I

    .line 182
    iput v7, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_minorVersion:I

    .line 195
    .end local v1    # "dtd":Ljava/lang/String;
    :cond_0
    :goto_0
    iget v4, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_majorVersion:I

    if-ge v4, v7, :cond_3

    iget v4, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_minorVersion:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_3

    .line 196
    sget-object v4, Lorg/eclipse/jetty/webapp/MetaDataComplete;->True:Lorg/eclipse/jetty/webapp/MetaDataComplete;

    iput-object v4, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_metaDataComplete:Lorg/eclipse/jetty/webapp/MetaDataComplete;

    .line 206
    :goto_1
    sget-object v4, Lorg/eclipse/jetty/webapp/WebDescriptor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 207
    sget-object v4, Lorg/eclipse/jetty/webapp/WebDescriptor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_xml:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": Calculated metadatacomplete = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_metaDataComplete:Lorg/eclipse/jetty/webapp/MetaDataComplete;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    :cond_1
    return-void

    .line 187
    :cond_2
    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 188
    .local v0, "dot":I
    if-lez v0, :cond_0

    .line 190
    invoke-virtual {v3, v8, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_majorVersion:I

    .line 191
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_minorVersion:I

    goto :goto_0

    .line 199
    .end local v0    # "dot":I
    :cond_3
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_root:Lorg/eclipse/jetty/xml/XmlParser$Node;

    const-string v5, "metadata-complete"

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "s":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 201
    sget-object v4, Lorg/eclipse/jetty/webapp/MetaDataComplete;->NotSet:Lorg/eclipse/jetty/webapp/MetaDataComplete;

    iput-object v4, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_metaDataComplete:Lorg/eclipse/jetty/webapp/MetaDataComplete;

    goto :goto_1

    .line 203
    :cond_4
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lorg/eclipse/jetty/webapp/MetaDataComplete;->True:Lorg/eclipse/jetty/webapp/MetaDataComplete;

    :goto_2
    iput-object v4, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_metaDataComplete:Lorg/eclipse/jetty/webapp/MetaDataComplete;

    goto :goto_1

    :cond_5
    sget-object v4, Lorg/eclipse/jetty/webapp/MetaDataComplete;->False:Lorg/eclipse/jetty/webapp/MetaDataComplete;

    goto :goto_2
.end method

.method public setDistributable(Z)V
    .locals 0
    .param p1, "distributable"    # Z

    .prologue
    .line 251
    iput-boolean p1, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_distributable:Z

    .line 252
    return-void
.end method

.method public setValidating(Z)V
    .locals 0
    .param p1, "validating"    # Z

    .prologue
    .line 261
    iput-boolean p1, p0, Lorg/eclipse/jetty/webapp/WebDescriptor;->_validating:Z

    .line 262
    return-void
.end method
