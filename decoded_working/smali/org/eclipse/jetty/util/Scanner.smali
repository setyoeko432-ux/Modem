.class public Lorg/eclipse/jetty/util/Scanner;
.super Lorg/eclipse/jetty/util/component/AbstractLifeCycle;
.source "Scanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/Scanner$2;,
        Lorg/eclipse/jetty/util/Scanner$ScanCycleListener;,
        Lorg/eclipse/jetty/util/Scanner$BulkListener;,
        Lorg/eclipse/jetty/util/Scanner$DiscreteListener;,
        Lorg/eclipse/jetty/util/Scanner$ScanListener;,
        Lorg/eclipse/jetty/util/Scanner$Listener;,
        Lorg/eclipse/jetty/util/Scanner$TimeNSize;,
        Lorg/eclipse/jetty/util/Scanner$Notification;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static __scannerId:I


# instance fields
.field private final _currentScan:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/Scanner$TimeNSize;",
            ">;"
        }
    .end annotation
.end field

.field private _filter:Ljava/io/FilenameFilter;

.field private final _listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/Scanner$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final _notifications:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/Scanner$Notification;",
            ">;"
        }
    .end annotation
.end field

.field private final _prevScan:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/Scanner$TimeNSize;",
            ">;"
        }
    .end annotation
.end field

.field private _reportDirs:Z

.field private _reportExisting:Z

.field private volatile _running:Z

.field private _scanCount:I

.field private _scanDepth:I

.field private final _scanDirs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private _scanInterval:I

.field private _task:Ljava/util/TimerTask;

.field private _timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lorg/eclipse/jetty/util/Scanner;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 52
    const/4 v0, 0x0

    sput v0, Lorg/eclipse/jetty/util/Scanner;->__scannerId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 145
    invoke-direct {p0}, Lorg/eclipse/jetty/util/component/AbstractLifeCycle;-><init>()V

    .line 54
    iput v1, p0, Lorg/eclipse/jetty/util/Scanner;->_scanCount:I

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_prevScan:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_currentScan:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    .line 60
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/Scanner;->_running:Z

    .line 61
    iput-boolean v2, p0, Lorg/eclipse/jetty/util/Scanner;->_reportExisting:Z

    .line 62
    iput-boolean v2, p0, Lorg/eclipse/jetty/util/Scanner;->_reportDirs:Z

    .line 65
    iput v1, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDepth:I

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    .line 146
    return-void
.end method

.method private reportAddition(Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 608
    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 609
    .local v2, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/util/Scanner$Listener;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 611
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/util/Scanner$Listener;

    .line 614
    .local v3, "l":Lorg/eclipse/jetty/util/Scanner$Listener;
    :try_start_0
    instance-of v4, v3, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;

    if-eqz v4, :cond_0

    .line 615
    move-object v0, v3

    check-cast v0, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;

    move-object v4, v0

    invoke-interface {v4, p1}, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;->fileAdded(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 617
    :catch_0
    move-exception v1

    .line 619
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v3, p1, v1}, Lorg/eclipse/jetty/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 621
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 623
    .local v1, "e":Ljava/lang/Error;
    invoke-direct {p0, v3, p1, v1}, Lorg/eclipse/jetty/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 626
    .end local v1    # "e":Ljava/lang/Error;
    .end local v3    # "l":Lorg/eclipse/jetty/util/Scanner$Listener;
    :cond_1
    return-void
.end method

.method private reportBulkChanges(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 684
    .local p1, "filenames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 685
    .local v2, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/util/Scanner$Listener;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 687
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/util/Scanner$Listener;

    .line 690
    .local v3, "l":Lorg/eclipse/jetty/util/Scanner$Listener;
    :try_start_0
    instance-of v4, v3, Lorg/eclipse/jetty/util/Scanner$BulkListener;

    if-eqz v4, :cond_0

    .line 691
    move-object v0, v3

    check-cast v0, Lorg/eclipse/jetty/util/Scanner$BulkListener;

    move-object v4, v0

    invoke-interface {v4, p1}, Lorg/eclipse/jetty/util/Scanner$BulkListener;->filesChanged(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 693
    :catch_0
    move-exception v1

    .line 695
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1}, Lorg/eclipse/jetty/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 697
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 699
    .local v1, "e":Ljava/lang/Error;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1}, Lorg/eclipse/jetty/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 702
    .end local v1    # "e":Ljava/lang/Error;
    .end local v3    # "l":Lorg/eclipse/jetty/util/Scanner$Listener;
    :cond_1
    return-void
.end method

.method private reportChange(Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 662
    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 663
    .local v2, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/util/Scanner$Listener;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 665
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/util/Scanner$Listener;

    .line 668
    .local v3, "l":Lorg/eclipse/jetty/util/Scanner$Listener;
    :try_start_0
    instance-of v4, v3, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;

    if-eqz v4, :cond_0

    .line 669
    move-object v0, v3

    check-cast v0, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;

    move-object v4, v0

    invoke-interface {v4, p1}, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;->fileChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 671
    :catch_0
    move-exception v1

    .line 673
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v3, p1, v1}, Lorg/eclipse/jetty/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 675
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 677
    .local v1, "e":Ljava/lang/Error;
    invoke-direct {p0, v3, p1, v1}, Lorg/eclipse/jetty/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 680
    .end local v1    # "e":Ljava/lang/Error;
    .end local v3    # "l":Lorg/eclipse/jetty/util/Scanner$Listener;
    :cond_1
    return-void
.end method

.method private reportRemoval(Ljava/lang/String;)V
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 635
    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 636
    .local v2, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/util/Scanner$Listener;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 638
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 641
    .local v3, "l":Ljava/lang/Object;
    :try_start_0
    instance-of v4, v3, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;

    if-eqz v4, :cond_0

    .line 642
    move-object v0, v3

    check-cast v0, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;

    move-object v4, v0

    invoke-interface {v4, p1}, Lorg/eclipse/jetty/util/Scanner$DiscreteListener;->fileRemoved(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 644
    :catch_0
    move-exception v1

    .line 646
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v3, p1, v1}, Lorg/eclipse/jetty/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 648
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 650
    .local v1, "e":Ljava/lang/Error;
    invoke-direct {p0, v3, p1, v1}, Lorg/eclipse/jetty/util/Scanner;->warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 653
    .end local v1    # "e":Ljava/lang/Error;
    .end local v3    # "l":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private reportScanEnd(I)V
    .locals 7
    .param p1, "cycle"    # I

    .prologue
    .line 730
    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/util/Scanner$Listener;

    .line 734
    .local v3, "listener":Lorg/eclipse/jetty/util/Scanner$Listener;
    :try_start_0
    instance-of v4, v3, Lorg/eclipse/jetty/util/Scanner$ScanCycleListener;

    if-eqz v4, :cond_0

    .line 736
    move-object v0, v3

    check-cast v0, Lorg/eclipse/jetty/util/Scanner$ScanCycleListener;

    move-object v4, v0

    invoke-interface {v4, p1}, Lorg/eclipse/jetty/util/Scanner$ScanCycleListener;->scanEnded(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 739
    :catch_0
    move-exception v1

    .line 741
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed on scan end for cycle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 744
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "listener":Lorg/eclipse/jetty/util/Scanner$Listener;
    :cond_1
    return-void
.end method

.method private reportScanStart(I)V
    .locals 7
    .param p1, "cycle"    # I

    .prologue
    .line 709
    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/util/Scanner$Listener;

    .line 713
    .local v3, "listener":Lorg/eclipse/jetty/util/Scanner$Listener;
    :try_start_0
    instance-of v4, v3, Lorg/eclipse/jetty/util/Scanner$ScanCycleListener;

    if-eqz v4, :cond_0

    .line 715
    move-object v0, v3

    check-cast v0, Lorg/eclipse/jetty/util/Scanner$ScanCycleListener;

    move-object v4, v0

    invoke-interface {v4, p1}, Lorg/eclipse/jetty/util/Scanner$ScanCycleListener;->scanStarted(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 718
    :catch_0
    move-exception v1

    .line 720
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " failed on scan start for cycle "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 723
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "listener":Lorg/eclipse/jetty/util/Scanner$Listener;
    :cond_1
    return-void
.end method

.method private scanFile(Ljava/io/File;Ljava/util/Map;I)V
    .locals 9
    .param p1, "f"    # Ljava/io/File;
    .param p3, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/Scanner$TimeNSize;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 565
    .local p2, "scanInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/util/Scanner$TimeNSize;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 595
    :cond_0
    :goto_0
    return-void

    .line 568
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-nez v4, :cond_2

    if-lez p3, :cond_4

    iget-boolean v4, p0, Lorg/eclipse/jetty/util/Scanner;->_reportDirs:Z

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 570
    :cond_2
    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_filter:Ljava/io/FilenameFilter;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_filter:Ljava/io/FilenameFilter;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_filter:Ljava/io/FilenameFilter;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/io/FilenameFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 572
    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 573
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Lorg/eclipse/jetty/util/Scanner$TimeNSize;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/eclipse/jetty/util/Scanner$TimeNSize;-><init>(JJ)V

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .end local v3    # "name":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDepth:I

    if-lt p3, v4, :cond_5

    iget v4, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDepth:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 580
    :cond_5
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 581
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_6

    .line 583
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_0

    .line 584
    aget-object v4, v1, v2

    add-int/lit8 v5, p3, 0x1

    invoke-direct {p0, v4, p2, v5}, Lorg/eclipse/jetty/util/Scanner;->scanFile(Ljava/io/File;Ljava/util/Map;I)V

    .line 583
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 587
    .end local v2    # "i":I
    :cond_6
    sget-object v4, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "Error listing files in directory {}"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 591
    .end local v1    # "files":[Ljava/io/File;
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "Error scanning watched files"

    invoke-interface {v4, v5, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private warn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "listener"    # Ljava/lang/Object;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 599
    sget-object v0, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed on \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 600
    return-void
.end method


# virtual methods
.method public declared-synchronized addListener(Lorg/eclipse/jetty/util/Scanner$Listener;)V
    .locals 1
    .param p1, "listener"    # Lorg/eclipse/jetty/util/Scanner$Listener;

    .prologue
    .line 303
    monitor-enter p0

    if-nez p1, :cond_0

    .line 306
    :goto_0
    monitor-exit p0

    return-void

    .line 305
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 303
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addScanDir(Ljava/io/File;)V
    .locals 1
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 198
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit p0

    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doStart()V
    .locals 2

    .prologue
    .line 328
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 346
    :goto_0
    monitor-exit p0

    return-void

    .line 331
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_running:Z

    .line 333
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_reportExisting:Z

    if-eqz v0, :cond_1

    .line 336
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->scan()V

    .line 337
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->scan()V

    .line 345
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->schedule()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 342
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->scanFiles()V

    .line 343
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_prevScan:Ljava/util/Map;

    iget-object v1, p0, Lorg/eclipse/jetty/util/Scanner;->_currentScan:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized doStop()V
    .locals 1

    .prologue
    .line 384
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_running:Z

    if-eqz v0, :cond_2

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_running:Z

    .line 387
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 389
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_task:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 391
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_task:Ljava/util/TimerTask;

    .line 392
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_timer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    :cond_2
    monitor-exit p0

    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFilenameFilter()Ljava/io/FilenameFilter;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_filter:Ljava/io/FilenameFilter;

    return-object v0
.end method

.method public getRecursive()Z
    .locals 2

    .prologue
    .line 223
    iget v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDepth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReportDirs()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_reportDirs:Z

    return v0
.end method

.method public getReportExistingFilesOnStartup()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_reportExisting:Z

    return v0
.end method

.method public getScanDepth()I
    .locals 1

    .prologue
    .line 232
    iget v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDepth:I

    return v0
.end method

.method public getScanDir()Ljava/io/File;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    goto :goto_0
.end method

.method public getScanDirs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getScanInterval()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanInterval:I

    return v0
.end method

.method public newTimer()Ljava/util/Timer;
    .locals 4

    .prologue
    .line 359
    new-instance v0, Ljava/util/Timer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scanner-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/eclipse/jetty/util/Scanner;->__scannerId:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lorg/eclipse/jetty/util/Scanner;->__scannerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public newTimerTask()Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 350
    new-instance v0, Lorg/eclipse/jetty/util/Scanner$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/util/Scanner$1;-><init>(Lorg/eclipse/jetty/util/Scanner;)V

    return-object v0
.end method

.method public declared-synchronized removeListener(Lorg/eclipse/jetty/util/Scanner$Listener;)V
    .locals 1
    .param p1, "listener"    # Lorg/eclipse/jetty/util/Scanner$Listener;

    .prologue
    .line 316
    monitor-enter p0

    if-nez p1, :cond_0

    .line 319
    :goto_0
    monitor-exit p0

    return-void

    .line 318
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reportDifferences(Ljava/util/Map;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/Scanner$TimeNSize;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/util/Scanner$TimeNSize;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 463
    .local p1, "currentScan":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/util/Scanner$TimeNSize;>;"
    .local p2, "oldScan":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/util/Scanner$TimeNSize;>;"
    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/util/HashSet;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 466
    .local v8, "oldScanKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 468
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/eclipse/jetty/util/Scanner$TimeNSize;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 469
    .local v3, "file":Ljava/lang/String;
    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 471
    iget-object v9, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    sget-object v10, Lorg/eclipse/jetty/util/Scanner$Notification;->ADDED:Lorg/eclipse/jetty/util/Scanner$Notification;

    invoke-interface {v9, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jetty/util/Scanner$Notification;

    .line 472
    .local v7, "old":Lorg/eclipse/jetty/util/Scanner$Notification;
    if-eqz v7, :cond_0

    .line 474
    sget-object v9, Lorg/eclipse/jetty/util/Scanner$2;->$SwitchMap$org$eclipse$jetty$util$Scanner$Notification:[I

    invoke-virtual {v7}, Lorg/eclipse/jetty/util/Scanner$Notification;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 478
    :pswitch_0
    iget-object v9, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    sget-object v10, Lorg/eclipse/jetty/util/Scanner$Notification;->CHANGED:Lorg/eclipse/jetty/util/Scanner$Notification;

    invoke-interface {v9, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 463
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/eclipse/jetty/util/Scanner$TimeNSize;>;"
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "old":Lorg/eclipse/jetty/util/Scanner$Notification;
    .end local v8    # "oldScanKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 482
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/eclipse/jetty/util/Scanner$TimeNSize;>;"
    .restart local v3    # "file":Ljava/lang/String;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v8    # "oldScanKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/util/Scanner$TimeNSize;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/util/Scanner$TimeNSize;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 484
    iget-object v9, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    sget-object v10, Lorg/eclipse/jetty/util/Scanner$Notification;->CHANGED:Lorg/eclipse/jetty/util/Scanner$Notification;

    invoke-interface {v9, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jetty/util/Scanner$Notification;

    .line 485
    .restart local v7    # "old":Lorg/eclipse/jetty/util/Scanner$Notification;
    if-eqz v7, :cond_0

    .line 487
    sget-object v9, Lorg/eclipse/jetty/util/Scanner$2;->$SwitchMap$org$eclipse$jetty$util$Scanner$Notification:[I

    invoke-virtual {v7}, Lorg/eclipse/jetty/util/Scanner$Notification;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1

    goto :goto_0

    .line 490
    :pswitch_1
    iget-object v9, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    sget-object v10, Lorg/eclipse/jetty/util/Scanner$Notification;->ADDED:Lorg/eclipse/jetty/util/Scanner$Notification;

    invoke-interface {v9, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 497
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/eclipse/jetty/util/Scanner$TimeNSize;>;"
    .end local v3    # "file":Ljava/lang/String;
    .end local v7    # "old":Lorg/eclipse/jetty/util/Scanner$Notification;
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 499
    .restart local v3    # "file":Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 501
    iget-object v9, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    sget-object v10, Lorg/eclipse/jetty/util/Scanner$Notification;->REMOVED:Lorg/eclipse/jetty/util/Scanner$Notification;

    invoke-interface {v9, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jetty/util/Scanner$Notification;

    .line 502
    .restart local v7    # "old":Lorg/eclipse/jetty/util/Scanner$Notification;
    if-eqz v7, :cond_3

    .line 504
    sget-object v9, Lorg/eclipse/jetty/util/Scanner$2;->$SwitchMap$org$eclipse$jetty$util$Scanner$Notification:[I

    invoke-virtual {v7}, Lorg/eclipse/jetty/util/Scanner$Notification;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_2

    goto :goto_1

    .line 507
    :pswitch_2
    iget-object v9, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    invoke-interface {v9, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 513
    .end local v3    # "file":Ljava/lang/String;
    .end local v7    # "old":Lorg/eclipse/jetty/util/Scanner$Notification;
    :cond_4
    sget-object v9, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 514
    sget-object v9, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scanned "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 519
    .local v0, "bulkChanges":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lorg/eclipse/jetty/util/Scanner;->_notifications:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/eclipse/jetty/util/Scanner$Notification;>;>;"
    :cond_6
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 521
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 522
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/eclipse/jetty/util/Scanner$Notification;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 525
    .restart local v3    # "file":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 527
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/util/Scanner$TimeNSize;

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/util/Scanner$TimeNSize;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 534
    :cond_7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/util/Scanner$Notification;

    .line 535
    .local v6, "notification":Lorg/eclipse/jetty/util/Scanner$Notification;
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 536
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    sget-object v9, Lorg/eclipse/jetty/util/Scanner$2;->$SwitchMap$org$eclipse$jetty$util$Scanner$Notification:[I

    invoke-virtual {v6}, Lorg/eclipse/jetty/util/Scanner$Notification;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_3

    goto :goto_2

    .line 546
    :pswitch_3
    invoke-direct {p0, v3}, Lorg/eclipse/jetty/util/Scanner;->reportRemoval(Ljava/lang/String;)V

    goto :goto_2

    .line 530
    .end local v6    # "notification":Lorg/eclipse/jetty/util/Scanner$Notification;
    :cond_8
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    goto :goto_2

    .line 540
    .restart local v6    # "notification":Lorg/eclipse/jetty/util/Scanner$Notification;
    :pswitch_4
    invoke-direct {p0, v3}, Lorg/eclipse/jetty/util/Scanner;->reportAddition(Ljava/lang/String;)V

    goto :goto_2

    .line 543
    :pswitch_5
    invoke-direct {p0, v3}, Lorg/eclipse/jetty/util/Scanner;->reportChange(Ljava/lang/String;)V

    goto :goto_2

    .line 550
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/eclipse/jetty/util/Scanner$Notification;>;"
    .end local v3    # "file":Ljava/lang/String;
    .end local v6    # "notification":Lorg/eclipse/jetty/util/Scanner$Notification;
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_a

    .line 551
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/Scanner;->reportBulkChanges(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    :cond_a
    monitor-exit p0

    return-void

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 487
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch

    .line 504
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_2
    .end packed-switch

    .line 537
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public declared-synchronized scan()V
    .locals 5

    .prologue
    .line 401
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lorg/eclipse/jetty/util/Scanner;->_scanCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/eclipse/jetty/util/Scanner;->_scanCount:I

    invoke-direct {p0, v3}, Lorg/eclipse/jetty/util/Scanner;->reportScanStart(I)V

    .line 402
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->scanFiles()V

    .line 403
    iget-object v3, p0, Lorg/eclipse/jetty/util/Scanner;->_currentScan:Ljava/util/Map;

    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_prevScan:Ljava/util/Map;

    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jetty/util/Scanner;->reportDifferences(Ljava/util/Map;Ljava/util/Map;)V

    .line 404
    iget-object v3, p0, Lorg/eclipse/jetty/util/Scanner;->_prevScan:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 405
    iget-object v3, p0, Lorg/eclipse/jetty/util/Scanner;->_prevScan:Ljava/util/Map;

    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_currentScan:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 406
    iget v3, p0, Lorg/eclipse/jetty/util/Scanner;->_scanCount:I

    invoke-direct {p0, v3}, Lorg/eclipse/jetty/util/Scanner;->reportScanEnd(I)V

    .line 408
    iget-object v3, p0, Lorg/eclipse/jetty/util/Scanner;->_listeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/util/Scanner$Listener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    .local v2, "l":Lorg/eclipse/jetty/util/Scanner$Listener;
    :try_start_1
    instance-of v3, v2, Lorg/eclipse/jetty/util/Scanner$ScanListener;

    if-eqz v3, :cond_0

    .line 413
    check-cast v2, Lorg/eclipse/jetty/util/Scanner$ScanListener;

    .end local v2    # "l":Lorg/eclipse/jetty/util/Scanner$Listener;
    invoke-interface {v2}, Lorg/eclipse/jetty/util/Scanner$ScanListener;->scan()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v3, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 401
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 419
    .restart local v1    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v0

    .line 421
    .local v0, "e":Ljava/lang/Error;
    :try_start_3
    sget-object v3, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 424
    .end local v0    # "e":Ljava/lang/Error;
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized scanFiles()V
    .locals 6

    .prologue
    .line 431
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 450
    :cond_0
    monitor-exit p0

    return-void

    .line 434
    :cond_1
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/util/Scanner;->_currentScan:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 435
    iget-object v3, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 436
    .local v2, "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 438
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 440
    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 443
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jetty/util/Scanner;->_currentScan:Ljava/util/Map;

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lorg/eclipse/jetty/util/Scanner;->scanFile(Ljava/io/File;Ljava/util/Map;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 445
    :catch_0
    move-exception v1

    .line 447
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    sget-object v3, Lorg/eclipse/jetty/util/Scanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Error scanning files."

    invoke-interface {v3, v4, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 431
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "itor":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/io/File;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public schedule()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3f2

    .line 364
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/Scanner;->_running:Z

    if-eqz v0, :cond_2

    .line 366
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 368
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_task:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 369
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 370
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->getScanInterval()I

    move-result v0

    if-lez v0, :cond_2

    .line 372
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->newTimer()Ljava/util/Timer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_timer:Ljava/util/Timer;

    .line 373
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->newTimerTask()Ljava/util/TimerTask;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_task:Ljava/util/TimerTask;

    .line 374
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_timer:Ljava/util/Timer;

    iget-object v1, p0, Lorg/eclipse/jetty/util/Scanner;->_task:Ljava/util/TimerTask;

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->getScanInterval()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v2, v6

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->getScanInterval()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 377
    :cond_2
    return-void
.end method

.method public setFilenameFilter(Ljava/io/FilenameFilter;)V
    .locals 0
    .param p1, "filter"    # Ljava/io/FilenameFilter;

    .prologue
    .line 251
    iput-object p1, p0, Lorg/eclipse/jetty/util/Scanner;->_filter:Ljava/io/FilenameFilter;

    .line 252
    return-void
.end method

.method public setRecursive(Z)V
    .locals 1
    .param p1, "recursive"    # Z

    .prologue
    .line 213
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDepth:I

    .line 214
    return-void

    .line 213
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setReportDirs(Z)V
    .locals 0
    .param p1, "dirs"    # Z

    .prologue
    .line 287
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/Scanner;->_reportDirs:Z

    .line 288
    return-void
.end method

.method public setReportExistingFilesOnStartup(Z)V
    .locals 0
    .param p1, "reportExisting"    # Z

    .prologue
    .line 272
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/Scanner;->_reportExisting:Z

    .line 273
    return-void
.end method

.method public setScanDepth(I)V
    .locals 0
    .param p1, "scanDepth"    # I

    .prologue
    .line 241
    iput p1, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDepth:I

    .line 242
    return-void
.end method

.method public setScanDir(Ljava/io/File;)V
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 176
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    return-void
.end method

.method public setScanDirs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "dirs":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 193
    iget-object v0, p0, Lorg/eclipse/jetty/util/Scanner;->_scanDirs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 194
    return-void
.end method

.method public declared-synchronized setScanInterval(I)V
    .locals 1
    .param p1, "scanInterval"    # I

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lorg/eclipse/jetty/util/Scanner;->_scanInterval:I

    .line 164
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/Scanner;->schedule()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
