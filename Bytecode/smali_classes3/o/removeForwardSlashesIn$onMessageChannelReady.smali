.class final Lo/removeForwardSlashesIn$onMessageChannelReady;
.super Lo/addDelayedShutdownHook;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeForwardSlashesIn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private spec:Lo/lambda$awaitEvenIfOnMainThread$0;


# direct methods
.method public constructor <init>(Lo/lambda$awaitEvenIfOnMainThread$0;)V
    .locals 0

    .line 685
    invoke-direct {p0}, Lo/addDelayedShutdownHook;-><init>()V

    .line 686
    iput-object p1, p0, Lo/removeForwardSlashesIn$onMessageChannelReady;->spec:Lo/lambda$awaitEvenIfOnMainThread$0;

    return-void
.end method


# virtual methods
.method public final clone(Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/addDelayedShutdownHook;
    .locals 1

    .line 707
    new-instance v0, Lo/removeForwardSlashesIn$onMessageChannelReady;

    invoke-direct {v0, p1}, Lo/removeForwardSlashesIn$onMessageChannelReady;-><init>(Lo/lambda$awaitEvenIfOnMainThread$0;)V

    return-object v0
.end method

.method public final createEvent(Lo/sanitizeAttribute;Lo/lambda$awaitEvenIfOnMainThread$0;)Lo/getCustomKeys;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 723
    instance-of v0, p1, Lo/removeForwardSlashesIn$onMessageChannelReady;

    if-eqz v0, :cond_0

    check-cast p1, Lo/removeForwardSlashesIn$onMessageChannelReady;

    iget-object p1, p1, Lo/removeForwardSlashesIn$onMessageChannelReady;->spec:Lo/lambda$awaitEvenIfOnMainThread$0;

    iget-object v0, p0, Lo/removeForwardSlashesIn$onMessageChannelReady;->spec:Lo/lambda$awaitEvenIfOnMainThread$0;

    .line 724
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final fireCancelEvent(Lo/getMarkerFile;)V
    .locals 0

    return-void
.end method

.method public final fireEvent(Lo/getCustomKeys;)V
    .locals 0

    return-void
.end method

.method public final getQuerySpec()Lo/lambda$awaitEvenIfOnMainThread$0;
    .locals 1

    .line 718
    iget-object v0, p0, Lo/removeForwardSlashesIn$onMessageChannelReady;->spec:Lo/lambda$awaitEvenIfOnMainThread$0;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 729
    iget-object v0, p0, Lo/removeForwardSlashesIn$onMessageChannelReady;->spec:Lo/lambda$awaitEvenIfOnMainThread$0;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isSameListener(Lo/addDelayedShutdownHook;)Z
    .locals 0

    .line 712
    instance-of p1, p1, Lo/removeForwardSlashesIn$onMessageChannelReady;

    return p1
.end method

.method public final respondsTo(Lo/Utils$onNavigationEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
