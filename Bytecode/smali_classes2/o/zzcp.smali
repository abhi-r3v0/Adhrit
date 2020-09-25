.class final Lo/zzcp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onMessageChannelReady:Lo/zzft;

.field private final synthetic onPostMessage:Lo/setChipStrokeWidthResource;


# direct methods
.method constructor <init>(Lo/zzft;Lo/setChipStrokeWidthResource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/zzcp;->onMessageChannelReady:Lo/zzft;

    iput-object p2, p0, Lo/zzcp;->onPostMessage:Lo/setChipStrokeWidthResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 2
    iget-object v0, p0, Lo/zzcp;->onPostMessage:Lo/setChipStrokeWidthResource;

    invoke-interface {v0}, Lo/setChipStrokeWidthResource;->updateVisuals()Lo/setStartIconContentDescription;

    invoke-static {}, Lo/setStartIconContentDescription;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lo/zzcp;->onPostMessage:Lo/setChipStrokeWidthResource;

    invoke-interface {v0}, Lo/setChipStrokeWidthResource;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/setShapeAppearanceModel;->ICustomTabsCallback(Ljava/lang/Runnable;)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lo/zzcp;->onMessageChannelReady:Lo/zzft;

    invoke-virtual {v0}, Lo/zzft;->onNavigationEvent()Z

    move-result v0

    .line 5
    iget-object v1, p0, Lo/zzcp;->onMessageChannelReady:Lo/zzft;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lo/zzft;->onNavigationEvent(Lo/zzft;J)J

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lo/zzcp;->onMessageChannelReady:Lo/zzft;

    invoke-virtual {v0}, Lo/zzft;->extraCallback()V

    :cond_1
    return-void
.end method
