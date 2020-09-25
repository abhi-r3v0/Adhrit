.class final Lo/onSwiped$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onSwiped;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/onSwiped;

.field private synthetic onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;


# direct methods
.method constructor <init>(Lo/onSwiped;Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;)V
    .locals 0

    iput-object p1, p0, Lo/onSwiped$ICustomTabsCallback;->onMessageChannelReady:Lo/onSwiped;

    iput-object p2, p0, Lo/onSwiped$ICustomTabsCallback;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 72
    iget-object p1, p0, Lo/onSwiped$ICustomTabsCallback;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;

    .line 1212
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanSummaryData;->asInterface:Lcom/dreamplug/fabrik/ui/lending/model/EmiSchedule;

    if-eqz p1, :cond_0

    .line 1232
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lending/model/EmiSchedule;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/EmiSchedule$Details;

    if-eqz p1, :cond_0

    .line 73
    iget-object v0, p0, Lo/onSwiped$ICustomTabsCallback;->onMessageChannelReady:Lo/onSwiped;

    invoke-static {v0}, Lo/onSwiped;->onPostMessage(Lo/onSwiped;)Lo/hasGapsToFix$onMessageChannelReady;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p1, Lo/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    const-string v2, "repayment_schedule"

    .line 2066
    invoke-interface {v0, v2, p1, v1}, Lo/hasGapsToFix$onMessageChannelReady;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V

    :cond_0
    return-void
.end method
