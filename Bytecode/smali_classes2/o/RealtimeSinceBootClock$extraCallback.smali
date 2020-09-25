.class final Lo/RealtimeSinceBootClock$extraCallback;
.super Ljava/lang/Object;

# interfaces
.implements Lo/SharedReference$NullReferenceException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RealtimeSinceBootClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/SharedReference$NullReferenceException<",
        "Lo/RealtimeSinceBootClock$extraCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/getSDKVersionCode;

.field final extraCallback:I

.field final onMessageChannelReady:Z

.field final onNavigationEvent:Z

.field private final onPostMessage:Lo/setHierarchy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setHierarchy<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/setHierarchy;ILo/getSDKVersionCode;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setHierarchy<",
            "*>;I",
            "Lo/getSDKVersionCode;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lo/RealtimeSinceBootClock$extraCallback;->onPostMessage:Lo/setHierarchy;

    const p1, 0x3f3fd17

    iput p1, p0, Lo/RealtimeSinceBootClock$extraCallback;->extraCallback:I

    iput-object p3, p0, Lo/RealtimeSinceBootClock$extraCallback;->ICustomTabsCallback:Lo/getSDKVersionCode;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/RealtimeSinceBootClock$extraCallback;->onMessageChannelReady:Z

    iput-boolean p1, p0, Lo/RealtimeSinceBootClock$extraCallback;->onNavigationEvent:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lo/RealtimeSinceBootClock$extraCallback;

    iget v0, p0, Lo/RealtimeSinceBootClock$extraCallback;->extraCallback:I

    iget p1, p1, Lo/RealtimeSinceBootClock$extraCallback;->extraCallback:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final extraCallback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    iget v0, p0, Lo/RealtimeSinceBootClock$extraCallback;->extraCallback:I

    return v0
.end method

.method public final onNavigationEvent()Lo/getSDKVersionCode;
    .locals 1

    iget-object v0, p0, Lo/RealtimeSinceBootClock$extraCallback;->ICustomTabsCallback:Lo/getSDKVersionCode;

    return-object v0
.end method

.method public final onNavigationEvent(Lo/nativeIterativeBoxBlur;Lo/NativeBlurFilter;)Lo/nativeIterativeBoxBlur;
    .locals 0

    check-cast p1, Lo/RealtimeSinceBootClock$ICustomTabsCallback;

    check-cast p2, Lo/RealtimeSinceBootClock;

    invoke-virtual {p1, p2}, Lo/RealtimeSinceBootClock$ICustomTabsCallback;->onMessageChannelReady(Lo/RealtimeSinceBootClock;)Lo/RealtimeSinceBootClock$ICustomTabsCallback;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Lo/nativeTranscodeJpeg;Lo/nativeTranscodeJpeg;)Lo/nativeTranscodeJpeg;
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final onPostMessage()Lo/showConversations;
    .locals 1

    iget-object v0, p0, Lo/RealtimeSinceBootClock$extraCallback;->ICustomTabsCallback:Lo/getSDKVersionCode;

    invoke-virtual {v0}, Lo/getSDKVersionCode;->onNavigationEvent()Lo/showConversations;

    move-result-object v0

    return-object v0
.end method
