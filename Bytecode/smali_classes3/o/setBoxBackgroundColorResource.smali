.class final Lo/setBoxBackgroundColorResource;
.super Lo/zzft;
.source ""


# instance fields
.field private final synthetic extraCallback:Lo/setBoxCornerRadii;

.field private final synthetic onPostMessage:Lo/setHint;


# direct methods
.method constructor <init>(Lo/setBoxCornerRadii;Lo/setChipStrokeWidthResource;Lo/setHint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setBoxBackgroundColorResource;->extraCallback:Lo/setBoxCornerRadii;

    iput-object p3, p0, Lo/setBoxBackgroundColorResource;->onPostMessage:Lo/setHint;

    invoke-direct {p0, p2}, Lo/zzft;-><init>(Lo/setChipStrokeWidthResource;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    .line 2
    iget-object v0, p0, Lo/setBoxBackgroundColorResource;->extraCallback:Lo/setBoxCornerRadii;

    invoke-virtual {v0}, Lo/setBoxCornerRadii;->onPostMessage()V

    .line 3
    iget-object v0, p0, Lo/setBoxBackgroundColorResource;->extraCallback:Lo/setBoxCornerRadii;

    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Starting upload from DelayedRunnable"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lo/setBoxBackgroundColorResource;->onPostMessage:Lo/setHint;

    invoke-virtual {v0}, Lo/setHint;->ICustomTabsService()V

    return-void
.end method
