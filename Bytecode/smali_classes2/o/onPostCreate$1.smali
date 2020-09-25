.class final Lo/onPostCreate$1;
.super Lo/MediaSessionCompat$Callback$StubApi23;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onPostCreate;-><init>(Lo/setCurrentControllerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/MediaSessionCompat$Callback$StubApi23<",
        "Lo/setHasDecor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic onPostMessage:Lo/onPostCreate;


# direct methods
.method constructor <init>(Lo/onPostCreate;Lo/setCurrentControllerInfo;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lo/onPostCreate$1;->onPostMessage:Lo/onPostCreate;

    invoke-direct {p0, p2}, Lo/MediaSessionCompat$Callback$StubApi23;-><init>(Lo/setCurrentControllerInfo;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)"

    return-object v0
.end method

.method public final synthetic onPostMessage(Lo/getDrawerToggleDelegate$onNavigationEvent;Ljava/lang/Object;)V
    .locals 4

    .line 25
    check-cast p2, Lo/setHasDecor;

    .line 1033
    iget-object v0, p2, Lo/setHasDecor;->onPostMessage:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1034
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_0

    .line 1036
    :cond_0
    iget-object v0, p2, Lo/setHasDecor;->onPostMessage:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 1038
    :goto_0
    iget-object v0, p2, Lo/setHasDecor;->extraCallback:Ljava/lang/Long;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 1039
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    return-void

    .line 1041
    :cond_1
    iget-object p2, p2, Lo/setHasDecor;->extraCallback:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    return-void
.end method
