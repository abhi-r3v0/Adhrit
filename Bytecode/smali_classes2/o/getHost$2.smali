.class final Lo/getHost$2;
.super Lo/MediaSessionCompat$Callback$StubApi23;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getHost;-><init>(Lo/setCurrentControllerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/MediaSessionCompat$Callback$StubApi23<",
        "Lo/getActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getHost;


# direct methods
.method constructor <init>(Lo/getHost;Lo/setCurrentControllerInfo;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lo/getHost$2;->extraCallback:Lo/getHost;

    invoke-direct {p0, p2}, Lo/MediaSessionCompat$Callback$StubApi23;-><init>(Lo/setCurrentControllerInfo;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `BackgroundAssetsEntity` (`id`,`type`,`colors`,`direction`) VALUES (?,?,?,?)"

    return-object v0
.end method

.method public final synthetic onPostMessage(Lo/getDrawerToggleDelegate$onNavigationEvent;Ljava/lang/Object;)V
    .locals 4

    .line 27
    check-cast p2, Lo/getActivity;

    .line 2014
    iget-object v0, p2, Lo/getActivity;->extraCallback:Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1036
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_0

    .line 3014
    :cond_0
    iget-object v0, p2, Lo/getActivity;->extraCallback:Ljava/lang/String;

    .line 1038
    invoke-interface {p1, v1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 3016
    :goto_0
    iget-object v0, p2, Lo/getActivity;->ICustomTabsCallback:Ljava/lang/Integer;

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 1041
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_1

    .line 4016
    :cond_1
    iget-object v0, p2, Lo/getActivity;->ICustomTabsCallback:Ljava/lang/Integer;

    .line 1043
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 1046
    :goto_1
    iget-object v0, p0, Lo/getHost$2;->extraCallback:Lo/getHost;

    .line 4018
    iget-object v0, v0, Lo/getHost;->extraCallback:Lo/requireFragmentManager;

    .line 5018
    iget-object v1, p2, Lo/getActivity;->onNavigationEvent:Ljava/util/List;

    const-string v2, "intArray"

    .line 1046
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6000
    iget-object v0, v0, Lo/requireFragmentManager;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/JniNativeApi;

    .line 5022
    invoke-virtual {v0, v1}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "adapter.toJson(intArray)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 1048
    invoke-interface {p1, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_2

    .line 1050
    :cond_2
    invoke-interface {p1, v1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 6020
    :goto_2
    iget-object p2, p2, Lo/getActivity;->onPostMessage:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1053
    invoke-static {p2}, Lo/requireFragmentManager;->onPostMessage(Landroid/graphics/drawable/GradientDrawable$Orientation;)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x4

    if-nez p2, :cond_3

    .line 1055
    invoke-interface {p1, v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    return-void

    .line 1057
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    return-void
.end method
