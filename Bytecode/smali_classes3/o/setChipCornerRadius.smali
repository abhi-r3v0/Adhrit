.class final Lo/setChipCornerRadius;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/zzir;

.field private final synthetic extraCallback:Lo/setCounterTextAppearance;

.field private final synthetic onMessageChannelReady:Lo/setCheckedIconResource;


# direct methods
.method constructor <init>(Lo/setCheckedIconResource;Lo/zzir;Lo/setCounterTextAppearance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setChipCornerRadius;->onMessageChannelReady:Lo/setCheckedIconResource;

    iput-object p2, p0, Lo/setChipCornerRadius;->ICustomTabsCallback:Lo/zzir;

    iput-object p3, p0, Lo/setChipCornerRadius;->extraCallback:Lo/setCounterTextAppearance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2
    iget-object v0, p0, Lo/setChipCornerRadius;->onMessageChannelReady:Lo/setCheckedIconResource;

    iget-object v1, p0, Lo/setChipCornerRadius;->ICustomTabsCallback:Lo/zzir;

    iget-object v2, p0, Lo/setChipCornerRadius;->extraCallback:Lo/setCounterTextAppearance;

    .line 3
    invoke-virtual {v0, v1, v2}, Lo/setCheckedIconResource;->ICustomTabsCallback(Lo/zzir;Lo/setCounterTextAppearance;)Lo/zzir;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lo/setChipCornerRadius;->onMessageChannelReady:Lo/setCheckedIconResource;

    invoke-static {v1}, Lo/setCheckedIconResource;->onMessageChannelReady(Lo/setCheckedIconResource;)Lo/setHint;

    move-result-object v1

    invoke-virtual {v1}, Lo/setHint;->requestPostMessageChannel()V

    .line 5
    iget-object v1, p0, Lo/setChipCornerRadius;->onMessageChannelReady:Lo/setCheckedIconResource;

    invoke-static {v1}, Lo/setCheckedIconResource;->onMessageChannelReady(Lo/setCheckedIconResource;)Lo/setHint;

    move-result-object v1

    iget-object v2, p0, Lo/setChipCornerRadius;->extraCallback:Lo/setCounterTextAppearance;

    invoke-virtual {v1, v0, v2}, Lo/setHint;->onPostMessage(Lo/zzir;Lo/setCounterTextAppearance;)V

    return-void
.end method
