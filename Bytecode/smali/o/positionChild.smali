.class public final Lo/positionChild;
.super Lo/measureChildView;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/measureChildView<",
        "Lo/getIconUri$onMessageChannelReady;",
        ">;"
    }
.end annotation


# instance fields
.field private final onPostMessage:Lo/getIconUri$onMessageChannelReady;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/ActionMenuView<",
            "Lo/getIconUri$onMessageChannelReady;",
            ">;>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lo/measureChildView;-><init>(Ljava/util/List;)V

    .line 11
    new-instance p1, Lo/getIconUri$onMessageChannelReady;

    invoke-direct {p1}, Lo/getIconUri$onMessageChannelReady;-><init>()V

    iput-object p1, p0, Lo/positionChild;->onPostMessage:Lo/getIconUri$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Lo/ActionMenuView;F)Ljava/lang/Object;
    .locals 4

    .line 1018
    iget-object v0, p1, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lo/ActionMenuView;->onNavigationEvent:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1021
    iget-object v0, p1, Lo/ActionMenuView;->onPostMessage:Ljava/lang/Object;

    check-cast v0, Lo/getIconUri$onMessageChannelReady;

    .line 1022
    iget-object p1, p1, Lo/ActionMenuView;->onNavigationEvent:Ljava/lang/Object;

    check-cast p1, Lo/getIconUri$onMessageChannelReady;

    .line 1024
    iget-object v1, p0, Lo/isOverflowMenuShowPending;->onNavigationEvent:Lo/onMeasureExactFormat;

    if-eqz v1, :cond_0

    .line 1026
    iget-object v1, p0, Lo/isOverflowMenuShowPending;->onNavigationEvent:Lo/onMeasureExactFormat;

    .line 1028
    invoke-virtual {p0}, Lo/positionChild;->onNavigationEvent()F

    invoke-virtual {p0}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback$Stub()F

    .line 1058
    invoke-virtual {v1}, Lo/onMeasureExactFormat;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    .line 1026
    check-cast v1, Lo/getIconUri$onMessageChannelReady;

    if-eqz v1, :cond_0

    return-object v1

    .line 1034
    :cond_0
    iget-object v1, p0, Lo/positionChild;->onPostMessage:Lo/getIconUri$onMessageChannelReady;

    .line 3017
    iget v2, v0, Lo/getIconUri$onMessageChannelReady;->ICustomTabsCallback:F

    .line 4017
    iget v3, p1, Lo/getIconUri$onMessageChannelReady;->ICustomTabsCallback:F

    .line 1035
    invoke-static {v2, v3, p2}, Lo/onContentScrollStopped;->onMessageChannelReady(FFF)F

    move-result v2

    .line 4021
    iget v0, v0, Lo/getIconUri$onMessageChannelReady;->extraCallback:F

    .line 5021
    iget p1, p1, Lo/getIconUri$onMessageChannelReady;->extraCallback:F

    .line 1036
    invoke-static {v0, p1, p2}, Lo/onContentScrollStopped;->onMessageChannelReady(FFF)F

    move-result p1

    .line 5025
    iput v2, v1, Lo/getIconUri$onMessageChannelReady;->ICustomTabsCallback:F

    .line 5026
    iput p1, v1, Lo/getIconUri$onMessageChannelReady;->extraCallback:F

    .line 1038
    iget-object p1, p0, Lo/positionChild;->onPostMessage:Lo/getIconUri$onMessageChannelReady;

    return-object p1

    .line 1019
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing values for keyframe."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
