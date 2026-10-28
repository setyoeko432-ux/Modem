.class public Lorg/apache/commons/fileupload/servlet/FileCleanerCleanup;
.super Ljava/lang/Object;
.source "FileCleanerCleanup.java"

# interfaces
.implements Ljavax/servlet/ServletContextListener;


# static fields
.field public static final FILE_CLEANING_TRACKER_ATTRIBUTE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/apache/commons/fileupload/servlet/FileCleanerCleanup;

    .line 37
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".FileCleaningTracker"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/fileupload/servlet/FileCleanerCleanup;->FILE_CLEANING_TRACKER_ATTRIBUTE:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileCleaningTracker(Ljavax/servlet/ServletContext;)Lorg/apache/commons/io/FileCleaningTracker;
    .locals 1
    .param p0, "pServletContext"    # Ljavax/servlet/ServletContext;

    .prologue
    .line 48
    sget-object v0, Lorg/apache/commons/fileupload/servlet/FileCleanerCleanup;->FILE_CLEANING_TRACKER_ATTRIBUTE:Ljava/lang/String;

    .line 49
    invoke-interface {p0, v0}, Ljavax/servlet/ServletContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/io/FileCleaningTracker;

    .line 48
    return-object v0
.end method

.method public static setFileCleaningTracker(Ljavax/servlet/ServletContext;Lorg/apache/commons/io/FileCleaningTracker;)V
    .locals 1
    .param p0, "pServletContext"    # Ljavax/servlet/ServletContext;
    .param p1, "pTracker"    # Lorg/apache/commons/io/FileCleaningTracker;

    .prologue
    .line 61
    sget-object v0, Lorg/apache/commons/fileupload/servlet/FileCleanerCleanup;->FILE_CLEANING_TRACKER_ATTRIBUTE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Ljavax/servlet/ServletContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    return-void
.end method


# virtual methods
.method public contextDestroyed(Ljavax/servlet/ServletContextEvent;)V
    .locals 1
    .param p1, "sce"    # Ljavax/servlet/ServletContextEvent;

    .prologue
    .line 86
    invoke-virtual {p1}, Ljavax/servlet/ServletContextEvent;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/fileupload/servlet/FileCleanerCleanup;->getFileCleaningTracker(Ljavax/servlet/ServletContext;)Lorg/apache/commons/io/FileCleaningTracker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/io/FileCleaningTracker;->exitWhenFinished()V

    .line 87
    return-void
.end method

.method public contextInitialized(Ljavax/servlet/ServletContextEvent;)V
    .locals 2
    .param p1, "sce"    # Ljavax/servlet/ServletContextEvent;

    .prologue
    .line 73
    invoke-virtual {p1}, Ljavax/servlet/ServletContextEvent;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/io/FileCleaningTracker;

    invoke-direct {v1}, Lorg/apache/commons/io/FileCleaningTracker;-><init>()V

    invoke-static {v0, v1}, Lorg/apache/commons/fileupload/servlet/FileCleanerCleanup;->setFileCleaningTracker(Ljavax/servlet/ServletContext;Lorg/apache/commons/io/FileCleaningTracker;)V

    .line 75
    return-void
.end method
