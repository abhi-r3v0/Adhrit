.class final Lo/Cta$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Cta$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Cta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# instance fields
.field private final ICustomTabsCallback:F

.field private final extraCallback:Lo/PaymentInstrumentRequestJsonAdapter;

.field private onMessageChannelReady:J

.field private onNavigationEvent:[[J


# direct methods
.method constructor <init>(Lo/PaymentInstrumentRequestJsonAdapter;F)V
    .locals 0

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 674
    iput-object p1, p0, Lo/Cta$onPostMessage;->extraCallback:Lo/PaymentInstrumentRequestJsonAdapter;

    .line 675
    iput p2, p0, Lo/Cta$onPostMessage;->ICustomTabsCallback:F

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()J
    .locals 11

    .line 680
    iget-object v0, p0, Lo/Cta$onPostMessage;->extraCallback:Lo/PaymentInstrumentRequestJsonAdapter;

    invoke-interface {v0}, Lo/PaymentInstrumentRequestJsonAdapter;->extraCallback()J

    move-result-wide v0

    long-to-float v0, v0

    iget v1, p0, Lo/Cta$onPostMessage;->ICustomTabsCallback:F

    mul-float v0, v0, v1

    float-to-long v0, v0

    .line 681
    iget-wide v2, p0, Lo/Cta$onPostMessage;->onMessageChannelReady:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 682
    iget-object v2, p0, Lo/Cta$onPostMessage;->onNavigationEvent:[[J

    if-nez v2, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 686
    :goto_0
    iget-object v4, p0, Lo/Cta$onPostMessage;->onNavigationEvent:[[J

    array-length v5, v4

    sub-int/2addr v5, v2

    const/4 v6, 0x0

    if-ge v3, v5, :cond_1

    aget-object v4, v4, v3

    aget-wide v7, v4, v6

    cmp-long v4, v7, v0

    if-gez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 690
    :cond_1
    iget-object v4, p0, Lo/Cta$onPostMessage;->onNavigationEvent:[[J

    add-int/lit8 v5, v3, -0x1

    aget-object v5, v4, v5

    .line 691
    aget-object v3, v4, v3

    .line 692
    aget-wide v7, v5, v6

    sub-long/2addr v0, v7

    long-to-float v0, v0

    aget-wide v7, v3, v6

    aget-wide v9, v5, v6

    sub-long/2addr v7, v9

    long-to-float v1, v7

    div-float/2addr v0, v1

    .line 694
    aget-wide v6, v5, v2

    aget-wide v8, v3, v2

    aget-wide v1, v5, v2

    sub-long/2addr v8, v1

    long-to-float v1, v8

    mul-float v0, v0, v1

    float-to-long v0, v0

    add-long/2addr v6, v0

    return-wide v6
.end method

.method final onMessageChannelReady(J)V
    .locals 0

    .line 698
    iput-wide p1, p0, Lo/Cta$onPostMessage;->onMessageChannelReady:J

    return-void
.end method

.method final onPostMessage([[J)V
    .locals 2

    .line 703
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    .line 704
    iput-object p1, p0, Lo/Cta$onPostMessage;->onNavigationEvent:[[J

    return-void
.end method
