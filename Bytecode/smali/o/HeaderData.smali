.class public abstract Lo/HeaderData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/InstrumentView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/HeaderData$ICustomTabsCallback;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:[J

.field private asInterface:I

.field private final extraCallback:[Lo/p$a;

.field public final onMessageChannelReady:I

.field protected final onNavigationEvent:Lo/getJuspayUpi;

.field protected final onPostMessage:[I


# direct methods
.method public varargs constructor <init>(Lo/getJuspayUpi;[I)V
    .locals 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 67
    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getJuspayUpi;

    iput-object v0, p0, Lo/HeaderData;->onNavigationEvent:Lo/getJuspayUpi;

    .line 68
    array-length v0, p2

    iput v0, p0, Lo/HeaderData;->onMessageChannelReady:I

    .line 70
    new-array v0, v0, [Lo/p$a;

    iput-object v0, p0, Lo/HeaderData;->extraCallback:[Lo/p$a;

    const/4 v0, 0x0

    .line 71
    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 72
    iget-object v2, p0, Lo/HeaderData;->extraCallback:[Lo/p$a;

    aget v3, p2, v0

    invoke-virtual {p1, v3}, Lo/getJuspayUpi;->ICustomTabsCallback(I)Lo/p$a;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    :cond_1
    iget-object p2, p0, Lo/HeaderData;->extraCallback:[Lo/p$a;

    new-instance v0, Lo/HeaderData$ICustomTabsCallback;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lo/HeaderData$ICustomTabsCallback;-><init>(Lo/HeaderData$4;)V

    invoke-static {p2, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 76
    iget p2, p0, Lo/HeaderData;->onMessageChannelReady:I

    new-array p2, p2, [I

    iput-object p2, p0, Lo/HeaderData;->onPostMessage:[I

    .line 77
    :goto_2
    iget p2, p0, Lo/HeaderData;->onMessageChannelReady:I

    if-ge v1, p2, :cond_2

    .line 78
    iget-object p2, p0, Lo/HeaderData;->onPostMessage:[I

    iget-object v0, p0, Lo/HeaderData;->extraCallback:[Lo/p$a;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Lo/getJuspayUpi;->onMessageChannelReady(Lo/p$a;)I

    move-result v0

    aput v0, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 80
    :cond_2
    new-array p1, p2, [J

    iput-object p1, p0, Lo/HeaderData;->ICustomTabsCallback:[J

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method public ICustomTabsCallback(JJJ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1223
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final ICustomTabsCallback(IJ)Z
    .locals 10

    .line 156
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 157
    invoke-virtual {p0, p1, v0, v1}, Lo/HeaderData;->onMessageChannelReady(IJ)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 158
    :goto_0
    iget v5, p0, Lo/HeaderData;->onMessageChannelReady:I

    const/4 v6, 0x1

    if-ge v4, v5, :cond_1

    if-nez v2, :cond_1

    if-eq v4, p1, :cond_0

    .line 159
    invoke-virtual {p0, v4, v0, v1}, Lo/HeaderData;->onMessageChannelReady(IJ)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    return v3

    .line 164
    :cond_2
    iget-object v7, p0, Lo/HeaderData;->ICustomTabsCallback:[J

    aget-wide v8, v7, p1

    const-wide v4, 0x7fffffffffffffffL

    move-wide v2, p2

    .line 167
    invoke-static/range {v0 .. v5}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback(JJJ)J

    move-result-wide p2

    .line 165
    invoke-static {v8, v9, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    aput-wide p2, v7, p1

    return v6
.end method

.method public ICustomTabsCallback$Stub()V
    .locals 0

    return-void
.end method

.method public final asBinder()Lo/getJuspayUpi;
    .locals 1

    .line 95
    iget-object v0, p0, Lo/HeaderData;->onNavigationEvent:Lo/getJuspayUpi;

    return-object v0
.end method

.method public final asInterface()Lo/p$a;
    .locals 2

    .line 136
    iget-object v0, p0, Lo/HeaderData;->extraCallback:[Lo/p$a;

    invoke-virtual {p0}, Lo/HeaderData;->onPostMessage()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 198
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 201
    :cond_1
    check-cast p1, Lo/HeaderData;

    .line 202
    iget-object v2, p0, Lo/HeaderData;->onNavigationEvent:Lo/getJuspayUpi;

    iget-object v3, p1, Lo/HeaderData;->onNavigationEvent:Lo/getJuspayUpi;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lo/HeaderData;->onPostMessage:[I

    iget-object p1, p1, Lo/HeaderData;->onPostMessage:[I

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final extraCallback(I)I
    .locals 1

    .line 110
    iget-object v0, p0, Lo/HeaderData;->onPostMessage:[I

    aget p1, v0, p1

    return p1
.end method

.method public extraCallback(JJJLjava/util/List;[Lo/component2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lo/getMerchantId;",
            ">;[",
            "Lo/component2;",
            ")V"
        }
    .end annotation

    .line 1256
    invoke-interface/range {p0 .. p6}, Lo/InstrumentView;->ICustomTabsCallback(JJJ)V

    return-void
.end method

.method public hashCode()I
    .locals 2

    .line 185
    iget v0, p0, Lo/HeaderData;->asInterface:I

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lo/HeaderData;->onNavigationEvent:Lo/getJuspayUpi;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lo/HeaderData;->onPostMessage:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lo/HeaderData;->asInterface:I

    .line 188
    :cond_0
    iget v0, p0, Lo/HeaderData;->asInterface:I

    return v0
.end method

.method public final onMessageChannelReady(Lo/p$a;)I
    .locals 2

    const/4 v0, 0x0

    .line 116
    :goto_0
    iget v1, p0, Lo/HeaderData;->onMessageChannelReady:I

    if-ge v0, v1, :cond_1

    .line 117
    iget-object v1, p0, Lo/HeaderData;->extraCallback:[Lo/p$a;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public onMessageChannelReady(F)V
    .locals 0

    return-void
.end method

.method protected final onMessageChannelReady(IJ)Z
    .locals 3

    .line 178
    iget-object v0, p0, Lo/HeaderData;->ICustomTabsCallback:[J

    aget-wide v1, v0, p1

    cmp-long p1, v1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onNavigationEvent(I)Lo/p$a;
    .locals 1

    .line 105
    iget-object v0, p0, Lo/HeaderData;->extraCallback:[Lo/p$a;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public onNavigationEvent()V
    .locals 0

    return-void
.end method

.method public final onPostMessage(I)I
    .locals 2

    const/4 v0, 0x0

    .line 126
    :goto_0
    iget v1, p0, Lo/HeaderData;->onMessageChannelReady:I

    if-ge v0, v1, :cond_1

    .line 127
    iget-object v1, p0, Lo/HeaderData;->onPostMessage:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final onRelationshipValidationResult()I
    .locals 1

    .line 100
    iget-object v0, p0, Lo/HeaderData;->onPostMessage:[I

    array-length v0, v0

    return v0
.end method

.method public final onTransact()I
    .locals 2

    .line 141
    iget-object v0, p0, Lo/HeaderData;->onPostMessage:[I

    invoke-virtual {p0}, Lo/HeaderData;->onPostMessage()I

    move-result v1

    aget v0, v0, v1

    return v0
.end method
