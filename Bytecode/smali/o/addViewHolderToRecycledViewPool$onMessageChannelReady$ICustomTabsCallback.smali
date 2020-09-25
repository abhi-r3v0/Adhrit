.class public final Lo/addViewHolderToRecycledViewPool$onMessageChannelReady$ICustomTabsCallback;
.super Lo/getChildKey;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/addViewHolderToRecycledViewPool$onMessageChannelReady;
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\n\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/network/internals/CallbackWrapper$Companion$emptyResponseBody$1",
        "Lokhttp3/ResponseBody;",
        "contentLength",
        "",
        "contentType",
        "Lokhttp3/MediaType;",
        "source",
        "Lokio/BufferedSource;",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Lo/getChildKey;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final onMessageChannelReady()Lo/fullLimitUpdateChild;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onNavigationEvent()Lo/isFiltered;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
