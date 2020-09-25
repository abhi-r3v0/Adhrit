.class final Lo/getServerCache$ICustomTabsCallback;
.super Lo/getIndexedFilter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getServerCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getServerCache;


# direct methods
.method constructor <init>(Lo/getServerCache;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lo/getServerCache$ICustomTabsCallback;->onNavigationEvent:Lo/getServerCache;

    invoke-direct {p0}, Lo/getIndexedFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .line 671
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 673
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public final extraCallback()V
    .locals 3

    .line 667
    iget-object v0, p0, Lo/getServerCache$ICustomTabsCallback;->onNavigationEvent:Lo/getServerCache;

    sget-object v1, Lo/getNodeFilter;->asInterface:Lo/getNodeFilter;

    .line 1251
    invoke-virtual {v0, v1}, Lo/getServerCache;->onPostMessage(Lo/getNodeFilter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1254
    iget-object v2, v0, Lo/getServerCache;->ICustomTabsCallback:Lo/normalizeValue;

    iget v0, v0, Lo/getServerCache;->onMessageChannelReady:I

    invoke-virtual {v2, v0, v1}, Lo/normalizeValue;->extraCallback(ILo/getNodeFilter;)V

    :cond_0
    return-void
.end method
