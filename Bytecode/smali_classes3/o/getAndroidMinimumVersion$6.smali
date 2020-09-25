.class final Lo/getAndroidMinimumVersion$6;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAndroidMinimumVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getAndroidMinimumVersion;

.field private synthetic onNavigationEvent:Lo/throwAbtExceptionIfAnalyticsIsNull;

.field private synthetic onPostMessage:Lo/getHandleCodeInApp;


# direct methods
.method constructor <init>(Lo/getAndroidMinimumVersion;Lo/getHandleCodeInApp;Lo/throwAbtExceptionIfAnalyticsIsNull;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lo/getAndroidMinimumVersion$6;->onMessageChannelReady:Lo/getAndroidMinimumVersion;

    iput-object p2, p0, Lo/getAndroidMinimumVersion$6;->onPostMessage:Lo/getHandleCodeInApp;

    iput-object p3, p0, Lo/getAndroidMinimumVersion$6;->onNavigationEvent:Lo/throwAbtExceptionIfAnalyticsIsNull;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 2

    if-nez p2, :cond_1

    .line 408
    iget-object p2, p0, Lo/getAndroidMinimumVersion$6;->onNavigationEvent:Lo/throwAbtExceptionIfAnalyticsIsNull;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    .line 409
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 410
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/16 p2, 0x800

    .line 412
    invoke-virtual {p1, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method public final onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 9

    if-gez p2, :cond_0

    .line 397
    iget-object p1, p0, Lo/getAndroidMinimumVersion$6;->onMessageChannelReady:Lo/getAndroidMinimumVersion;

    .line 1460
    iget-object p1, p1, Lo/getAndroidMinimumVersion;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 397
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    goto :goto_0

    .line 399
    :cond_0
    iget-object p1, p0, Lo/getAndroidMinimumVersion$6;->onMessageChannelReady:Lo/getAndroidMinimumVersion;

    .line 2460
    iget-object p1, p1, Lo/getAndroidMinimumVersion;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 399
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 401
    :goto_0
    iget-object p2, p0, Lo/getAndroidMinimumVersion$6;->onMessageChannelReady:Lo/getAndroidMinimumVersion;

    iget-object p3, p0, Lo/getAndroidMinimumVersion$6;->onPostMessage:Lo/getHandleCodeInApp;

    .line 3146
    iget-object p3, p3, Lo/getHandleCodeInApp;->onPostMessage:Lo/getMultiFactorInfo;

    .line 4083
    iget-object p3, p3, Lo/getMultiFactorInfo;->onMessageChannelReady:Lo/setUrl;

    .line 4177
    iget-object p3, p3, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    const-string v0, "UTC"

    .line 7042
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 6074
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    if-nez p3, :cond_1

    .line 6076
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    goto :goto_1

    .line 6078
    :cond_1
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 8042
    :goto_1
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p3

    .line 7074
    invoke-static {p3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p3

    .line 7076
    invoke-virtual {p3}, Ljava/util/Calendar;->clear()V

    const/4 v2, 0x1

    .line 5095
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 5096
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    .line 5097
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 5094
    invoke-virtual {p3, v3, v5, v1}, Ljava/util/Calendar;->set(III)V

    .line 4178
    invoke-virtual {p3, v4, p1}, Ljava/util/Calendar;->add(II)V

    .line 4179
    new-instance v1, Lo/setUrl;

    invoke-direct {v1, p3}, Lo/setUrl;-><init>(Ljava/util/Calendar;)V

    .line 8059
    iput-object v1, p2, Lo/getAndroidMinimumVersion;->onPostMessage:Lo/setUrl;

    .line 402
    iget-object p2, p0, Lo/getAndroidMinimumVersion$6;->onNavigationEvent:Lo/throwAbtExceptionIfAnalyticsIsNull;

    iget-object p3, p0, Lo/getAndroidMinimumVersion$6;->onPostMessage:Lo/getHandleCodeInApp;

    .line 8146
    iget-object p3, p3, Lo/getHandleCodeInApp;->onPostMessage:Lo/getMultiFactorInfo;

    .line 9083
    iget-object p3, p3, Lo/getMultiFactorInfo;->onMessageChannelReady:Lo/setUrl;

    .line 9177
    iget-object p3, p3, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    .line 12042
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 11074
    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    if-nez p3, :cond_2

    .line 11076
    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    goto :goto_2

    .line 11078
    :cond_2
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 13042
    :goto_2
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p3

    .line 12074
    invoke-static {p3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p3

    .line 12076
    invoke-virtual {p3}, Ljava/util/Calendar;->clear()V

    .line 10095
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 10096
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 10097
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 10094
    invoke-virtual {p3, v0, v2, v1}, Ljava/util/Calendar;->set(III)V

    .line 9178
    invoke-virtual {p3, v4, p1}, Ljava/util/Calendar;->add(II)V

    .line 9179
    new-instance p1, Lo/setUrl;

    invoke-direct {p1, p3}, Lo/setUrl;-><init>(Ljava/util/Calendar;)V

    .line 13185
    iget-object p1, p1, Lo/setUrl;->extraCallback:Ljava/lang/String;

    .line 402
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
