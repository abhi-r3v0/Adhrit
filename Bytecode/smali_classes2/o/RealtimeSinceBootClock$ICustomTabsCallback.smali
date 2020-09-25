.class public Lo/RealtimeSinceBootClock$ICustomTabsCallback;
.super Lo/setButtonStyle$default;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RealtimeSinceBootClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/RealtimeSinceBootClock<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lo/RealtimeSinceBootClock$ICustomTabsCallback<",
        "TMessageType;TBuilderType;>;>",
        "Lo/setButtonStyle$default<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected onMessageChannelReady:Lo/RealtimeSinceBootClock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected onNavigationEvent:Z

.field private final onPostMessage:Lo/RealtimeSinceBootClock;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lo/RealtimeSinceBootClock;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    invoke-direct {p0}, Lo/setButtonStyle$default;-><init>()V

    iput-object p1, p0, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onPostMessage:Lo/RealtimeSinceBootClock;

    sget v0, Lo/RealtimeSinceBootClock$ICustomTabsCallback$Stub;->extraCallback:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lo/RealtimeSinceBootClock;->onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/RealtimeSinceBootClock;

    iput-object p1, p0, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onMessageChannelReady:Lo/RealtimeSinceBootClock;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onNavigationEvent:Z

    return-void
.end method

.method private static onPostMessage(Lo/RealtimeSinceBootClock;Lo/RealtimeSinceBootClock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    invoke-static {}, Lo/nativeToCircleFastFilter;->ICustomTabsCallback()Lo/nativeToCircleFastFilter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/nativeToCircleFastFilter;->onMessageChannelReady(Ljava/lang/Object;)Lo/nativeAddRoundedCornersFilter;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lo/nativeAddRoundedCornersFilter;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic ICustomTabsCallback(Lo/getTargetId;)Lo/setButtonStyle$default;
    .locals 0

    check-cast p1, Lo/RealtimeSinceBootClock;

    invoke-virtual {p0, p1}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onMessageChannelReady(Lo/RealtimeSinceBootClock;)Lo/RealtimeSinceBootClock$ICustomTabsCallback;

    move-result-object p1

    return-object p1
.end method

.method public final ICustomTabsCallback()Z
    .locals 2

    iget-object v0, p0, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onMessageChannelReady:Lo/RealtimeSinceBootClock;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/RealtimeSinceBootClock;->onPostMessage(Lo/RealtimeSinceBootClock;Z)Z

    move-result v0

    return v0
.end method

.method public final synthetic ICustomTabsCallback$Stub$Proxy()Lo/NativeBlurFilter;
    .locals 1

    iget-object v0, p0, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onPostMessage:Lo/RealtimeSinceBootClock;

    return-object v0
.end method

.method public synthetic asInterface()Lo/NativeBlurFilter;
    .locals 1

    invoke-virtual {p0}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->extraCallback()Lo/RealtimeSinceBootClock;

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

    iget-object v0, p0, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onPostMessage:Lo/RealtimeSinceBootClock;

    check-cast v0, Lo/RealtimeSinceBootClock;

    sget v1, Lo/RealtimeSinceBootClock$ICustomTabsCallback$Stub;->ICustomTabsCallback:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lo/RealtimeSinceBootClock;->onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RealtimeSinceBootClock$ICustomTabsCallback;

    invoke-virtual {p0}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->asInterface()Lo/NativeBlurFilter;

    move-result-object v1

    check-cast v1, Lo/RealtimeSinceBootClock;

    invoke-virtual {v0, v1}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onMessageChannelReady(Lo/RealtimeSinceBootClock;)Lo/RealtimeSinceBootClock$ICustomTabsCallback;

    return-object v0
.end method

.method public extraCallback()Lo/RealtimeSinceBootClock;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    iget-boolean v0, p0, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onMessageChannelReady:Lo/RealtimeSinceBootClock;

    return-object v0

    :cond_0
    iget-object v0, p0, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onMessageChannelReady:Lo/RealtimeSinceBootClock;

    invoke-static {}, Lo/nativeToCircleFastFilter;->ICustomTabsCallback()Lo/nativeToCircleFastFilter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/nativeToCircleFastFilter;->onMessageChannelReady(Ljava/lang/Object;)Lo/nativeAddRoundedCornersFilter;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/nativeAddRoundedCornersFilter;->ICustomTabsCallback(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onNavigationEvent:Z

    iget-object v0, p0, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onMessageChannelReady:Lo/RealtimeSinceBootClock;

    return-object v0
.end method

.method public final onMessageChannelReady(Lo/RealtimeSinceBootClock;)Lo/RealtimeSinceBootClock$ICustomTabsCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    invoke-virtual {p0}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onPostMessage()V

    iget-object v0, p0, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onMessageChannelReady:Lo/RealtimeSinceBootClock;

    invoke-static {v0, p1}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onPostMessage(Lo/RealtimeSinceBootClock;Lo/RealtimeSinceBootClock;)V

    return-object p0
.end method

.method public final synthetic onMessageChannelReady()Lo/setButtonStyle$default;
    .locals 1

    invoke-virtual {p0}, Lo/setButtonStyle$default;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RealtimeSinceBootClock$ICustomTabsCallback;

    return-object v0
.end method

.method public final onNavigationEvent()Lo/RealtimeSinceBootClock;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    invoke-virtual {p0}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->asInterface()Lo/NativeBlurFilter;

    move-result-object v0

    check-cast v0, Lo/RealtimeSinceBootClock;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lo/RealtimeSinceBootClock$ICustomTabsCallback$Stub;->onMessageChannelReady:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Lo/RealtimeSinceBootClock;->onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Lo/nativeToCircleFastFilter;->ICustomTabsCallback()Lo/nativeToCircleFastFilter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo/nativeToCircleFastFilter;->onMessageChannelReady(Ljava/lang/Object;)Lo/nativeAddRoundedCornersFilter;

    move-result-object v2

    invoke-interface {v2, v0}, Lo/nativeAddRoundedCornersFilter;->onNavigationEvent(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v1, :cond_3

    sget v1, Lo/RealtimeSinceBootClock$ICustomTabsCallback$Stub;->onPostMessage:I

    if-eqz v4, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lo/RealtimeSinceBootClock;->onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/clearcut/zzew;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/clearcut/zzew;-><init>(Lo/NativeBlurFilter;)V

    throw v1
.end method

.method protected onPostMessage()V
    .locals 3

    iget-boolean v0, p0, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onMessageChannelReady:Lo/RealtimeSinceBootClock;

    sget v1, Lo/RealtimeSinceBootClock$ICustomTabsCallback$Stub;->extraCallback:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lo/RealtimeSinceBootClock;->onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RealtimeSinceBootClock;

    iget-object v1, p0, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onMessageChannelReady:Lo/RealtimeSinceBootClock;

    invoke-static {v0, v1}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onPostMessage(Lo/RealtimeSinceBootClock;Lo/RealtimeSinceBootClock;)V

    iput-object v0, p0, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onMessageChannelReady:Lo/RealtimeSinceBootClock;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onNavigationEvent:Z

    :cond_0
    return-void
.end method

.method public final synthetic onRelationshipValidationResult()Lo/NativeBlurFilter;
    .locals 5

    invoke-virtual {p0}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->asInterface()Lo/NativeBlurFilter;

    move-result-object v0

    check-cast v0, Lo/RealtimeSinceBootClock;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget v2, Lo/RealtimeSinceBootClock$ICustomTabsCallback$Stub;->onMessageChannelReady:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v3}, Lo/RealtimeSinceBootClock;->onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    if-nez v2, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    invoke-static {}, Lo/nativeToCircleFastFilter;->ICustomTabsCallback()Lo/nativeToCircleFastFilter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo/nativeToCircleFastFilter;->onMessageChannelReady(Ljava/lang/Object;)Lo/nativeAddRoundedCornersFilter;

    move-result-object v2

    invoke-interface {v2, v0}, Lo/nativeAddRoundedCornersFilter;->onNavigationEvent(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v1, :cond_3

    sget v1, Lo/RealtimeSinceBootClock$ICustomTabsCallback$Stub;->onPostMessage:I

    if-eqz v4, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lo/RealtimeSinceBootClock;->onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    if-eqz v4, :cond_4

    return-object v0

    :cond_4
    new-instance v1, Lcom/google/android/gms/internal/clearcut/zzew;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/clearcut/zzew;-><init>(Lo/NativeBlurFilter;)V

    throw v1
.end method
