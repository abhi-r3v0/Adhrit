.class final Lo/createButton$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createButton;->onPostMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lo/createSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lo/verifyNotNull<",
        "Lo/createCheckBox;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic onMessageChannelReady:Ljava/lang/String;

.field private synthetic onPostMessage:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lo/createButton$1;->onPostMessage:Landroid/content/Context;

    iput-object p2, p0, Lo/createButton$1;->onMessageChannelReady:Ljava/lang/String;

    iput-object p3, p0, Lo/createButton$1;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1091
    iget-object v0, p0, Lo/createButton$1;->onPostMessage:Landroid/content/Context;

    iget-object v1, p0, Lo/createButton$1;->onMessageChannelReady:Ljava/lang/String;

    iget-object v2, p0, Lo/createButton$1;->ICustomTabsCallback:Ljava/lang/String;

    .line 2031
    new-instance v3, Lo/getIconBitmap$onPostMessage;

    invoke-direct {v3, v0, v1, v2}, Lo/getIconBitmap$onPostMessage;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    iget-object v0, v3, Lo/getIconBitmap$onPostMessage;->onPostMessage:Lo/getIconBitmap$onNavigationEvent;

    if-eqz v0, :cond_1

    .line 2064
    iget-object v0, v3, Lo/getIconBitmap$onPostMessage;->onPostMessage:Lo/getIconBitmap$onNavigationEvent;

    iget-object v1, v3, Lo/getIconBitmap$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/getIconBitmap$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Lo/getPercentRating;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2069
    iget-object v1, v0, Lo/getPercentRating;->extraCallback:Ljava/lang/Object;

    check-cast v1, Lo/setShowingForActionMode;

    .line 2070
    iget-object v0, v0, Lo/getPercentRating;->onPostMessage:Ljava/lang/Object;

    check-cast v0, Ljava/io/InputStream;

    .line 2072
    sget-object v2, Lo/setShowingForActionMode;->ICustomTabsCallback:Lo/setShowingForActionMode;

    if-ne v1, v2, :cond_0

    .line 2073
    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v0, v3, Lo/getIconBitmap$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v1, v0}, Lo/createButton;->onPostMessage(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lo/verifyNotNull;

    move-result-object v0

    goto :goto_0

    .line 2075
    :cond_0
    iget-object v1, v3, Lo/getIconBitmap$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/createButton;->onNavigationEvent(Ljava/io/InputStream;Ljava/lang/String;)Lo/verifyNotNull;

    move-result-object v0

    .line 3028
    :goto_0
    iget-object v1, v0, Lo/verifyNotNull;->onPostMessage:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 4028
    iget-object v0, v0, Lo/verifyNotNull;->onPostMessage:Ljava/lang/Object;

    .line 2078
    check-cast v0, Lo/createCheckBox;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 2048
    new-instance v1, Lo/verifyNotNull;

    invoke-direct {v1, v0}, Lo/verifyNotNull;-><init>(Ljava/lang/Object;)V

    return-object v1

    .line 2051
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Animation for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lo/getIconBitmap$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found in cache. Fetching from network."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/onContentScrollStarted;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 2052
    invoke-virtual {v3}, Lo/getIconBitmap$onPostMessage;->ICustomTabsCallback()Lo/verifyNotNull;

    move-result-object v0

    return-object v0
.end method
