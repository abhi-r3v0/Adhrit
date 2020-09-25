.class final Lo/convertToRelativeDirection$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/convertToRelativeDirection;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
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
        "com/dreamplug/fabrik/ui/lending/holder/ActiveLoanCardViewHolder$bind$1$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/convertToRelativeDirection;

.field private synthetic onNavigationEvent:Lo/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lo/convertToRelativeDirection;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/convertToRelativeDirection$extraCallback;->ICustomTabsCallback:Lo/convertToRelativeDirection;

    iput-object p2, p0, Lo/convertToRelativeDirection$extraCallback;->onNavigationEvent:Lo/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 52
    iget-object p1, p0, Lo/convertToRelativeDirection$extraCallback;->ICustomTabsCallback:Lo/convertToRelativeDirection;

    invoke-static {p1}, Lo/convertToRelativeDirection;->ICustomTabsCallback(Lo/convertToRelativeDirection;)Lo/hasGapsToFix$onMessageChannelReady;

    move-result-object p1

    iget-object v0, p0, Lo/convertToRelativeDirection$extraCallback;->onNavigationEvent:Lo/StaggeredGridLayoutManager;

    const-string v1, "loan_management"

    const/4 v2, 0x0

    .line 1066
    invoke-interface {p1, v1, v0, v2}, Lo/hasGapsToFix$onMessageChannelReady;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V

    return-void
.end method
