.class final Lo/setMaxLines;
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
.field private final synthetic ICustomTabsCallback:Ljava/lang/String;

.field private final synthetic onMessageChannelReady:Lo/setCounterTextAppearance;

.field private final synthetic onNavigationEvent:Ljava/lang/String;

.field private final synthetic onPostMessage:Lo/setCheckedIconResource;


# direct methods
.method constructor <init>(Lo/setCheckedIconResource;Lo/setCounterTextAppearance;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setMaxLines;->onPostMessage:Lo/setCheckedIconResource;

    iput-object p2, p0, Lo/setMaxLines;->onMessageChannelReady:Lo/setCounterTextAppearance;

    iput-object p3, p0, Lo/setMaxLines;->onNavigationEvent:Ljava/lang/String;

    iput-object p4, p0, Lo/setMaxLines;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lo/setMaxLines;->onPostMessage:Lo/setCheckedIconResource;

    invoke-static {v0}, Lo/setCheckedIconResource;->onMessageChannelReady(Lo/setCheckedIconResource;)Lo/setHint;

    move-result-object v0

    invoke-virtual {v0}, Lo/setHint;->requestPostMessageChannel()V

    .line 4
    iget-object v0, p0, Lo/setMaxLines;->onPostMessage:Lo/setCheckedIconResource;

    invoke-static {v0}, Lo/setCheckedIconResource;->onMessageChannelReady(Lo/setCheckedIconResource;)Lo/setHint;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lo/setHint;->onPostMessage()Lo/zzzv;

    move-result-object v0

    iget-object v1, p0, Lo/setMaxLines;->onMessageChannelReady:Lo/setCounterTextAppearance;

    iget-object v1, v1, Lo/setCounterTextAppearance;->onMessageChannelReady:Ljava/lang/String;

    iget-object v2, p0, Lo/setMaxLines;->onNavigationEvent:Ljava/lang/String;

    iget-object v3, p0, Lo/setMaxLines;->ICustomTabsCallback:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lo/zzzv;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
