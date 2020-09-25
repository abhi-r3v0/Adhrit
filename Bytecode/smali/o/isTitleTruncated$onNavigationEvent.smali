.class final Lo/isTitleTruncated$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppCompatImageView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isTitleTruncated;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/AppCompatImageView<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/io/File;

.field private final extraCallback:Lo/isTitleTruncated$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isTitleTruncated$ICustomTabsCallback<",
            "TData;>;"
        }
    .end annotation
.end field

.field private onPostMessage:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TData;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/io/File;Lo/isTitleTruncated$ICustomTabsCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lo/isTitleTruncated$ICustomTabsCallback<",
            "TData;>;)V"
        }
    .end annotation

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lo/isTitleTruncated$onNavigationEvent;->ICustomTabsCallback:Ljava/io/File;

    .line 65
    iput-object p2, p0, Lo/isTitleTruncated$onNavigationEvent;->extraCallback:Lo/isTitleTruncated$ICustomTabsCallback;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method public final extraCallback()Lo/setImageURI;
    .locals 1

    .line 107
    sget-object v0, Lo/setImageURI;->onNavigationEvent:Lo/setImageURI;

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lo/isTitleTruncated$onNavigationEvent;->extraCallback:Lo/isTitleTruncated$ICustomTabsCallback;

    invoke-interface {v0}, Lo/isTitleTruncated$ICustomTabsCallback;->onMessageChannelReady()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage()V
    .locals 2

    .line 84
    iget-object v0, p0, Lo/isTitleTruncated$onNavigationEvent;->onPostMessage:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    iget-object v1, p0, Lo/isTitleTruncated$onNavigationEvent;->extraCallback:Lo/isTitleTruncated$ICustomTabsCallback;

    invoke-interface {v1, v0}, Lo/isTitleTruncated$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/getTintList;Lo/AppCompatImageView$ICustomTabsCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getTintList;",
            "Lo/AppCompatImageView$ICustomTabsCallback<",
            "-TData;>;)V"
        }
    .end annotation

    .line 71
    :try_start_0
    iget-object p1, p0, Lo/isTitleTruncated$onNavigationEvent;->extraCallback:Lo/isTitleTruncated$ICustomTabsCallback;

    iget-object v0, p0, Lo/isTitleTruncated$onNavigationEvent;->ICustomTabsCallback:Ljava/io/File;

    invoke-interface {p1, v0}, Lo/isTitleTruncated$ICustomTabsCallback;->extraCallback(Ljava/io/File;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lo/isTitleTruncated$onNavigationEvent;->onPostMessage:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    invoke-interface {p2, p1}, Lo/AppCompatImageView$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    const/4 v0, 0x3

    const-string v1, "FileLoader"

    .line 73
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failed to open file"

    .line 74
    invoke-static {v1, v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :cond_0
    invoke-interface {p2, p1}, Lo/AppCompatImageView$ICustomTabsCallback;->extraCallback(Ljava/lang/Exception;)V

    return-void
.end method
