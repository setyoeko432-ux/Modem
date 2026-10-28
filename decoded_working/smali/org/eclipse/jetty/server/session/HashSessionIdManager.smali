.class public Lorg/eclipse/jetty/server/session/HashSessionIdManager;
.super Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;
.source "HashSessionIdManager.java"


# instance fields
.field private final _sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljavax/servlet/http/HttpSession;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionIdManager;->_sessions:Ljava/util/Map;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .locals 1
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;-><init>(Ljava/util/Random;)V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionIdManager;->_sessions:Ljava/util/Map;

    .line 54
    return-void
.end method


# virtual methods
.method public addSession(Ljavax/servlet/http/HttpSession;)V
    .locals 4
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 149
    invoke-interface {p1}, Ljavax/servlet/http/HttpSession;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/server/session/HashSessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "id":Ljava/lang/String;
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 152
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljavax/servlet/http/HttpSession;>;"
    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/server/session/HashSessionIdManager;->_sessions:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 155
    .local v2, "sessions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/ref/WeakReference<Ljavax/servlet/http/HttpSession;>;>;"
    if-nez v2, :cond_0

    .line 157
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "sessions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/ref/WeakReference<Ljavax/servlet/http/HttpSession;>;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 158
    .restart local v2    # "sessions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/ref/WeakReference<Ljavax/servlet/http/HttpSession;>;>;"
    iget-object v3, p0, Lorg/eclipse/jetty/server/session/HashSessionIdManager;->_sessions:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    monitor-exit p0

    .line 162
    return-void

    .line 161
    .end local v2    # "sessions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/ref/WeakReference<Ljavax/servlet/http/HttpSession;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method protected doStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 120
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->doStart()V

    .line 121
    return-void
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionIdManager;->_sessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 128
    invoke-super {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->doStop()V

    .line 129
    return-void
.end method

.method public getClusterId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "nodeId"    # Ljava/lang/String;

    .prologue
    .line 112
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 113
    .local v0, "dot":I
    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "nodeId":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public getNodeId(Ljava/lang/String;Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;
    .locals 3
    .param p1, "clusterId"    # Ljava/lang/String;
    .param p2, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    const/16 v2, 0x2e

    .line 94
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 95
    .local v0, "worker":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    .end local p1    # "clusterId":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object p1

    .line 94
    .end local v0    # "worker":Ljava/lang/String;
    .restart local p1    # "clusterId":Ljava/lang/String;
    :cond_1
    const-string v1, "org.eclipse.jetty.ajp.JVMRoute"

    invoke-interface {p2, v1}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0

    .line 98
    .restart local v0    # "worker":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/HashSessionIdManager;->_workerName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/HashSessionIdManager;->_workerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public getSession(Ljava/lang/String;)Ljava/util/Collection;
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljavax/servlet/http/HttpSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v4, "sessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/servlet/http/HttpSession;>;"
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/HashSessionIdManager;->_sessions:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 73
    .local v2, "refs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/ref/WeakReference<Ljavax/servlet/http/HttpSession;>;>;"
    if-eqz v2, :cond_1

    .line 75
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 77
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljavax/servlet/http/HttpSession;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/http/HttpSession;

    .line 78
    .local v3, "session":Ljavax/servlet/http/HttpSession;
    if-eqz v3, :cond_0

    .line 79
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 82
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljavax/servlet/http/HttpSession;>;"
    .end local v3    # "session":Ljavax/servlet/http/HttpSession;
    :cond_1
    return-object v4
.end method

.method public getSessions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionIdManager;->_sessions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public idInUse(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 137
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/HashSessionIdManager;->_sessions:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll(Ljava/lang/String;)V
    .locals 5
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 205
    monitor-enter p0

    .line 207
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/session/HashSessionIdManager;->_sessions:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 208
    .local v3, "sessions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/WeakReference<Ljavax/servlet/http/HttpSession;>;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    if-eqz v3, :cond_2

    .line 212
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 214
    .local v1, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljavax/servlet/http/HttpSession;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/server/session/AbstractSession;

    .line 215
    .local v2, "session":Lorg/eclipse/jetty/server/session/AbstractSession;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/session/AbstractSession;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 216
    invoke-virtual {v2}, Lorg/eclipse/jetty/server/session/AbstractSession;->invalidate()V

    goto :goto_0

    .line 208
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljavax/servlet/http/HttpSession;>;"
    .end local v2    # "session":Lorg/eclipse/jetty/server/session/AbstractSession;
    .end local v3    # "sessions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/WeakReference<Ljavax/servlet/http/HttpSession;>;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 218
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v3    # "sessions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/WeakReference<Ljavax/servlet/http/HttpSession;>;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Collection;->clear()V

    .line 220
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public removeSession(Ljavax/servlet/http/HttpSession;)V
    .locals 6
    .param p1, "session"    # Ljavax/servlet/http/HttpSession;

    .prologue
    .line 170
    invoke-interface {p1}, Ljavax/servlet/http/HttpSession;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/eclipse/jetty/server/session/HashSessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "id":Ljava/lang/String;
    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/HashSessionIdManager;->_sessions:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    .line 175
    .local v4, "sessions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/WeakReference<Ljavax/servlet/http/HttpSession;>;>;"
    if-eqz v4, :cond_3

    .line 177
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Ljavax/servlet/http/HttpSession;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 179
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 180
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljavax/servlet/http/HttpSession;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/http/HttpSession;

    .line 181
    .local v3, "s":Ljavax/servlet/http/HttpSession;
    if-nez v3, :cond_1

    .line 183
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 195
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Ljavax/servlet/http/HttpSession;>;>;"
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljavax/servlet/http/HttpSession;>;"
    .end local v3    # "s":Ljavax/servlet/http/HttpSession;
    .end local v4    # "sessions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/WeakReference<Ljavax/servlet/http/HttpSession;>;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 186
    .restart local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Ljavax/servlet/http/HttpSession;>;>;"
    .restart local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljavax/servlet/http/HttpSession;>;"
    .restart local v3    # "s":Ljavax/servlet/http/HttpSession;
    .restart local v4    # "sessions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/ref/WeakReference<Ljavax/servlet/http/HttpSession;>;>;"
    :cond_1
    if-ne v3, p1, :cond_0

    .line 188
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 192
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljavax/servlet/http/HttpSession;>;"
    .end local v3    # "s":Ljavax/servlet/http/HttpSession;
    :cond_2
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 193
    iget-object v5, p0, Lorg/eclipse/jetty/server/session/HashSessionIdManager;->_sessions:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Ljavax/servlet/http/HttpSession;>;>;"
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    return-void
.end method
