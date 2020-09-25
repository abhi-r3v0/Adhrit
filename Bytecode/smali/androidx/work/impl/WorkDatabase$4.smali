.class final Landroidx/work/impl/WorkDatabase$4;
.super Lo/setCurrentControllerInfo$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/impl/WorkDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 158
    invoke-direct {p0}, Lo/setCurrentControllerInfo$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/MediaControllerCompatApi21$Callback;)V
    .locals 1

    .line 161
    invoke-super {p0, p1}, Lo/setCurrentControllerInfo$onPostMessage;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$Callback;)V

    .line 162
    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    .line 166
    :try_start_0
    invoke-static {}, Landroidx/work/impl/WorkDatabase;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent(Ljava/lang/String;)V

    .line 167
    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->ICustomTabsCallback()V

    return-void

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->ICustomTabsCallback()V

    .line 170
    throw v0
.end method
