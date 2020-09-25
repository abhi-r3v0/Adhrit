.class public final Lo/onSearchClicked$extraCallback;
.super Lo/isCompleteForPath;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onSearchClicked;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/datadog/android/core/internal/net/GzipRequestInterceptor$gzip$1",
        "Lokhttp3/RequestBody;",
        "contentLength",
        "",
        "contentType",
        "Lokhttp3/MediaType;",
        "writeTo",
        "",
        "sink",
        "Lokio/BufferedSink;",
        "dd-sdk-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/isCompleteForPath;


# direct methods
.method constructor <init>(Lo/isCompleteForPath;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lo/onSearchClicked$extraCallback;->onPostMessage:Lo/isCompleteForPath;

    invoke-direct {p0}, Lo/isCompleteForPath;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final onMessageChannelReady(Lo/filtersNodes;)V
    .locals 1

    const-string/jumbo v0, "sink"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lo/getInstallBeginTimestampServerSeconds;

    check-cast p1, Lo/exceptionStacktrace;

    invoke-direct {v0, p1}, Lo/getInstallBeginTimestampServerSeconds;-><init>(Lo/exceptionStacktrace;)V

    check-cast v0, Lo/exceptionStacktrace;

    invoke-static {v0}, Lo/warn;->onPostMessage(Lo/exceptionStacktrace;)Lo/filtersNodes;

    move-result-object p1

    const-string v0, "Okio.buffer(GzipSink(sink))"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lo/onSearchClicked$extraCallback;->onPostMessage:Lo/isCompleteForPath;

    invoke-virtual {v0, p1}, Lo/isCompleteForPath;->onMessageChannelReady(Lo/filtersNodes;)V

    .line 62
    invoke-interface {p1}, Lo/filtersNodes;->close()V

    return-void
.end method

.method public final onPostMessage()Lo/isFiltered;
    .locals 1

    .line 52
    iget-object v0, p0, Lo/onSearchClicked$extraCallback;->onPostMessage:Lo/isCompleteForPath;

    invoke-virtual {v0}, Lo/isCompleteForPath;->onPostMessage()Lo/isFiltered;

    move-result-object v0

    return-object v0
.end method
