.class public Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;
.super Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
.source "ServletContextHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/ServletContextHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Context"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/servlet/ServletContextHandler;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;-><init>(Lorg/eclipse/jetty/server/handler/ContextHandler;)V

    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Ljava/lang/Class;)Ljavax/servlet/FilterRegistration$Dynamic;
    .locals 3
    .param p1, "filterName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Filter;",
            ">;)",
            "Ljavax/servlet/FilterRegistration$Dynamic;"
        }
    .end annotation

    .prologue
    .line 829
    .local p2, "filterClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/servlet/Filter;>;"
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 830
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 832
    :cond_0
    iget-boolean v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v2, :cond_1

    .line 833
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 835
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 836
    .local v0, "handler":Lorg/eclipse/jetty/servlet/ServletHandler;
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilter(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 837
    .local v1, "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    if-nez v1, :cond_2

    .line 840
    sget-object v2, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 841
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V

    .line 842
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 843
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilter(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 844
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Ljavax/servlet/FilterRegistration$Dynamic;

    move-result-object v2

    .line 853
    :goto_0
    return-object v2

    .line 846
    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_3

    .line 849
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 850
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Ljavax/servlet/FilterRegistration$Dynamic;

    move-result-object v2

    goto :goto_0

    .line 853
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addFilter(Ljava/lang/String;Ljava/lang/String;)Ljavax/servlet/FilterRegistration$Dynamic;
    .locals 3
    .param p1, "filterName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 863
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 864
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 866
    :cond_0
    iget-boolean v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v2, :cond_1

    .line 867
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 869
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 870
    .local v0, "handler":Lorg/eclipse/jetty/servlet/ServletHandler;
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilter(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 871
    .local v1, "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    if-nez v1, :cond_2

    .line 874
    sget-object v2, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 875
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V

    .line 876
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setClassName(Ljava/lang/String;)V

    .line 877
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilter(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 878
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Ljavax/servlet/FilterRegistration$Dynamic;

    move-result-object v2

    .line 887
    :goto_0
    return-object v2

    .line 880
    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_3

    .line 883
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setClassName(Ljava/lang/String;)V

    .line 884
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Ljavax/servlet/FilterRegistration$Dynamic;

    move-result-object v2

    goto :goto_0

    .line 887
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addFilter(Ljava/lang/String;Ljavax/servlet/Filter;)Ljavax/servlet/FilterRegistration$Dynamic;
    .locals 3
    .param p1, "filterName"    # Ljava/lang/String;
    .param p2, "filter"    # Ljavax/servlet/Filter;

    .prologue
    .line 898
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 899
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 901
    :cond_0
    iget-boolean v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v2, :cond_1

    .line 902
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 904
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 905
    .local v0, "handler":Lorg/eclipse/jetty/servlet/ServletHandler;
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilter(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 906
    .local v1, "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    if-nez v1, :cond_2

    .line 909
    sget-object v2, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 910
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setFilter(Ljavax/servlet/Filter;)V

    .line 912
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilter(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 913
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Ljavax/servlet/FilterRegistration$Dynamic;

    move-result-object v2

    .line 923
    :goto_0
    return-object v2

    .line 916
    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_3

    .line 919
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setFilter(Ljavax/servlet/Filter;)V

    .line 920
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Ljavax/servlet/FilterRegistration$Dynamic;

    move-result-object v2

    goto :goto_0

    .line 923
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addListener(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/EventListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1215
    .local p1, "listenerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/EventListener;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1216
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1217
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 1218
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1219
    :cond_1
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->addListener(Ljava/lang/Class;)V

    .line 1220
    return-void
.end method

.method public addListener(Ljava/lang/String;)V
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 1193
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1194
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1195
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 1196
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1197
    :cond_1
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->addListener(Ljava/lang/String;)V

    .line 1198
    return-void
.end method

.method public addListener(Ljava/util/EventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 1204
    .local p1, "t":Ljava/util/EventListener;, "TT;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1205
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1206
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 1207
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1208
    :cond_1
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->addListener(Ljava/util/EventListener;)V

    .line 1209
    return-void
.end method

.method public addServlet(Ljava/lang/String;Ljava/lang/Class;)Ljavax/servlet/ServletRegistration$Dynamic;
    .locals 3
    .param p1, "servletName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Servlet;",
            ">;)",
            "Ljavax/servlet/ServletRegistration$Dynamic;"
        }
    .end annotation

    .prologue
    .line 933
    .local p2, "servletClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/servlet/Servlet;>;"
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 934
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 936
    :cond_0
    iget-boolean v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v2, :cond_1

    .line 937
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 939
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 940
    .local v0, "handler":Lorg/eclipse/jetty/servlet/ServletHandler;
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 941
    .local v1, "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    if-nez v1, :cond_2

    .line 944
    sget-object v2, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->newServletHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 945
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 946
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 947
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServlet(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 948
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->dynamicHolderAdded(Lorg/eclipse/jetty/servlet/ServletHolder;)Ljavax/servlet/ServletRegistration$Dynamic;

    move-result-object v2

    .line 958
    :goto_0
    return-object v2

    .line 952
    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_3

    .line 954
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 955
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Ljavax/servlet/ServletRegistration$Dynamic;

    move-result-object v2

    goto :goto_0

    .line 958
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addServlet(Ljava/lang/String;Ljava/lang/String;)Ljavax/servlet/ServletRegistration$Dynamic;
    .locals 3
    .param p1, "servletName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 968
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 969
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 971
    :cond_0
    iget-boolean v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v2, :cond_1

    .line 972
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 975
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 976
    .local v0, "handler":Lorg/eclipse/jetty/servlet/ServletHandler;
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 977
    .local v1, "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    if-nez v1, :cond_2

    .line 980
    sget-object v2, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->newServletHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 981
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 982
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 983
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServlet(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 984
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->dynamicHolderAdded(Lorg/eclipse/jetty/servlet/ServletHolder;)Ljavax/servlet/ServletRegistration$Dynamic;

    move-result-object v2

    .line 994
    :goto_0
    return-object v2

    .line 988
    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_3

    .line 990
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 991
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Ljavax/servlet/ServletRegistration$Dynamic;

    move-result-object v2

    goto :goto_0

    .line 994
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public addServlet(Ljava/lang/String;Ljavax/servlet/Servlet;)Ljavax/servlet/ServletRegistration$Dynamic;
    .locals 3
    .param p1, "servletName"    # Ljava/lang/String;
    .param p2, "servlet"    # Ljavax/servlet/Servlet;

    .prologue
    .line 1004
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1005
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 1007
    :cond_0
    iget-boolean v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v2, :cond_1

    .line 1008
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 1010
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v0

    .line 1011
    .local v0, "handler":Lorg/eclipse/jetty/servlet/ServletHandler;
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 1012
    .local v1, "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    if-nez v1, :cond_2

    .line 1014
    sget-object v2, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->newServletHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 1015
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setServlet(Ljavax/servlet/Servlet;)V

    .line 1017
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServlet(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 1018
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->dynamicHolderAdded(Lorg/eclipse/jetty/servlet/ServletHolder;)Ljavax/servlet/ServletRegistration$Dynamic;

    move-result-object v2

    .line 1028
    :goto_0
    return-object v2

    .line 1022
    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_3

    .line 1024
    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setServlet(Ljavax/servlet/Servlet;)V

    .line 1025
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Ljavax/servlet/ServletRegistration$Dynamic;

    move-result-object v2

    goto :goto_0

    .line 1028
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public createFilter(Ljava/lang/Class;)Ljavax/servlet/Filter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavax/servlet/Filter;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 1051
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/Filter;

    .line 1052
    .local v2, "f":Ljavax/servlet/Filter;, "TT;"
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v4, v4, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 1054
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v4, v4, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;

    .line 1055
    .local v0, "decorator":Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;
    invoke-interface {v0, v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;->decorateFilterInstance(Ljavax/servlet/Filter;)Ljavax/servlet/Filter;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1052
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1059
    .end local v0    # "decorator":Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;
    .end local v2    # "f":Ljavax/servlet/Filter;, "TT;"
    .end local v3    # "i":I
    :catch_0
    move-exception v1

    .line 1061
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v4, Ljavax/servlet/ServletException;

    invoke-direct {v4, v1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1063
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 1065
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljavax/servlet/ServletException;

    invoke-direct {v4, v1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1057
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .restart local v2    # "f":Ljavax/servlet/Filter;, "TT;"
    .restart local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method public createListener(Ljava/lang/Class;)Ljava/util/EventListener;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/util/EventListener;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 1227
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->createListener(Ljava/lang/Class;)Ljava/util/EventListener;

    move-result-object v3

    .line 1229
    .local v3, "l":Ljava/util/EventListener;, "TT;"
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v4, v4, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 1231
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v4, v4, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;

    .line 1232
    .local v0, "decorator":Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;
    invoke-interface {v0, v3}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;->decorateListenerInstance(Ljava/util/EventListener;)Ljava/util/EventListener;
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1229
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1236
    .end local v0    # "decorator":Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;
    .end local v2    # "i":I
    .end local v3    # "l":Ljava/util/EventListener;, "TT;"
    :catch_0
    move-exception v1

    .line 1238
    .local v1, "e":Ljavax/servlet/ServletException;
    throw v1

    .line 1240
    .end local v1    # "e":Ljavax/servlet/ServletException;
    :catch_1
    move-exception v1

    .line 1242
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljavax/servlet/ServletException;

    invoke-direct {v4, v1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1234
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    .restart local v3    # "l":Ljava/util/EventListener;, "TT;"
    :cond_0
    return-object v3
.end method

.method public createServlet(Ljava/lang/Class;)Ljavax/servlet/Servlet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljavax/servlet/Servlet;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 1075
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/Servlet;

    .line 1076
    .local v3, "s":Ljavax/servlet/Servlet;, "TT;"
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v4, v4, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 1078
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v4, v4, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_decorators:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;

    .line 1079
    .local v0, "decorator":Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;
    invoke-interface {v0, v3}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;->decorateServletInstance(Ljavax/servlet/Servlet;)Ljavax/servlet/Servlet;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1076
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1083
    .end local v0    # "decorator":Lorg/eclipse/jetty/servlet/ServletContextHandler$Decorator;
    .end local v2    # "i":I
    .end local v3    # "s":Ljavax/servlet/Servlet;, "TT;"
    :catch_0
    move-exception v1

    .line 1085
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v4, Ljavax/servlet/ServletException;

    invoke-direct {v4, v1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1087
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 1089
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljavax/servlet/ServletException;

    invoke-direct {v4, v1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1081
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .restart local v2    # "i":I
    .restart local v3    # "s":Ljavax/servlet/Servlet;, "TT;"
    :cond_0
    return-object v3
.end method

.method public varargs declareRoles([Ljava/lang/String;)V
    .locals 1
    .param p1, "roleNames"    # [Ljava/lang/String;

    .prologue
    .line 1263
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1264
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1265
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 1266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1267
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->addRoles([Ljava/lang/String;)V

    .line 1270
    return-void
.end method

.method public getDefaultSessionTrackingModes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/servlet/SessionTrackingMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1096
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    if-eqz v0, :cond_0

    .line 1097
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionManager;->getDefaultSessionTrackingModes()Ljava/util/Set;

    move-result-object v0

    .line 1098
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEffectiveSessionTrackingModes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljavax/servlet/SessionTrackingMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1104
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionManager;->getEffectiveSessionTrackingModes()Ljava/util/Set;

    move-result-object v0

    .line 1106
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilterRegistration(Ljava/lang/String;)Ljavax/servlet/FilterRegistration;
    .locals 2
    .param p1, "filterName"    # Ljava/lang/String;

    .prologue
    .line 1112
    iget-boolean v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v1, :cond_0

    .line 1113
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 1115
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilter(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 1116
    .local v0, "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Ljavax/servlet/FilterRegistration$Dynamic;

    move-result-object v1

    goto :goto_0
.end method

.method public getFilterRegistrations()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljavax/servlet/FilterRegistration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1122
    iget-boolean v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v7, :cond_0

    .line 1123
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v7}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v7

    .line 1125
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1126
    .local v6, "registrations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljavax/servlet/FilterRegistration;>;"
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v1

    .line 1127
    .local v1, "handler":Lorg/eclipse/jetty/servlet/ServletHandler;
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v3

    .line 1128
    .local v3, "holders":[Lorg/eclipse/jetty/servlet/FilterHolder;
    if-eqz v3, :cond_1

    .line 1130
    move-object v0, v3

    .local v0, "arr$":[Lorg/eclipse/jetty/servlet/FilterHolder;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 1131
    .local v2, "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/FilterHolder;->getRegistration()Ljavax/servlet/FilterRegistration$Dynamic;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1133
    .end local v0    # "arr$":[Lorg/eclipse/jetty/servlet/FilterHolder;
    .end local v2    # "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    return-object v6
.end method

.method public getJspConfigDescriptor()Ljavax/servlet/descriptor/JspConfigDescriptor;
    .locals 1

    .prologue
    .line 1250
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_jspConfig:Ljavax/servlet/descriptor/JspConfigDescriptor;

    return-object v0
.end method

.method public getNamedDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 813
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    .line 814
    .local v0, "context":Lorg/eclipse/jetty/server/handler/ContextHandler;
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v3, v3, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    if-nez v3, :cond_1

    .line 819
    :cond_0
    :goto_0
    return-object v2

    .line 816
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v3, v3, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 817
    .local v1, "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 819
    new-instance v2, Lorg/eclipse/jetty/server/Dispatcher;

    invoke-direct {v2, v0, p1}, Lorg/eclipse/jetty/server/Dispatcher;-><init>(Lorg/eclipse/jetty/server/handler/ContextHandler;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getServletRegistration(Ljava/lang/String;)Ljavax/servlet/ServletRegistration;
    .locals 2
    .param p1, "servletName"    # Ljava/lang/String;

    .prologue
    .line 1139
    iget-boolean v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v1, :cond_0

    .line 1140
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 1142
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    .line 1143
    .local v0, "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    if-nez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Ljavax/servlet/ServletRegistration$Dynamic;

    move-result-object v1

    goto :goto_0
.end method

.method public getServletRegistrations()Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljavax/servlet/ServletRegistration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1149
    iget-boolean v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v7, :cond_0

    .line 1150
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v7}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v7

    .line 1152
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1153
    .local v6, "registrations":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljavax/servlet/ServletRegistration;>;"
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v1

    .line 1154
    .local v1, "handler":Lorg/eclipse/jetty/servlet/ServletHandler;
    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v3

    .line 1155
    .local v3, "holders":[Lorg/eclipse/jetty/servlet/ServletHolder;
    if-eqz v3, :cond_1

    .line 1157
    move-object v0, v3

    .local v0, "arr$":[Lorg/eclipse/jetty/servlet/ServletHolder;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 1158
    .local v2, "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Ljavax/servlet/ServletRegistration$Dynamic;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1160
    .end local v0    # "arr$":[Lorg/eclipse/jetty/servlet/ServletHolder;
    .end local v2    # "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_1
    return-object v6
.end method

.method public getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;
    .locals 1

    .prologue
    .line 1167
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_0

    .line 1168
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1170
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    if-eqz v0, :cond_1

    .line 1171
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v0

    .line 1172
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInitParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1036
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1037
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1039
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 1040
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1042
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setJspConfigDescriptor(Ljavax/servlet/descriptor/JspConfigDescriptor;)V
    .locals 1
    .param p1, "d"    # Ljavax/servlet/descriptor/JspConfigDescriptor;

    .prologue
    .line 1256
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iput-object p1, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_jspConfig:Ljavax/servlet/descriptor/JspConfigDescriptor;

    .line 1257
    return-void
.end method

.method public setSessionTrackingModes(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljavax/servlet/SessionTrackingMode;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1179
    .local p1, "sessionTrackingModes":Ljava/util/Set;, "Ljava/util/Set<Ljavax/servlet/SessionTrackingMode;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarting()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1180
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1181
    :cond_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->_enabled:Z

    if-nez v0, :cond_1

    .line 1182
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1185
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    if-eqz v0, :cond_2

    .line 1186
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->this$0:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iget-object v0, v0, Lorg/eclipse/jetty/servlet/ServletContextHandler;->_sessionHandler:Lorg/eclipse/jetty/server/session/SessionHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/server/SessionManager;->setSessionTrackingModes(Ljava/util/Set;)V

    .line 1187
    :cond_2
    return-void
.end method
