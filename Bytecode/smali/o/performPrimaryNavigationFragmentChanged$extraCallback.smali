.class public final Lo/performPrimaryNavigationFragmentChanged$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onActivityCreated$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/performPrimaryNavigationFragmentChanged;-><init>(Landroid/view/ViewGroup;Lo/hasGapsToFix$onMessageChannelReady;B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0003H\u0016J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016J\u0008\u0010\u0008\u001a\u00020\u0003H\u0016J\u0010\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\r\u001a\u00020\u0003H\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/cm/adapters/InstrumentCardViewHolder$cardClickListener$1",
        "Lcom/dreamplug/fabrik/helper/ui/widget/CredCard$CardEventListener;",
        "manageCard",
        "",
        "data",
        "Lcom/dreamplug/fabrik/ui/control/CardDetails;",
        "onClick",
        "onHideCard",
        "onPayNow",
        "onSwipeEnd",
        "state",
        "",
        "onVerifiedClicked",
        "onViewDetails",
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
.field final synthetic ICustomTabsCallback:Lo/performPrimaryNavigationFragmentChanged;


# direct methods
.method constructor <init>(Lo/performPrimaryNavigationFragmentChanged;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lo/performPrimaryNavigationFragmentChanged$extraCallback;->ICustomTabsCallback:Lo/performPrimaryNavigationFragmentChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    .line 204
    iget-object v0, p0, Lo/performPrimaryNavigationFragmentChanged$extraCallback;->ICustomTabsCallback:Lo/performPrimaryNavigationFragmentChanged;

    const-string/jumbo v1, "view_details"

    invoke-virtual {v0, v1}, Lo/createOrientationHelpers;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method
