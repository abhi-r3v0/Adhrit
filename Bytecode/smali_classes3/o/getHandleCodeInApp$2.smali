.class final Lo/getHandleCodeInApp$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getHandleCodeInApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/getAndroidPackageName;

.field private synthetic onPostMessage:Lo/getHandleCodeInApp;


# direct methods
.method constructor <init>(Lo/getHandleCodeInApp;Lo/getAndroidPackageName;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lo/getHandleCodeInApp$2;->onPostMessage:Lo/getHandleCodeInApp;

    iput-object p2, p0, Lo/getHandleCodeInApp$2;->onNavigationEvent:Lo/getAndroidPackageName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 122
    iget-object p1, p0, Lo/getHandleCodeInApp$2;->onNavigationEvent:Lo/getAndroidPackageName;

    invoke-virtual {p1}, Lo/getAndroidPackageName;->ICustomTabsCallback()Lo/setIOSBundleId;

    move-result-object p1

    .line 1200
    invoke-virtual {p1}, Lo/setIOSBundleId;->ICustomTabsCallback()I

    move-result p2

    const/4 p4, 0x1

    if-lt p3, p2, :cond_1

    .line 2178
    iget-object p2, p1, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    .line 3105
    iget-object p5, p2, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    const/4 v0, 0x7

    invoke-virtual {p5, v0}, Ljava/util/Calendar;->get(I)I

    move-result p5

    iget-object v0, p2, Lo/setUrl;->onMessageChannelReady:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    sub-int/2addr p5, v0

    if-gez p5, :cond_0

    .line 3107
    iget p2, p2, Lo/setUrl;->onNavigationEvent:I

    add-int/2addr p5, p2

    .line 2178
    :cond_0
    iget-object p1, p1, Lo/setIOSBundleId;->onPostMessage:Lo/setUrl;

    iget p1, p1, Lo/setUrl;->onTransact:I

    add-int/2addr p5, p1

    sub-int/2addr p5, p4

    if-gt p3, p5, :cond_1

    goto :goto_0

    :cond_1
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_2

    .line 123
    iget-object p1, p0, Lo/getHandleCodeInApp$2;->onPostMessage:Lo/getHandleCodeInApp;

    .line 4038
    iget-object p1, p1, Lo/getHandleCodeInApp;->extraCallback:Lo/getAndroidMinimumVersion$ICustomTabsCallback;

    .line 123
    iget-object p2, p0, Lo/getHandleCodeInApp$2;->onNavigationEvent:Lo/getAndroidPackageName;

    invoke-virtual {p2}, Lo/getAndroidPackageName;->ICustomTabsCallback()Lo/setIOSBundleId;

    move-result-object p2

    invoke-virtual {p2, p3}, Lo/setIOSBundleId;->onMessageChannelReady(I)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    invoke-interface {p1, p2, p3}, Lo/getAndroidMinimumVersion$ICustomTabsCallback;->onNavigationEvent(J)V

    :cond_2
    return-void
.end method
