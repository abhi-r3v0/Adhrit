.class public final Lo/GameWebViewFragment$MyJavascriptInterface;
.super Ljava/lang/Object;


# instance fields
.field public ICustomTabsCallback:J

.field public ICustomTabsCallback$Stub:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SpinTheWheelResponse_MetaJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field public extraCallback:J

.field public onMessageChannelReady:[B

.field public onNavigationEvent:Ljava/lang/String;

.field public onPostMessage:J

.field public onTransact:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lo/GameWebViewFragment$MyJavascriptInterface;->ICustomTabsCallback$Stub:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final extraCallback()Z
    .locals 5

    iget-wide v0, p0, Lo/GameWebViewFragment$MyJavascriptInterface;->extraCallback:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
