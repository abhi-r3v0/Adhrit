.class final Lo/unregisterReceiver;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public ICustomTabsCallback:I

.field private extraCallback:Z

.field private final onMessageChannelReady:I

.field private onNavigationEvent:Z

.field public onPostMessage:[B


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lo/unregisterReceiver;->onMessageChannelReady:I

    add-int/lit8 p2, p2, 0x3

    .line 39
    new-array p1, p2, [B

    iput-object p1, p0, Lo/unregisterReceiver;->onPostMessage:[B

    const/4 p2, 0x2

    const/4 v0, 0x1

    .line 40
    aput-byte v0, p1, p2

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 3

    .line 64
    iget-boolean v0, p0, Lo/unregisterReceiver;->onNavigationEvent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 65
    iget v0, p0, Lo/unregisterReceiver;->onMessageChannelReady:I

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lo/unregisterReceiver;->onNavigationEvent:Z

    if-eqz v1, :cond_1

    const/4 p1, 0x3

    .line 68
    iput p1, p0, Lo/unregisterReceiver;->ICustomTabsCallback:I

    .line 69
    iput-boolean v2, p0, Lo/unregisterReceiver;->extraCallback:Z

    :cond_1
    return-void
.end method

.method public final extraCallback()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lo/unregisterReceiver;->extraCallback:Z

    return v0
.end method

.method public final onMessageChannelReady()V
    .locals 1

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lo/unregisterReceiver;->onNavigationEvent:Z

    .line 48
    iput-boolean v0, p0, Lo/unregisterReceiver;->extraCallback:Z

    return-void
.end method

.method public final onNavigationEvent(I)Z
    .locals 2

    .line 100
    iget-boolean v0, p0, Lo/unregisterReceiver;->onNavigationEvent:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 103
    :cond_0
    iget v0, p0, Lo/unregisterReceiver;->ICustomTabsCallback:I

    sub-int/2addr v0, p1

    iput v0, p0, Lo/unregisterReceiver;->ICustomTabsCallback:I

    .line 104
    iput-boolean v1, p0, Lo/unregisterReceiver;->onNavigationEvent:Z

    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lo/unregisterReceiver;->extraCallback:Z

    return p1
.end method

.method public final onPostMessage([BII)V
    .locals 4

    .line 81
    iget-boolean v0, p0, Lo/unregisterReceiver;->onNavigationEvent:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sub-int/2addr p3, p2

    .line 85
    iget-object v0, p0, Lo/unregisterReceiver;->onPostMessage:[B

    array-length v1, v0

    iget v2, p0, Lo/unregisterReceiver;->ICustomTabsCallback:I

    add-int v3, v2, p3

    if-ge v1, v3, :cond_1

    add-int/2addr v2, p3

    shl-int/lit8 v1, v2, 0x1

    .line 86
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lo/unregisterReceiver;->onPostMessage:[B

    .line 88
    :cond_1
    iget-object v0, p0, Lo/unregisterReceiver;->onPostMessage:[B

    iget v1, p0, Lo/unregisterReceiver;->ICustomTabsCallback:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iget p1, p0, Lo/unregisterReceiver;->ICustomTabsCallback:I

    add-int/2addr p1, p3

    iput p1, p0, Lo/unregisterReceiver;->ICustomTabsCallback:I

    return-void
.end method
