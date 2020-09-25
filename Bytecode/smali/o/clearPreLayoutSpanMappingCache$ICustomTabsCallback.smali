.class final Lo/clearPreLayoutSpanMappingCache$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/clearPreLayoutSpanMappingCache;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/clearPreLayoutSpanMappingCache;


# direct methods
.method constructor <init>(Lo/clearPreLayoutSpanMappingCache;)V
    .locals 0

    iput-object p1, p0, Lo/clearPreLayoutSpanMappingCache$ICustomTabsCallback;->extraCallback:Lo/clearPreLayoutSpanMappingCache;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1057
    iget-object v0, p0, Lo/clearPreLayoutSpanMappingCache$ICustomTabsCallback;->extraCallback:Lo/clearPreLayoutSpanMappingCache;

    invoke-static {v0}, Lo/clearPreLayoutSpanMappingCache;->ICustomTabsCallback(Lo/clearPreLayoutSpanMappingCache;)Lo/getMoveDuration;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v0, v2, v1, v1, v3}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 26
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
