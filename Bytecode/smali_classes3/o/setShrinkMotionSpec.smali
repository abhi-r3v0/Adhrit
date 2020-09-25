.class final Lo/setShrinkMotionSpec;
.super Lo/zzft;
.source ""


# instance fields
.field private final synthetic onMessageChannelReady:Lo/setChipSpacingResource;


# direct methods
.method constructor <init>(Lo/setChipSpacingResource;Lo/setChipStrokeWidthResource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setShrinkMotionSpec;->onMessageChannelReady:Lo/setChipSpacingResource;

    invoke-direct {p0, p2}, Lo/zzft;-><init>(Lo/setChipStrokeWidthResource;)V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 2

    .line 2
    iget-object v0, p0, Lo/setShrinkMotionSpec;->onMessageChannelReady:Lo/setChipSpacingResource;

    invoke-virtual {v0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Tasks have been queued for a long time"

    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method
