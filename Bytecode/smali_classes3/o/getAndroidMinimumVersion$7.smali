.class final Lo/getAndroidMinimumVersion$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAndroidMinimumVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getHandleCodeInApp;

.field private synthetic onNavigationEvent:Lo/getAndroidMinimumVersion;


# direct methods
.method constructor <init>(Lo/getAndroidMinimumVersion;Lo/getHandleCodeInApp;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lo/getAndroidMinimumVersion$7;->onNavigationEvent:Lo/getAndroidMinimumVersion;

    iput-object p2, p0, Lo/getAndroidMinimumVersion$7;->extraCallback:Lo/getHandleCodeInApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 440
    iget-object p1, p0, Lo/getAndroidMinimumVersion$7;->onNavigationEvent:Lo/getAndroidMinimumVersion;

    .line 1460
    iget-object p1, p1, Lo/getAndroidMinimumVersion;->asBinder:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 440
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-ltz p1, :cond_1

    .line 442
    iget-object v1, p0, Lo/getAndroidMinimumVersion$7;->onNavigationEvent:Lo/getAndroidMinimumVersion;

    iget-object v2, p0, Lo/getAndroidMinimumVersion$7;->extraCallback:Lo/getHandleCodeInApp;

    .line 2146
    iget-object v2, v2, Lo/getHandleCodeInApp;->onPostMessage:Lo/getMultiFactorInfo;

    .line 3083
    iget-object v2, v2, Lo/getMultiFactorInfo;->onMessageChannelReady:Lo/setUrl;

    .line 3177
    iget-object v2, v2, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    const-string v3, "UTC"

    .line 6042
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 5074
    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    if-nez v2, :cond_0

    .line 5076
    invoke-virtual {v4}, Ljava/util/Calendar;->clear()V

    goto :goto_0

    .line 5078
    :cond_0
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 7042
    :goto_0
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 6074
    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 6076
    invoke-virtual {v2}, Ljava/util/Calendar;->clear()V

    .line 4095
    invoke-virtual {v4, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v3, 0x2

    .line 4096
    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    .line 4097
    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 4094
    invoke-virtual {v2, v0, v5, v4}, Ljava/util/Calendar;->set(III)V

    .line 3178
    invoke-virtual {v2, v3, p1}, Ljava/util/Calendar;->add(II)V

    .line 3179
    new-instance p1, Lo/setUrl;

    invoke-direct {p1, v2}, Lo/setUrl;-><init>(Ljava/util/Calendar;)V

    .line 442
    invoke-virtual {v1, p1}, Lo/getAndroidMinimumVersion;->extraCallback(Lo/setUrl;)V

    :cond_1
    return-void
.end method
