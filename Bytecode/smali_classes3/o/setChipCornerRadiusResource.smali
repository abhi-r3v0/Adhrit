.class final Lo/setChipCornerRadiusResource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Lo/setCounterTextAppearance;

.field private final synthetic onMessageChannelReady:Lo/setCheckedIconResource;

.field private final synthetic onNavigationEvent:Lo/setError;


# direct methods
.method constructor <init>(Lo/setCheckedIconResource;Lo/setError;Lo/setCounterTextAppearance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setChipCornerRadiusResource;->onMessageChannelReady:Lo/setCheckedIconResource;

    iput-object p2, p0, Lo/setChipCornerRadiusResource;->onNavigationEvent:Lo/setError;

    iput-object p3, p0, Lo/setChipCornerRadiusResource;->extraCallback:Lo/setCounterTextAppearance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lo/setChipCornerRadiusResource;->onMessageChannelReady:Lo/setCheckedIconResource;

    invoke-static {v0}, Lo/setCheckedIconResource;->onMessageChannelReady(Lo/setCheckedIconResource;)Lo/setHint;

    move-result-object v0

    invoke-virtual {v0}, Lo/setHint;->requestPostMessageChannel()V

    .line 3
    iget-object v0, p0, Lo/setChipCornerRadiusResource;->onNavigationEvent:Lo/setError;

    invoke-virtual {v0}, Lo/setError;->extraCallback()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lo/setChipCornerRadiusResource;->onMessageChannelReady:Lo/setCheckedIconResource;

    invoke-static {v0}, Lo/setCheckedIconResource;->onMessageChannelReady(Lo/setCheckedIconResource;)Lo/setHint;

    move-result-object v0

    iget-object v1, p0, Lo/setChipCornerRadiusResource;->onNavigationEvent:Lo/setError;

    iget-object v2, p0, Lo/setChipCornerRadiusResource;->extraCallback:Lo/setCounterTextAppearance;

    invoke-virtual {v0, v1, v2}, Lo/setHint;->onMessageChannelReady(Lo/setError;Lo/setCounterTextAppearance;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lo/setChipCornerRadiusResource;->onMessageChannelReady:Lo/setCheckedIconResource;

    invoke-static {v0}, Lo/setCheckedIconResource;->onMessageChannelReady(Lo/setCheckedIconResource;)Lo/setHint;

    move-result-object v0

    iget-object v1, p0, Lo/setChipCornerRadiusResource;->onNavigationEvent:Lo/setError;

    iget-object v2, p0, Lo/setChipCornerRadiusResource;->extraCallback:Lo/setCounterTextAppearance;

    invoke-virtual {v0, v1, v2}, Lo/setHint;->onNavigationEvent(Lo/setError;Lo/setCounterTextAppearance;)V

    return-void
.end method
