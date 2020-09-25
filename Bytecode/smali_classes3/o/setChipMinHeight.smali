.class final Lo/setChipMinHeight;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[B>;"
    }
.end annotation


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setCheckedIconResource;

.field private final synthetic onNavigationEvent:Lo/zzir;

.field private final synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/setCheckedIconResource;Lo/zzir;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setChipMinHeight;->ICustomTabsCallback:Lo/setCheckedIconResource;

    iput-object p2, p0, Lo/setChipMinHeight;->onNavigationEvent:Lo/zzir;

    iput-object p3, p0, Lo/setChipMinHeight;->onPostMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lo/setChipMinHeight;->ICustomTabsCallback:Lo/setCheckedIconResource;

    invoke-static {v0}, Lo/setCheckedIconResource;->onMessageChannelReady(Lo/setCheckedIconResource;)Lo/setHint;

    move-result-object v0

    invoke-virtual {v0}, Lo/setHint;->requestPostMessageChannel()V

    .line 4
    iget-object v0, p0, Lo/setChipMinHeight;->ICustomTabsCallback:Lo/setCheckedIconResource;

    invoke-static {v0}, Lo/setCheckedIconResource;->onMessageChannelReady(Lo/setCheckedIconResource;)Lo/setHint;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lo/setHint;->asInterface()Lo/setEnsureMinTouchTargetSize;

    move-result-object v0

    iget-object v1, p0, Lo/setChipMinHeight;->onNavigationEvent:Lo/zzir;

    iget-object v2, p0, Lo/setChipMinHeight;->onPostMessage:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1, v2}, Lo/setEnsureMinTouchTargetSize;->onPostMessage(Lo/zzir;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
