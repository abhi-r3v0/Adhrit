.class public final Lo/getRewardPoints$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getRewardPoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field public final ICustomTabsCallback:I

.field public final extraCallback:[F

.field public final onMessageChannelReady:[F

.field public final onNavigationEvent:I


# direct methods
.method public constructor <init>(I[F[FI)V
    .locals 6

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput p1, p0, Lo/getRewardPoints$extraCallback;->ICustomTabsCallback:I

    .line 204
    array-length p1, p2

    int-to-long v0, p1

    const/4 p1, 0x1

    shl-long/2addr v0, p1

    array-length v2, p3

    int-to-long v2, v2

    const-wide/16 v4, 0x3

    mul-long v2, v2, v4

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 207
    iput-object p2, p0, Lo/getRewardPoints$extraCallback;->onMessageChannelReady:[F

    .line 208
    iput-object p3, p0, Lo/getRewardPoints$extraCallback;->extraCallback:[F

    .line 209
    iput p4, p0, Lo/getRewardPoints$extraCallback;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final extraCallback()I
    .locals 1

    .line 214
    iget-object v0, p0, Lo/getRewardPoints$extraCallback;->onMessageChannelReady:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method
