.class public abstract Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "AbstractSessionIdManager.java"

# interfaces
.implements Lorg/eclipse/jetty/server/SessionIdManager;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final __NEW_SESSION_ID:Ljava/lang/String; = "org.eclipse.jetty.server.newSessionId"


# instance fields
.field protected _random:Ljava/util/Random;

.field protected _reseed:J

.field protected _weakRandom:Z

.field protected _workerName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 40
    const-wide/32 v0, 0x186a0

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_reseed:J

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .locals 2
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 40
    const-wide/32 v0, 0x186a0

    iput-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_reseed:J

    .line 50
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    .line 51
    return-void
.end method


# virtual methods
.method protected doStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->initRandom()V

    .line 186
    return-void
.end method

.method protected doStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 192
    return-void
.end method

.method public getRandom()Ljava/util/Random;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    return-object v0
.end method

.method public getReseed()J
    .locals 2

    .prologue
    .line 60
    iget-wide v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_reseed:J

    return-wide v0
.end method

.method public getWorkerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    return-object v0
.end method

.method public initRandom()V
    .locals 6

    .prologue
    .line 202
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    if-nez v1, :cond_0

    .line 206
    :try_start_0
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Could not generate SecureRandom for session-id randomness"

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    .line 212
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_weakRandom:Z

    goto :goto_0

    .line 216
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    iget-object v2, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    int-to-long v4, v4

    xor-long/2addr v2, v4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    xor-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Random;->setSeed(J)V

    goto :goto_0
.end method

.method public newSessionId(Ljavax/servlet/http/HttpServletRequest;J)Ljava/lang/String;
    .locals 14
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "created"    # J

    .prologue
    .line 119
    monitor-enter p0

    .line 121
    if-eqz p1, :cond_1

    .line 124
    :try_start_0
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestedSessionId()Ljava/lang/String;

    move-result-object v7

    .line 125
    .local v7, "requested_id":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 127
    invoke-virtual {p0, v7}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->getClusterId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "cluster_id":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 129
    monitor-exit p0

    .line 177
    .end local v0    # "cluster_id":Ljava/lang/String;
    .end local v7    # "requested_id":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 133
    .restart local v7    # "requested_id":Ljava/lang/String;
    :cond_0
    const-string v9, "org.eclipse.jetty.server.newSessionId"

    invoke-interface {p1, v9}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 134
    .local v2, "new_id":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 135
    monitor-exit p0

    move-object v0, v2

    goto :goto_0

    .line 139
    .end local v2    # "new_id":Ljava/lang/String;
    .end local v7    # "requested_id":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 140
    .local v1, "id":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->idInUse(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 142
    :cond_3
    iget-boolean v9, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_weakRandom:Z

    if-eqz v9, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v9

    int-to-long v9, v9

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v11

    xor-long/2addr v9, v11

    iget-object v11, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v11}, Ljava/util/Random;->nextInt()I

    move-result v11

    int-to-long v11, v11

    xor-long/2addr v9, v11

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v11

    int-to-long v11, v11

    const/16 v13, 0x20

    shl-long/2addr v11, v13

    xor-long v3, v9, v11

    .line 145
    .local v3, "r0":J
    :goto_2
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-gez v9, :cond_4

    .line 146
    neg-long v3, v3

    .line 149
    :cond_4
    iget-wide v9, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_reseed:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_5

    iget-wide v9, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_reseed:J

    rem-long v9, v3, v9

    const-wide/16 v11, 0x1

    cmp-long v9, v9, v11

    if-nez v9, :cond_5

    .line 151
    sget-object v9, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v10, "Reseeding {}"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p0, v11, v12

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v9, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    instance-of v9, v9, Ljava/security/SecureRandom;

    if-eqz v9, :cond_8

    .line 154
    iget-object v8, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    check-cast v8, Ljava/security/SecureRandom;

    .line 155
    .local v8, "secure":Ljava/security/SecureRandom;
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 163
    .end local v8    # "secure":Ljava/security/SecureRandom;
    :cond_5
    :goto_3
    iget-boolean v9, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_weakRandom:Z

    if-eqz v9, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v9

    int-to-long v9, v9

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v11

    xor-long/2addr v9, v11

    iget-object v11, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v11}, Ljava/util/Random;->nextInt()I

    move-result v11

    int-to-long v11, v11

    xor-long/2addr v9, v11

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v11

    int-to-long v11, v11

    const/16 v13, 0x20

    shl-long/2addr v11, v13

    xor-long v5, v9, v11

    .line 166
    .local v5, "r1":J
    :goto_4
    const-wide/16 v9, 0x0

    cmp-long v9, v5, v9

    if-gez v9, :cond_6

    .line 167
    neg-long v5, v5

    .line 168
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v10, 0x24

    invoke-static {v3, v4, v10}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/16 v10, 0x24

    invoke-static {v5, v6, v10}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    iget-object v9, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 173
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 142
    .end local v3    # "r0":J
    .end local v5    # "r1":J
    :cond_7
    iget-object v9, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    goto/16 :goto_2

    .line 159
    .restart local v3    # "r0":J
    :cond_8
    iget-object v9, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    iget-object v10, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v10}, Ljava/util/Random;->nextLong()J

    move-result-wide v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    xor-long/2addr v10, v12

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v12

    int-to-long v12, v12

    xor-long/2addr v10, v12

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v12

    xor-long/2addr v10, v12

    invoke-virtual {v9, v10, v11}, Ljava/util/Random;->setSeed(J)V

    goto/16 :goto_3

    .line 178
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "r0":J
    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 163
    .restart local v1    # "id":Ljava/lang/String;
    .restart local v3    # "r0":J
    :cond_9
    :try_start_1
    iget-object v9, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextLong()J

    move-result-wide v5

    goto :goto_4

    .line 176
    .end local v3    # "r0":J
    :cond_a
    const-string v9, "org.eclipse.jetty.server.newSessionId"

    invoke-interface {p1, v9, v1}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    goto/16 :goto_0
.end method

.method public declared-synchronized setRandom(Ljava/util/Random;)V
    .locals 1
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_random:Ljava/util/Random;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_weakRandom:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setReseed(J)V
    .locals 0
    .param p1, "reseed"    # J

    .prologue
    .line 69
    iput-wide p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_reseed:J

    .line 70
    return-void
.end method

.method public setWorkerName(Ljava/lang/String;)V
    .locals 2
    .param p1, "workerName"    # Ljava/lang/String;

    .prologue
    .line 93
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name cannot contain \'.\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/server/session/AbstractSessionIdManager;->_workerName:Ljava/lang/String;

    .line 96
    return-void
.end method
