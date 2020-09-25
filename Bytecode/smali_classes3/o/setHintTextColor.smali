.class abstract Lo/setHintTextColor;
.super Lo/setHintEnabled;
.source ""


# instance fields
.field private onMessageChannelReady:Z


# direct methods
.method constructor <init>(Lo/setHint;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lo/setHintEnabled;-><init>(Lo/setHint;)V

    .line 2
    iget-object p1, p0, Lo/setHintTextColor;->extraCallback:Lo/setHint;

    invoke-virtual {p1, p0}, Lo/setHint;->onPostMessage(Lo/setHintTextColor;)V

    return-void
.end method


# virtual methods
.method public final AudioAttributesCompatParcelizer()V
    .locals 2

    .line 8
    iget-boolean v0, p0, Lo/setHintTextColor;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lo/setHintTextColor;->onNavigationEvent()Z

    .line 11
    iget-object v0, p0, Lo/setHintTextColor;->extraCallback:Lo/setHint;

    invoke-virtual {v0}, Lo/setHint;->extraCommand()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lo/setHintTextColor;->onMessageChannelReady:Z

    return-void

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final RemoteActionCompatParcelizer()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lo/setHintTextColor;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onNavigationEvent()Z
.end method

.method protected final read()V
    .locals 2

    .line 5
    invoke-virtual {p0}, Lo/setHintTextColor;->RemoteActionCompatParcelizer()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
