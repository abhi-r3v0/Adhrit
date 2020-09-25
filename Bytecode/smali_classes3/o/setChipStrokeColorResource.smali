.class final Lo/setChipStrokeColorResource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setCheckedIconResource;

.field private final synthetic onMessageChannelReady:Lo/setCounterTextAppearance;


# direct methods
.method constructor <init>(Lo/setCheckedIconResource;Lo/setCounterTextAppearance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setChipStrokeColorResource;->ICustomTabsCallback:Lo/setCheckedIconResource;

    iput-object p2, p0, Lo/setChipStrokeColorResource;->onMessageChannelReady:Lo/setCounterTextAppearance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lo/setChipStrokeColorResource;->ICustomTabsCallback:Lo/setCheckedIconResource;

    invoke-static {v0}, Lo/setCheckedIconResource;->onMessageChannelReady(Lo/setCheckedIconResource;)Lo/setHint;

    move-result-object v0

    invoke-virtual {v0}, Lo/setHint;->requestPostMessageChannel()V

    .line 3
    iget-object v0, p0, Lo/setChipStrokeColorResource;->ICustomTabsCallback:Lo/setCheckedIconResource;

    invoke-static {v0}, Lo/setCheckedIconResource;->onMessageChannelReady(Lo/setCheckedIconResource;)Lo/setHint;

    move-result-object v0

    iget-object v1, p0, Lo/setChipStrokeColorResource;->onMessageChannelReady:Lo/setCounterTextAppearance;

    invoke-virtual {v0, v1}, Lo/setHint;->onMessageChannelReady(Lo/setCounterTextAppearance;)V

    return-void
.end method
