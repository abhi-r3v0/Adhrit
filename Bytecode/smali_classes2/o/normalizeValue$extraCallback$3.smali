.class final Lo/normalizeValue$extraCallback$3;
.super Lo/normalizeValue$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/normalizeValue$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 926
    invoke-direct {p0}, Lo/normalizeValue$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/getServerCache;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 928
    sget-object v0, Lo/getNodeFilter;->onNavigationEvent:Lo/getNodeFilter;

    .line 1240
    invoke-virtual {p1, v0}, Lo/getServerCache;->onPostMessage(Lo/getNodeFilter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1243
    iget-object v1, p1, Lo/getServerCache;->ICustomTabsCallback:Lo/normalizeValue;

    iget p1, p1, Lo/getServerCache;->onMessageChannelReady:I

    .line 1341
    iget-object v1, v1, Lo/normalizeValue;->getInterfaceDescriptor:Lo/updateServerSnap;

    invoke-virtual {v1, p1, v0}, Lo/updateServerSnap;->onPostMessage(ILo/getNodeFilter;)V

    :cond_0
    return-void
.end method
