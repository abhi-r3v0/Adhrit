.class final Lo/CardBinResponse$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CardBinResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public ICustomTabsCallback:Lo/PaymentJsonAdapter;

.field public extraCallback:Z

.field public final onMessageChannelReady:J

.field public onNavigationEvent:Lo/CardBinResponse$ICustomTabsCallback;

.field public final onPostMessage:J


# direct methods
.method public constructor <init>(JI)V
    .locals 2

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 709
    iput-wide p1, p0, Lo/CardBinResponse$ICustomTabsCallback;->onMessageChannelReady:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 710
    iput-wide p1, p0, Lo/CardBinResponse$ICustomTabsCallback;->onPostMessage:J

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/CardBinResponse$ICustomTabsCallback;
    .locals 2

    const/4 v0, 0x0

    .line 742
    iput-object v0, p0, Lo/CardBinResponse$ICustomTabsCallback;->ICustomTabsCallback:Lo/PaymentJsonAdapter;

    .line 743
    iget-object v1, p0, Lo/CardBinResponse$ICustomTabsCallback;->onNavigationEvent:Lo/CardBinResponse$ICustomTabsCallback;

    .line 744
    iput-object v0, p0, Lo/CardBinResponse$ICustomTabsCallback;->onNavigationEvent:Lo/CardBinResponse$ICustomTabsCallback;

    return-object v1
.end method

.method public final extraCallback(Lo/PaymentJsonAdapter;Lo/CardBinResponse$ICustomTabsCallback;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lo/CardBinResponse$ICustomTabsCallback;->ICustomTabsCallback:Lo/PaymentJsonAdapter;

    .line 721
    iput-object p2, p0, Lo/CardBinResponse$ICustomTabsCallback;->onNavigationEvent:Lo/CardBinResponse$ICustomTabsCallback;

    const/4 p1, 0x1

    .line 722
    iput-boolean p1, p0, Lo/CardBinResponse$ICustomTabsCallback;->extraCallback:Z

    return-void
.end method

.method public final onPostMessage(J)I
    .locals 2

    .line 733
    iget-wide v0, p0, Lo/CardBinResponse$ICustomTabsCallback;->onMessageChannelReady:J

    sub-long/2addr p1, v0

    long-to-int p2, p1

    iget-object p1, p0, Lo/CardBinResponse$ICustomTabsCallback;->ICustomTabsCallback:Lo/PaymentJsonAdapter;

    iget p1, p1, Lo/PaymentJsonAdapter;->onNavigationEvent:I

    add-int/2addr p2, p1

    return p2
.end method
