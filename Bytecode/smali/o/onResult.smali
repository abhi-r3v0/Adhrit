.class public Lo/onResult;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public ICustomTabsCallback:I

.field public ICustomTabsCallback$Stub:I

.field public asBinder:Z

.field public extraCallback:I

.field public onMessageChannelReady:I

.field public onNavigationEvent:I

.field public onPostMessage:I

.field public onRelationshipValidationResult:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lo/onResult;->ICustomTabsCallback:I

    .line 29
    iput v0, p0, Lo/onResult;->onMessageChannelReady:I

    const/high16 v1, -0x80000000

    .line 30
    iput v1, p0, Lo/onResult;->extraCallback:I

    .line 31
    iput v1, p0, Lo/onResult;->onNavigationEvent:I

    .line 32
    iput v0, p0, Lo/onResult;->onPostMessage:I

    .line 33
    iput v0, p0, Lo/onResult;->ICustomTabsCallback$Stub:I

    .line 35
    iput-boolean v0, p0, Lo/onResult;->asBinder:Z

    .line 36
    iput-boolean v0, p0, Lo/onResult;->onRelationshipValidationResult:Z

    return-void
.end method


# virtual methods
.method public final extraCallback(II)V
    .locals 2

    .line 55
    iput p1, p0, Lo/onResult;->extraCallback:I

    .line 56
    iput p2, p0, Lo/onResult;->onNavigationEvent:I

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lo/onResult;->onRelationshipValidationResult:Z

    .line 58
    iget-boolean v0, p0, Lo/onResult;->asBinder:Z

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_1

    if-eq p2, v1, :cond_0

    .line 59
    iput p2, p0, Lo/onResult;->ICustomTabsCallback:I

    :cond_0
    if-eq p1, v1, :cond_3

    .line 60
    iput p1, p0, Lo/onResult;->onMessageChannelReady:I

    return-void

    :cond_1
    if-eq p1, v1, :cond_2

    .line 62
    iput p1, p0, Lo/onResult;->ICustomTabsCallback:I

    :cond_2
    if-eq p2, v1, :cond_3

    .line 63
    iput p2, p0, Lo/onResult;->onMessageChannelReady:I

    :cond_3
    return-void
.end method

.method public final onPostMessage(II)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lo/onResult;->onRelationshipValidationResult:Z

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 69
    iput p1, p0, Lo/onResult;->onPostMessage:I

    iput p1, p0, Lo/onResult;->ICustomTabsCallback:I

    :cond_0
    if-eq p2, v0, :cond_1

    .line 70
    iput p2, p0, Lo/onResult;->ICustomTabsCallback$Stub:I

    iput p2, p0, Lo/onResult;->onMessageChannelReady:I

    :cond_1
    return-void
.end method
