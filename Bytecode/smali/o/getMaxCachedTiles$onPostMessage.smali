.class final Lo/getMaxCachedTiles$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMaxCachedTiles;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
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
.field private synthetic ICustomTabsCallback:Lo/getMaxCachedTiles;

.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onNavigationEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/getMaxCachedTiles;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/getMaxCachedTiles$onPostMessage;->ICustomTabsCallback:Lo/getMaxCachedTiles;

    iput-object p2, p0, Lo/getMaxCachedTiles$onPostMessage;->extraCallback:Ljava/lang/String;

    iput-object p3, p0, Lo/getMaxCachedTiles$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 27
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1051
    iget-object p1, p0, Lo/getMaxCachedTiles$onPostMessage;->ICustomTabsCallback:Lo/getMaxCachedTiles;

    .line 2004
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string v1, "payment_exit_intercept_proceed"

    invoke-interface {p1, v1, v0}, Lo/setThumbResource;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1052
    iget-object p1, p0, Lo/getMaxCachedTiles$onPostMessage;->ICustomTabsCallback:Lo/getMaxCachedTiles;

    .line 3000
    iget-object p1, p1, Lo/getMaxCachedTiles;->onPostMessage:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    .line 1052
    iget-object v0, p0, Lo/getMaxCachedTiles$onPostMessage;->extraCallback:Ljava/lang/String;

    iget-object v1, p0, Lo/getMaxCachedTiles$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lo/getMoveDuration;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iget-object p1, p0, Lo/getMaxCachedTiles$onPostMessage;->ICustomTabsCallback:Lo/getMaxCachedTiles;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 27
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
