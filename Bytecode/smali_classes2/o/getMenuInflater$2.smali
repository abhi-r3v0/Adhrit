.class final Lo/getMenuInflater$2;
.super Lo/MediaSessionCompat$Callback$StubApi23;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMenuInflater;-><init>(Lo/setCurrentControllerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/MediaSessionCompat$Callback$StubApi23<",
        "Lo/extraCallback$onNavigationEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/getMenuInflater;


# direct methods
.method constructor <init>(Lo/getMenuInflater;Lo/setCurrentControllerInfo;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lo/getMenuInflater$2;->onMessageChannelReady:Lo/getMenuInflater;

    invoke-direct {p0, p2}, Lo/MediaSessionCompat$Callback$StubApi23;-><init>(Lo/setCurrentControllerInfo;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)"

    return-object v0
.end method

.method public final synthetic onPostMessage(Lo/getDrawerToggleDelegate$onNavigationEvent;Ljava/lang/Object;)V
    .locals 2

    .line 31
    check-cast p2, Lo/extraCallback$onNavigationEvent;

    .line 1039
    iget-object v0, p2, Lo/extraCallback$onNavigationEvent;->asInterface:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1040
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_0

    .line 1042
    :cond_0
    iget-object v0, p2, Lo/extraCallback$onNavigationEvent;->asInterface:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 1045
    :goto_0
    iget-object p2, p2, Lo/extraCallback$onNavigationEvent;->onTransact:Lo/PlaybackStateCompat$Builder;

    invoke-static {p2}, Lo/PlaybackStateCompat$Builder;->onNavigationEvent(Lo/PlaybackStateCompat$Builder;)[B

    move-result-object p2

    const/4 v0, 0x2

    if-nez p2, :cond_1

    .line 1047
    invoke-interface {p1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    return-void

    .line 1049
    :cond_1
    invoke-interface {p1, v0, p2}, Lo/getDrawerToggleDelegate$onNavigationEvent;->extraCallback(I[B)V

    return-void
.end method
