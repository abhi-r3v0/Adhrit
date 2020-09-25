.class public Lo/fU$onNavigationEvent;
.super Lo/ge;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/fU<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lo/fU$onNavigationEvent<",
        "TMessageType;TBuilderType;>;>",
        "Lo/ge<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/fU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected onNavigationEvent:Lo/fU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected onPostMessage:Z


# direct methods
.method protected constructor <init>(Lo/fU;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lo/ge;-><init>()V

    .line 2
    iput-object p1, p0, Lo/fU$onNavigationEvent;->extraCallback:Lo/fU;

    .line 3
    sget-object v0, Lo/fU$onPostMessage;->onMessageChannelReady:Lo/fU$onPostMessage;

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v1}, Lo/fU;->extraCallback(Lo/fU$onPostMessage;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lo/fU;

    iput-object p1, p0, Lo/fU$onNavigationEvent;->onNavigationEvent:Lo/fU;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    return-void
.end method

.method private static extraCallback(Lo/fU;Lo/fU;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 33
    invoke-static {}, Lo/PictureAttachmentActivity$a;->onPostMessage()Lo/PictureAttachmentActivity$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/PictureAttachmentActivity$a;->onPostMessage(Ljava/lang/Object;)Lo/C;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lo/C;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected ICustomTabsCallback$Stub()V
    .locals 3

    .line 8
    iget-object v0, p0, Lo/fU$onNavigationEvent;->onNavigationEvent:Lo/fU;

    sget-object v1, Lo/fU$onPostMessage;->onMessageChannelReady:Lo/fU$onPostMessage;

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2, v2}, Lo/fU;->extraCallback(Lo/fU$onPostMessage;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Lo/fU;

    .line 11
    iget-object v1, p0, Lo/fU$onNavigationEvent;->onNavigationEvent:Lo/fU;

    invoke-static {v0, v1}, Lo/fU$onNavigationEvent;->extraCallback(Lo/fU;Lo/fU;)V

    .line 12
    iput-object v0, p0, Lo/fU$onNavigationEvent;->onNavigationEvent:Lo/fU;

    return-void
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Lo/fU;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->getInterfaceDescriptor()Lo/aD;

    move-result-object v0

    check-cast v0, Lo/fU;

    .line 22
    invoke-virtual {v0}, Lo/fU;->IPostMessageService$Stub$Proxy()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 24
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/firebase-perf/zzic;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/firebase-perf/zzic;-><init>(Lo/aD;)V

    .line 25
    throw v1
.end method

.method public synthetic ICustomTabsService()Lo/aD;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy()Lo/fU;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic INotificationSideChannel$Default()Lo/aD;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/fU$onNavigationEvent;->extraCallback:Lo/fU;

    return-object v0
.end method

.method public final IPostMessageService$Stub$Proxy()Z
    .locals 2

    .line 14
    iget-object v0, p0, Lo/fU$onNavigationEvent;->onNavigationEvent:Lo/fU;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/fU;->onNavigationEvent(Lo/fU;Z)Z

    move-result v0

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lo/fU$onNavigationEvent;->extraCallback:Lo/fU;

    .line 47
    check-cast v0, Lo/fU;

    .line 48
    sget-object v1, Lo/fU$onPostMessage;->ICustomTabsCallback:Lo/fU$onPostMessage;

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v1, v2, v2}, Lo/fU;->extraCallback(Lo/fU$onPostMessage;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 50
    check-cast v0, Lo/fU$onNavigationEvent;

    .line 52
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->getInterfaceDescriptor()Lo/aD;

    move-result-object v1

    check-cast v1, Lo/fU;

    invoke-virtual {v0, v1}, Lo/fU$onNavigationEvent;->onNavigationEvent(Lo/fU;)Lo/fU$onNavigationEvent;

    return-object v0
.end method

.method public synthetic getInterfaceDescriptor()Lo/aD;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->onTransact()Lo/fU;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent(Lo/fU;)Lo/fU$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 28
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lo/fU$onNavigationEvent;->ICustomTabsCallback$Stub()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 31
    :cond_0
    iget-object v0, p0, Lo/fU$onNavigationEvent;->onNavigationEvent:Lo/fU;

    invoke-static {v0, p1}, Lo/fU$onNavigationEvent;->extraCallback(Lo/fU;Lo/fU;)V

    return-object p0
.end method

.method protected final synthetic onPostMessage(Lo/gb;)Lo/ge;
    .locals 0

    .line 35
    check-cast p1, Lo/fU;

    .line 36
    invoke-virtual {p0, p1}, Lo/fU$onNavigationEvent;->onNavigationEvent(Lo/fU;)Lo/fU$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onRelationshipValidationResult()Lo/ge;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lo/ge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/fU$onNavigationEvent;

    return-object v0
.end method

.method public onTransact()Lo/fU;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 15
    iget-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lo/fU$onNavigationEvent;->onNavigationEvent:Lo/fU;

    return-object v0

    .line 17
    :cond_0
    iget-object v0, p0, Lo/fU$onNavigationEvent;->onNavigationEvent:Lo/fU;

    .line 18
    invoke-static {}, Lo/PictureAttachmentActivity$a;->onPostMessage()Lo/PictureAttachmentActivity$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/PictureAttachmentActivity$a;->onPostMessage(Ljava/lang/Object;)Lo/C;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/C;->onMessageChannelReady(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lo/fU$onNavigationEvent;->onPostMessage:Z

    .line 20
    iget-object v0, p0, Lo/fU$onNavigationEvent;->onNavigationEvent:Lo/fU;

    return-object v0
.end method
