.class final Lo/setSupportActionBar$3;
.super Lo/MediaSessionCompat$Callback$StubApi23;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setSupportActionBar;-><init>(Lo/setCurrentControllerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/MediaSessionCompat$Callback$StubApi23<",
        "Lo/getSupportActionBar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/setSupportActionBar;


# direct methods
.method constructor <init>(Lo/setSupportActionBar;Lo/setCurrentControllerInfo;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lo/setSupportActionBar$3;->extraCallback:Lo/setSupportActionBar;

    invoke-direct {p0, p2}, Lo/MediaSessionCompat$Callback$StubApi23;-><init>(Lo/setCurrentControllerInfo;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`system_id`) VALUES (?,?)"

    return-object v0
.end method

.method public final synthetic onPostMessage(Lo/getDrawerToggleDelegate$onNavigationEvent;Ljava/lang/Object;)V
    .locals 3

    .line 25
    check-cast p2, Lo/getSupportActionBar;

    .line 1033
    iget-object v0, p2, Lo/getSupportActionBar;->onNavigationEvent:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1034
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_0

    .line 1036
    :cond_0
    iget-object v0, p2, Lo/getSupportActionBar;->onNavigationEvent:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    :goto_0
    const/4 v0, 0x2

    .line 1038
    iget p2, p2, Lo/getSupportActionBar;->onMessageChannelReady:I

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    return-void
.end method
