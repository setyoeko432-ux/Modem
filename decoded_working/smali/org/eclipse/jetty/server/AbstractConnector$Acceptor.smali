.class Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;
.super Ljava/lang/Object;
.source "AbstractConnector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/AbstractConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Acceptor"
.end annotation


# instance fields
.field _acceptor:I

.field final synthetic this$0:Lorg/eclipse/jetty/server/AbstractConnector;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/AbstractConnector;I)V
    .locals 1
    .param p2, "id"    # I

    .prologue
    .line 911
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;->this$0:Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 908
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;->_acceptor:I

    .line 912
    iput p2, p0, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;->_acceptor:I

    .line 913
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 918
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 920
    .local v0, "current":Ljava/lang/Thread;
    iget-object v6, p0, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;->this$0:Lorg/eclipse/jetty/server/AbstractConnector;

    monitor-enter v6

    .line 922
    :try_start_0
    iget-object v5, p0, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;->this$0:Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-static {v5}, Lorg/eclipse/jetty/server/AbstractConnector;->access$000(Lorg/eclipse/jetty/server/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v5

    if-nez v5, :cond_0

    .line 923
    monitor-exit v6

    .line 970
    :goto_0
    return-void

    .line 925
    :cond_0
    iget-object v5, p0, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;->this$0:Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-static {v5}, Lorg/eclipse/jetty/server/AbstractConnector;->access$000(Lorg/eclipse/jetty/server/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v5

    iget v7, p0, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;->_acceptor:I

    aput-object v0, v5, v7

    .line 926
    iget-object v5, p0, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;->this$0:Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-static {v5}, Lorg/eclipse/jetty/server/AbstractConnector;->access$000(Lorg/eclipse/jetty/server/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v5

    iget v7, p0, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;->_acceptor:I

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    .line 927
    .local v2, "name":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " Acceptor"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;->_acceptor:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;->this$0:Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 928
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 929
    invoke-virtual {v0}, Ljava/lang/Thread;->getPriority()I

    move-result v3

    .line 933
    .local v3, "old_priority":I
    :try_start_1
    iget-object v5, p0, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;->this$0:Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-static {v5}, Lorg/eclipse/jetty/server/AbstractConnector;->access$100(Lorg/eclipse/jetty/server/AbstractConnector;)I

    move-result v5

    sub-int v5, v3, v5

    invoke-virtual {v0, v5}, Ljava/lang/Thread;->setPriority(I)V

    .line 934
    :goto_1
    iget-object v5, p0, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;->this$0:Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractConnector;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;->this$0:Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/AbstractConnector;->getConnection()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    if-eqz v5, :cond_2

    .line 938
    :try_start_2
    iget-object v5, p0, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;->this$0:Lorg/eclipse/jetty/server/AbstractConnector;

    iget v6, p0, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;->_acceptor:I

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/server/AbstractConnector;->accept(I)V
    :try_end_2
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 940
    :catch_0
    move-exception v1

    .line 942
    .local v1, "e":Lorg/eclipse/jetty/io/EofException;
    :try_start_3
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 961
    .end local v1    # "e":Lorg/eclipse/jetty/io/EofException;
    :catchall_0
    move-exception v5

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 962
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 964
    iget-object v6, p0, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;->this$0:Lorg/eclipse/jetty/server/AbstractConnector;

    monitor-enter v6

    .line 966
    :try_start_4
    iget-object v7, p0, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;->this$0:Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-static {v7}, Lorg/eclipse/jetty/server/AbstractConnector;->access$000(Lorg/eclipse/jetty/server/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 967
    iget-object v7, p0, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;->this$0:Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-static {v7}, Lorg/eclipse/jetty/server/AbstractConnector;->access$000(Lorg/eclipse/jetty/server/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v7

    iget v8, p0, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;->_acceptor:I

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 968
    :cond_1
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v5

    .line 928
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "old_priority":I
    :catchall_1
    move-exception v5

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5

    .line 944
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "old_priority":I
    :catch_1
    move-exception v1

    .line 946
    .local v1, "e":Ljava/io/IOException;
    :try_start_6
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 948
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 951
    .local v4, "x":Ljava/lang/InterruptedException;
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    invoke-interface {v5, v4}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 953
    .end local v4    # "x":Ljava/lang/InterruptedException;
    :catch_3
    move-exception v1

    .line 955
    .local v1, "e":Ljava/lang/Throwable;
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractConnector;->access$200()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v5

    invoke-interface {v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 961
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_2
    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 962
    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 964
    iget-object v6, p0, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;->this$0:Lorg/eclipse/jetty/server/AbstractConnector;

    monitor-enter v6

    .line 966
    :try_start_7
    iget-object v5, p0, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;->this$0:Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-static {v5}, Lorg/eclipse/jetty/server/AbstractConnector;->access$000(Lorg/eclipse/jetty/server/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 967
    iget-object v5, p0, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;->this$0:Lorg/eclipse/jetty/server/AbstractConnector;

    invoke-static {v5}, Lorg/eclipse/jetty/server/AbstractConnector;->access$000(Lorg/eclipse/jetty/server/AbstractConnector;)[Ljava/lang/Thread;

    move-result-object v5

    iget v7, p0, Lorg/eclipse/jetty/server/AbstractConnector$Acceptor;->_acceptor:I

    const/4 v8, 0x0

    aput-object v8, v5, v7

    .line 968
    :cond_3
    monitor-exit v6

    goto/16 :goto_0

    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v5

    :catchall_3
    move-exception v5

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v5
.end method
