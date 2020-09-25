.class public Lo/MarketingMessageStatus$extraCallback;
.super Lo/getQuestion;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MarketingMessageStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/MarketingMessageStatus<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lo/MarketingMessageStatus$extraCallback<",
        "TMessageType;TBuilderType;>;>",
        "Lo/getQuestion<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected ICustomTabsCallback:Lo/MarketingMessageStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected onMessageChannelReady:Z

.field private final onNavigationEvent:Lo/MarketingMessageStatus;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lo/MarketingMessageStatus;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lo/getQuestion;-><init>()V

    .line 2
    iput-object p1, p0, Lo/MarketingMessageStatus$extraCallback;->onNavigationEvent:Lo/MarketingMessageStatus;

    .line 3
    sget v0, Lo/MarketingMessageStatus$onMessageChannelReady;->onPostMessage:I

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1, v1}, Lo/MarketingMessageStatus;->extraCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Lo/MarketingMessageStatus;

    iput-object p1, p0, Lo/MarketingMessageStatus$extraCallback;->ICustomTabsCallback:Lo/MarketingMessageStatus;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lo/MarketingMessageStatus$extraCallback;->onMessageChannelReady:Z

    return-void
.end method

.method private static onPostMessage(Lo/MarketingMessageStatus;Lo/MarketingMessageStatus;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 35
    invoke-static {}, Lo/messageUserType;->onNavigationEvent()Lo/messageUserType;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/messageUserType;->onPostMessage(Ljava/lang/Object;)Lo/setReplacementStr;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lo/setReplacementStr;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final H_()Z
    .locals 2

    .line 16
    iget-object v0, p0, Lo/MarketingMessageStatus$extraCallback;->ICustomTabsCallback:Lo/MarketingMessageStatus;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/MarketingMessageStatus;->onNavigationEvent(Lo/MarketingMessageStatus;Z)Z

    move-result v0

    return v0
.end method

.method public final synthetic ICustomTabsCallback()Lo/getQuestion;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lo/getQuestion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MarketingMessageStatus$extraCallback;

    return-object v0
.end method

.method public synthetic asInterface()Lo/access$502;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lo/MarketingMessageStatus$extraCallback;->onMessageChannelReady()Lo/MarketingMessageStatus;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lo/MarketingMessageStatus$extraCallback;->onNavigationEvent:Lo/MarketingMessageStatus;

    .line 49
    check-cast v0, Lo/MarketingMessageStatus;

    .line 50
    sget v1, Lo/MarketingMessageStatus$onMessageChannelReady;->onNavigationEvent:I

    const/4 v2, 0x0

    .line 51
    invoke-virtual {v0, v1, v2, v2}, Lo/MarketingMessageStatus;->extraCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    check-cast v0, Lo/MarketingMessageStatus$extraCallback;

    .line 54
    invoke-virtual {p0}, Lo/MarketingMessageStatus$extraCallback;->onNavigationEvent()Lo/access$502;

    move-result-object v1

    check-cast v1, Lo/MarketingMessageStatus;

    invoke-virtual {v0, v1}, Lo/MarketingMessageStatus$extraCallback;->onNavigationEvent(Lo/MarketingMessageStatus;)Lo/MarketingMessageStatus$extraCallback;

    return-object v0
.end method

.method public extraCallback()Lo/MarketingMessageStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 17
    iget-boolean v0, p0, Lo/MarketingMessageStatus$extraCallback;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lo/MarketingMessageStatus$extraCallback;->ICustomTabsCallback:Lo/MarketingMessageStatus;

    return-object v0

    .line 19
    :cond_0
    iget-object v0, p0, Lo/MarketingMessageStatus$extraCallback;->ICustomTabsCallback:Lo/MarketingMessageStatus;

    .line 20
    invoke-static {}, Lo/messageUserType;->onNavigationEvent()Lo/messageUserType;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/messageUserType;->onPostMessage(Ljava/lang/Object;)Lo/setReplacementStr;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/setReplacementStr;->onNavigationEvent(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lo/MarketingMessageStatus$extraCallback;->onMessageChannelReady:Z

    .line 22
    iget-object v0, p0, Lo/MarketingMessageStatus$extraCallback;->ICustomTabsCallback:Lo/MarketingMessageStatus;

    return-object v0
.end method

.method protected final synthetic extraCallback(Lo/Csat;)Lo/getQuestion;
    .locals 0

    .line 37
    check-cast p1, Lo/MarketingMessageStatus;

    .line 38
    invoke-virtual {p0, p1}, Lo/MarketingMessageStatus$extraCallback;->onNavigationEvent(Lo/MarketingMessageStatus;)Lo/MarketingMessageStatus$extraCallback;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady()Lo/MarketingMessageStatus;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lo/MarketingMessageStatus$extraCallback;->onNavigationEvent()Lo/access$502;

    move-result-object v0

    check-cast v0, Lo/MarketingMessageStatus;

    .line 24
    invoke-virtual {v0}, Lo/MarketingMessageStatus;->H_()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 26
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/firebase_auth/zzla;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase_auth/zzla;-><init>(Lo/access$502;)V

    .line 27
    throw v1
.end method

.method public final onNavigationEvent(Lo/MarketingMessageStatus;)Lo/MarketingMessageStatus$extraCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 30
    iget-boolean v0, p0, Lo/MarketingMessageStatus$extraCallback;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lo/MarketingMessageStatus$extraCallback;->onPostMessage()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lo/MarketingMessageStatus$extraCallback;->onMessageChannelReady:Z

    .line 33
    :cond_0
    iget-object v0, p0, Lo/MarketingMessageStatus$extraCallback;->ICustomTabsCallback:Lo/MarketingMessageStatus;

    invoke-static {v0, p1}, Lo/MarketingMessageStatus$extraCallback;->onPostMessage(Lo/MarketingMessageStatus;Lo/MarketingMessageStatus;)V

    return-object p0
.end method

.method public synthetic onNavigationEvent()Lo/access$502;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lo/MarketingMessageStatus$extraCallback;->extraCallback()Lo/MarketingMessageStatus;

    move-result-object v0

    return-object v0
.end method

.method protected onPostMessage()V
    .locals 3

    .line 9
    iget-object v0, p0, Lo/MarketingMessageStatus$extraCallback;->ICustomTabsCallback:Lo/MarketingMessageStatus;

    sget v1, Lo/MarketingMessageStatus$onMessageChannelReady;->onPostMessage:I

    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, v2, v2}, Lo/MarketingMessageStatus;->extraCallback(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 12
    check-cast v0, Lo/MarketingMessageStatus;

    .line 13
    iget-object v1, p0, Lo/MarketingMessageStatus$extraCallback;->ICustomTabsCallback:Lo/MarketingMessageStatus;

    invoke-static {v0, v1}, Lo/MarketingMessageStatus$extraCallback;->onPostMessage(Lo/MarketingMessageStatus;Lo/MarketingMessageStatus;)V

    .line 14
    iput-object v0, p0, Lo/MarketingMessageStatus$extraCallback;->ICustomTabsCallback:Lo/MarketingMessageStatus;

    return-void
.end method

.method public final synthetic onRelationshipValidationResult()Lo/access$502;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/MarketingMessageStatus$extraCallback;->onNavigationEvent:Lo/MarketingMessageStatus;

    return-object v0
.end method
