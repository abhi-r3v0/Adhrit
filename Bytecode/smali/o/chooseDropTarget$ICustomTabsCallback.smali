.class final Lo/chooseDropTarget$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/chooseDropTarget;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick",
        "com/dreamplug/fabrik/ui/lending/holder/LoanSummaryHolder$bind$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/chooseDropTarget;

.field private synthetic onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;Lo/chooseDropTarget;)V
    .locals 0

    iput-object p1, p0, Lo/chooseDropTarget$ICustomTabsCallback;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;

    iput-object p2, p0, Lo/chooseDropTarget$ICustomTabsCallback;->onNavigationEvent:Lo/chooseDropTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 32
    iget-object p1, p0, Lo/chooseDropTarget$ICustomTabsCallback;->onNavigationEvent:Lo/chooseDropTarget;

    invoke-static {p1}, Lo/chooseDropTarget;->extraCallback(Lo/chooseDropTarget;)Lo/hasGapsToFix$onMessageChannelReady;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lo/chooseDropTarget$ICustomTabsCallback;->onPostMessage:Lcom/dreamplug/fabrik/ui/lending/model/LoanStatusResponse$StashSummaryData;

    check-cast v0, Lo/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    const-string v2, "loan_details"

    .line 1066
    invoke-interface {p1, v2, v0, v1}, Lo/hasGapsToFix$onMessageChannelReady;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V

    :cond_0
    return-void
.end method
