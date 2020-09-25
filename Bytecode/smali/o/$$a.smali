.class final Lo/$$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setEnabled;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/$$a$onPostMessage;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/Parameter;

.field private extraCallback:Lo/setEnabled;

.field private final onNavigationEvent:Lo/$$a$onPostMessage;

.field private onPostMessage:Lo/HuaweiReferrer;


# direct methods
.method public constructor <init>(Lo/$$a$onPostMessage;Lo/CheckoutBuilder$PolingRemoteConfig;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lo/$$a;->onNavigationEvent:Lo/$$a$onPostMessage;

    .line 59
    new-instance p1, Lo/Parameter;

    invoke-direct {p1, p2}, Lo/Parameter;-><init>(Lo/CheckoutBuilder$PolingRemoteConfig;)V

    iput-object p1, p0, Lo/$$a;->ICustomTabsCallback:Lo/Parameter;

    return-void
.end method

.method private ICustomTabsCallback$Stub()V
    .locals 3

    .line 160
    iget-object v0, p0, Lo/$$a;->extraCallback:Lo/setEnabled;

    invoke-interface {v0}, Lo/setEnabled;->onMessageChannelReady()J

    move-result-wide v0

    .line 161
    iget-object v2, p0, Lo/$$a;->ICustomTabsCallback:Lo/Parameter;

    invoke-virtual {v2, v0, v1}, Lo/Parameter;->onNavigationEvent(J)V

    .line 162
    iget-object v0, p0, Lo/$$a;->extraCallback:Lo/setEnabled;

    invoke-interface {v0}, Lo/setEnabled;->onPostMessage()Lo/r;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lo/$$a;->ICustomTabsCallback:Lo/Parameter;

    invoke-virtual {v1}, Lo/Parameter;->onPostMessage()Lo/r;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p0, Lo/$$a;->ICustomTabsCallback:Lo/Parameter;

    invoke-virtual {v1, v0}, Lo/Parameter;->ICustomTabsCallback(Lo/r;)Lo/r;

    .line 165
    iget-object v1, p0, Lo/$$a;->onNavigationEvent:Lo/$$a$onPostMessage;

    invoke-interface {v1, v0}, Lo/$$a$onPostMessage;->onNavigationEvent(Lo/r;)V

    :cond_0
    return-void
.end method

.method private onRelationshipValidationResult()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lo/$$a;->onPostMessage:Lo/HuaweiReferrer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/HuaweiReferrer;->IPostMessageService$Stub()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/$$a;->onPostMessage:Lo/HuaweiReferrer;

    .line 175
    invoke-interface {v0}, Lo/HuaweiReferrer;->ICustomTabsService$Stub$Proxy()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/$$a;->onPostMessage:Lo/HuaweiReferrer;

    invoke-interface {v0}, Lo/HuaweiReferrer;->onTransact()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/r;)Lo/r;
    .locals 1

    .line 145
    iget-object v0, p0, Lo/$$a;->extraCallback:Lo/setEnabled;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0, p1}, Lo/setEnabled;->ICustomTabsCallback(Lo/r;)Lo/r;

    move-result-object p1

    .line 148
    :cond_0
    iget-object v0, p0, Lo/$$a;->ICustomTabsCallback:Lo/Parameter;

    invoke-virtual {v0, p1}, Lo/Parameter;->ICustomTabsCallback(Lo/r;)Lo/r;

    .line 149
    iget-object v0, p0, Lo/$$a;->onNavigationEvent:Lo/$$a$onPostMessage;

    invoke-interface {v0, p1}, Lo/$$a$onPostMessage;->onNavigationEvent(Lo/r;)V

    return-object p1
.end method

.method public final ICustomTabsCallback()V
    .locals 1

    .line 73
    iget-object v0, p0, Lo/$$a;->ICustomTabsCallback:Lo/Parameter;

    invoke-virtual {v0}, Lo/Parameter;->extraCallback()V

    return-void
.end method

.method public final extraCallback()J
    .locals 2

    .line 124
    invoke-direct {p0}, Lo/$$a;->onRelationshipValidationResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0}, Lo/$$a;->ICustomTabsCallback$Stub()V

    .line 126
    iget-object v0, p0, Lo/$$a;->extraCallback:Lo/setEnabled;

    invoke-interface {v0}, Lo/setEnabled;->onMessageChannelReady()J

    move-result-wide v0

    return-wide v0

    .line 128
    :cond_0
    iget-object v0, p0, Lo/$$a;->ICustomTabsCallback:Lo/Parameter;

    invoke-virtual {v0}, Lo/Parameter;->onMessageChannelReady()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onMessageChannelReady()J
    .locals 2

    .line 136
    invoke-direct {p0}, Lo/$$a;->onRelationshipValidationResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lo/$$a;->extraCallback:Lo/setEnabled;

    invoke-interface {v0}, Lo/setEnabled;->onMessageChannelReady()J

    move-result-wide v0

    return-wide v0

    .line 139
    :cond_0
    iget-object v0, p0, Lo/$$a;->ICustomTabsCallback:Lo/Parameter;

    invoke-virtual {v0}, Lo/Parameter;->onMessageChannelReady()J

    move-result-wide v0

    return-wide v0
.end method

.method public final onNavigationEvent()V
    .locals 1

    .line 66
    iget-object v0, p0, Lo/$$a;->ICustomTabsCallback:Lo/Parameter;

    invoke-virtual {v0}, Lo/Parameter;->onNavigationEvent()V

    return-void
.end method

.method public final onNavigationEvent(Lo/HuaweiReferrer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 94
    invoke-interface {p1}, Lo/HuaweiReferrer;->onNavigationEvent()Lo/setEnabled;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v1, p0, Lo/$$a;->extraCallback:Lo/setEnabled;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    .line 100
    iput-object v0, p0, Lo/$$a;->extraCallback:Lo/setEnabled;

    .line 101
    iput-object p1, p0, Lo/$$a;->onPostMessage:Lo/HuaweiReferrer;

    .line 102
    iget-object p1, p0, Lo/$$a;->ICustomTabsCallback:Lo/Parameter;

    invoke-virtual {p1}, Lo/Parameter;->onPostMessage()Lo/r;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/setEnabled;->ICustomTabsCallback(Lo/r;)Lo/r;

    .line 103
    invoke-direct {p0}, Lo/$$a;->ICustomTabsCallback$Stub()V

    goto :goto_0

    .line 97
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/exoplayer2/ExoPlaybackException;->extraCallback(Ljava/lang/RuntimeException;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public final onPostMessage()Lo/r;
    .locals 1

    .line 155
    iget-object v0, p0, Lo/$$a;->extraCallback:Lo/setEnabled;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/setEnabled;->onPostMessage()Lo/r;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/$$a;->ICustomTabsCallback:Lo/Parameter;

    .line 156
    invoke-virtual {v0}, Lo/Parameter;->onPostMessage()Lo/r;

    move-result-object v0

    return-object v0
.end method

.method public final onPostMessage(J)V
    .locals 1

    .line 82
    iget-object v0, p0, Lo/$$a;->ICustomTabsCallback:Lo/Parameter;

    invoke-virtual {v0, p1, p2}, Lo/Parameter;->onNavigationEvent(J)V

    return-void
.end method

.method public final onPostMessage(Lo/HuaweiReferrer;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lo/$$a;->onPostMessage:Lo/HuaweiReferrer;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 115
    iput-object p1, p0, Lo/$$a;->extraCallback:Lo/setEnabled;

    .line 116
    iput-object p1, p0, Lo/$$a;->onPostMessage:Lo/HuaweiReferrer;

    :cond_0
    return-void
.end method
