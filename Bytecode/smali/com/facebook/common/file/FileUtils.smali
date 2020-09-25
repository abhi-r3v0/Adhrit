.class public final Lcom/facebook/common/file/FileUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/file/FileUtils$RenameException;,
        Lcom/facebook/common/file/FileUtils$FileDeleteException;,
        Lcom/facebook/common/file/FileUtils$ParentDirNotFoundException;,
        Lcom/facebook/common/file/FileUtils$CreateDirectoryException;
    }
.end annotation


# instance fields
.field private final arg$1:Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/common/file/FileUtils;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;

    return-void
.end method

.method public static lambdaFactory$(Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;)Ljava/lang/Runnable;
    .locals 1

    .line 3000
    new-instance v0, Lcom/facebook/common/file/FileUtils;

    invoke-direct {v0, p0}, Lcom/facebook/common/file/FileUtils;-><init>(Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;)V

    return-object v0
.end method

.method public static onMessageChannelReady(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/common/file/FileUtils$CreateDirectoryException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Lcom/facebook/common/file/FileUtils$CreateDirectoryException;

    .line 35
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/common/file/FileUtils$FileDeleteException;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/facebook/common/file/FileUtils$FileDeleteException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/file/FileUtils$CreateDirectoryException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 40
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 41
    :cond_3
    new-instance v0, Lcom/facebook/common/file/FileUtils$CreateDirectoryException;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/facebook/common/file/FileUtils$CreateDirectoryException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 2000
    iget-object v0, p0, Lcom/facebook/common/file/FileUtils;->arg$1:Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;

    invoke-static {v0}, Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;->lambda$runWithBackoff$2(Lo/AutoValue_CrashlyticsReport_Session_Application_Organization$Builder;)V

    return-void
.end method
