.class final Lo/setChipStrokeWidth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lo/setErrorIconDrawable;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final synthetic extraCallback:Lo/setCheckedIconResource;

.field private final synthetic onMessageChannelReady:Lo/setCounterTextAppearance;


# direct methods
.method constructor <init>(Lo/setCheckedIconResource;Lo/setCounterTextAppearance;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setChipStrokeWidth;->extraCallback:Lo/setCheckedIconResource;

    iput-object p2, p0, Lo/setChipStrokeWidth;->onMessageChannelReady:Lo/setCounterTextAppearance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lo/setChipStrokeWidth;->extraCallback:Lo/setCheckedIconResource;

    invoke-static {v0}, Lo/setCheckedIconResource;->onMessageChannelReady(Lo/setCheckedIconResource;)Lo/setHint;

    move-result-object v0

    invoke-virtual {v0}, Lo/setHint;->requestPostMessageChannel()V

    .line 4
    iget-object v0, p0, Lo/setChipStrokeWidth;->extraCallback:Lo/setCheckedIconResource;

    invoke-static {v0}, Lo/setCheckedIconResource;->onMessageChannelReady(Lo/setCheckedIconResource;)Lo/setHint;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v0

    iget-object v1, p0, Lo/setChipStrokeWidth;->onMessageChannelReady:Lo/setCounterTextAppearance;

    iget-object v1, v1, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Lo/zzzv;->extraCallback(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
