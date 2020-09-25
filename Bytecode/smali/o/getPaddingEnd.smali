.class public abstract Lo/getPaddingEnd;
.super Lo/createOrientationHelpers;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eH\u0017J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0002J\u000e\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u0013J\u001c\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u00132\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0004J\u0010\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u0017H\u0004J\u0010\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u001b\u001a\u00020\u0013H\u0004J\u0010\u0010\u001c\u001a\u00020\u000c2\u0006\u0010\u001d\u001a\u00020\u0013H\u0004R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/notificationCentre/NotificationBaseTemplate;",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "view",
        "Landroid/view/View;",
        "clickListener",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "(Landroid/view/View;Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;)V",
        "getClickListener",
        "()Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "getView",
        "()Landroid/view/View;",
        "bind",
        "",
        "item",
        "Lcom/dreamplug/utils/list/ListItem;",
        "getNotificationAge",
        "",
        "handleTextEllipsis",
        "textView",
        "Landroid/widget/TextView;",
        "updateCta",
        "cta",
        "ctaIcon",
        "Lcom/facebook/drawee/view/SimpleDraweeView;",
        "updateIcon",
        "simpleDraweeView",
        "updateNotificationAge",
        "notificationTimeText",
        "updateText",
        "textview",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final extraCallback:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2}, Lo/createOrientationHelpers;-><init>(Landroid/view/View;Lo/hasGapsToFix$onMessageChannelReady;)V

    iput-object p1, p0, Lo/getPaddingEnd;->extraCallback:Landroid/view/View;

    return-void
.end method

.method public static synthetic onNavigationEvent(Lo/getPaddingEnd;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0, p1, v0}, Lo/getPaddingEnd;->onMessageChannelReady(Landroid/widget/TextView;Lo/setSpeed;)V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
    .locals 10

    const-string v0, "item"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    instance-of v0, p1, Lo/shouldMeasureChild;

    if-eqz v0, :cond_4

    .line 28
    check-cast p1, Lo/shouldMeasureChild;

    .line 1043
    iget-object v0, p1, Lo/shouldMeasureChild;->onPostMessage:Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2026
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;

    if-eqz v0, :cond_0

    .line 2040
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    if-eqz v0, :cond_0

    .line 2104
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/Background;->onMessageChannelReady:Ljava/lang/String;

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_1

    .line 31
    iget-object v2, p0, Lo/getPaddingEnd;->extraCallback:Landroid/view/View;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 p1, 0x8

    new-array v7, p1, [F

    const/4 p1, 0x0

    const/4 v0, 0x0

    aput v0, v7, p1

    const/4 p1, 0x1

    aput v0, v7, p1

    const/4 v1, 0x2

    aput v0, v7, v1

    const/4 v1, 0x3

    aput v0, v7, v1

    const/4 v1, 0x4

    .line 3009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const-string v9, "Resources.getSystem()"

    invoke-static {v8, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 3010
    invoke-static {p1, v0, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    aput v8, v7, v1

    const/4 v1, 0x5

    .line 4009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 4010
    invoke-static {p1, v0, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    aput v8, v7, v1

    const/4 v1, 0x6

    .line 5009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 5010
    invoke-static {p1, v0, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v8

    aput v8, v7, v1

    const/4 v1, 0x7

    .line 6009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 6010
    invoke-static {p1, v0, v8}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    aput p1, v7, v1

    const/4 v8, 0x0

    const/16 v9, 0x6e

    .line 31
    invoke-static/range {v2 .. v9}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V

    return-void

    .line 6043
    :cond_1
    iget-object p1, p1, Lo/shouldMeasureChild;->onPostMessage:Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;

    if-eqz p1, :cond_2

    .line 7032
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;->extraCallback:Ljava/lang/String;

    :cond_2
    const-string p1, "not_seen"

    .line 33
    invoke-static {v1, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 34
    iget-object p1, p0, Lo/getPaddingEnd;->extraCallback:Landroid/view/View;

    .line 7096
    iget-object v0, p0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    const v1, 0x7f0601b9

    .line 34
    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .line 37
    :cond_3
    iget-object p1, p0, Lo/getPaddingEnd;->extraCallback:Landroid/view/View;

    .line 8096
    iget-object v0, p0, Lo/createOrientationHelpers;->onRelationshipValidationResult:Landroid/content/Context;

    const v1, 0x7f060220

    .line 37
    invoke-static {v0, v1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    return-void
.end method

.method public final extraCallback(Landroid/widget/TextView;)V
    .locals 2

    const-string/jumbo v0, "textView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_1

    const/16 v0, 0x64

    .line 119
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    const-string p1, "cta_click_to_expand"

    .line 120
    invoke-virtual {p0, p1}, Lo/createOrientationHelpers;->onPostMessage(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected final onMessageChannelReady(Landroid/widget/TextView;Lo/setSpeed;)V
    .locals 3

    const-string v0, "cta"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45118
    iget-object v0, p0, Lo/createOrientationHelpers;->asBinder:Lo/StaggeredGridLayoutManager;

    .line 76
    instance-of v1, v0, Lo/shouldMeasureChild;

    if-eqz v1, :cond_3

    .line 77
    check-cast v0, Lo/shouldMeasureChild;

    .line 46043
    iget-object v1, v0, Lo/shouldMeasureChild;->onPostMessage:Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 47026
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;

    if-eqz v1, :cond_0

    .line 47044
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;

    if-eqz v1, :cond_0

    .line 47060
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v1}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getType()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_2

    .line 48043
    iget-object p2, v0, Lo/shouldMeasureChild;->onPostMessage:Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;

    if-eqz p2, :cond_1

    .line 49026
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;

    if-eqz p2, :cond_1

    .line 49044
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;

    if-eqz p2, :cond_1

    .line 49060
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/notificationCentre/Ctas;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    if-eqz p2, :cond_1

    .line 78
    invoke-virtual {p2}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getTitle()Lo/getTargetScrollPosition;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 50000
    iget-object p2, p2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/CharSequence;

    .line 78
    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    const/16 v0, 0x8

    .line 80
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_3

    .line 81
    invoke-virtual {p2, v0}, Lo/setSpeed;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method protected final onNavigationEvent(Landroid/widget/TextView;)V
    .locals 11

    const-string v0, "notificationTimeText"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14118
    iget-object v0, p0, Lo/createOrientationHelpers;->asBinder:Lo/StaggeredGridLayoutManager;

    .line 14088
    instance-of v1, v0, Lo/shouldMeasureChild;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 14089
    check-cast v0, Lo/shouldMeasureChild;

    .line 15043
    iget-object v0, v0, Lo/shouldMeasureChild;->onPostMessage:Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;

    if-eqz v0, :cond_0

    .line 16028
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;->onNavigationEvent:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_5

    .line 14091
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const-string v2, "Calendar.getInstance()"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    .line 16063
    div-long/2addr v1, v3

    const-wide/16 v3, 0x3c

    .line 17051
    div-long/2addr v1, v3

    .line 18039
    div-long v3, v1, v3

    const-wide/16 v5, 0x18

    .line 19027
    div-long v5, v3, v5

    const-wide/16 v7, 0x7

    .line 20015
    div-long v7, v5, v7

    const-wide/16 v9, 0x1

    cmp-long v0, v7, v9

    if-ltz v0, :cond_1

    .line 14094
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "w"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    cmp-long v0, v5, v9

    if-ltz v0, :cond_2

    .line 14097
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "d"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    cmp-long v0, v3, v9

    if-ltz v0, :cond_3

    .line 14100
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "h"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    cmp-long v0, v1, v9

    if-ltz v0, :cond_4

    .line 14103
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "m"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    const-string v2, "1m"

    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    .line 68
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 70
    :cond_6
    check-cast p1, Landroid/view/View;

    const-string v0, "$this$gone"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 45017
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected final onPostMessage(Landroid/widget/TextView;)V
    .locals 5

    const-string/jumbo v0, "textview"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8118
    iget-object v0, p0, Lo/createOrientationHelpers;->asBinder:Lo/StaggeredGridLayoutManager;

    .line 45
    instance-of v1, v0, Lo/shouldMeasureChild;

    if-eqz v1, :cond_5

    .line 46
    check-cast v0, Lo/shouldMeasureChild;

    .line 9043
    iget-object v1, v0, Lo/shouldMeasureChild;->onPostMessage:Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 10026
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;

    if-eqz v1, :cond_0

    .line 10042
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/notificationCentre/Body;

    if-eqz v1, :cond_0

    .line 10050
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/notificationCentre/Body;->onNavigationEvent:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_0

    .line 11000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 46
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11043
    iget-object v0, v0, Lo/shouldMeasureChild;->onPostMessage:Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;

    if-eqz v0, :cond_1

    .line 12032
    iget-object v2, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;->extraCallback:Ljava/lang/String;

    :cond_1
    const-string v0, "itemView.context"

    const-string v1, "itemView"

    if-nez v2, :cond_2

    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v4, 0x5df7a867

    if-eq v3, v4, :cond_3

    goto :goto_1

    :cond_3
    const-string v3, "not_seen"

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 49
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f140391

    invoke-static {p1, v1, v0}, Lo/missCount;->onNavigationEvent(Landroid/widget/TextView;Landroid/content/Context;I)V

    return-void

    .line 52
    :cond_4
    :goto_1
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f140369

    invoke-static {p1, v1, v0}, Lo/missCount;->onNavigationEvent(Landroid/widget/TextView;Landroid/content/Context;I)V

    :cond_5
    return-void
.end method

.method protected final onPostMessage(Lo/setSpeed;)V
    .locals 9

    const-string/jumbo v0, "simpleDraweeView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12118
    iget-object v0, p0, Lo/createOrientationHelpers;->asBinder:Lo/StaggeredGridLayoutManager;

    .line 60
    instance-of v1, v0, Lo/shouldMeasureChild;

    if-eqz v1, :cond_1

    .line 61
    check-cast v0, Lo/shouldMeasureChild;

    .line 13043
    iget-object v0, v0, Lo/shouldMeasureChild;->onPostMessage:Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;

    if-eqz v0, :cond_0

    .line 14026
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Notification;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;

    if-eqz v0, :cond_0

    .line 14042
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/TemplateProperties;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/notificationCentre/Body;

    if-eqz v0, :cond_0

    .line 14052
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/notificationCentre/Body;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    move-object v1, p1

    .line 61
    invoke-static/range {v1 .. v8}, Lo/remove;->extraCallback(Lo/setSpeed;Ljava/lang/String;ZZLo/getInstallVersion;ZLo/onDisconnectSetValue;I)V

    :cond_1
    return-void
.end method
