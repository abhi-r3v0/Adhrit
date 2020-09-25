.class public final Lo/getRowCountForAccessibility;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getRowCountForAccessibility$ICustomTabsCallback;,
        Lo/getRowCountForAccessibility$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00162\u00020\u0001:\u0002\u0016\u0017B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u0016\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u0012R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/interstitial/InterstitialManager;",
        "",
        "activity",
        "Landroidx/fragment/app/FragmentActivity;",
        "(Landroidx/fragment/app/FragmentActivity;)V",
        "getActivity",
        "()Landroidx/fragment/app/FragmentActivity;",
        "service",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBAService;",
        "getService",
        "()Lcom/dreamplug/fabrik/ui/nba/helper/NBAService;",
        "service$delegate",
        "Lkotlin/Lazy;",
        "onInterstitialTrigger",
        "",
        "action",
        "Lclub/cred/interjection/data/models/Action;",
        "campaignId",
        "",
        "openInterstitial",
        "data",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
        "Companion",
        "InterstitialData",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/getRowCountForAccessibility$onPostMessage;

.field private static onPostMessage:Z


# instance fields
.field final onNavigationEvent:Lo/isSameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/getRowCountForAccessibility$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/getRowCountForAccessibility$onPostMessage;-><init>(B)V

    sput-object v0, Lo/getRowCountForAccessibility;->onMessageChannelReady:Lo/getRowCountForAccessibility$onPostMessage;

    return-void
.end method

.method public constructor <init>(Lo/onSessionEvent;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object p1, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 62
    sget-object p1, Lo/getRowCountForAccessibility$onMessageChannelReady;->onNavigationEvent:Lo/getRowCountForAccessibility$onMessageChannelReady;

    check-cast p1, Lo/getServerTime;

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 62
    iput-object v0, p0, Lo/getRowCountForAccessibility;->onNavigationEvent:Lo/isSameListener;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback(Z)V
    .locals 0

    .line 19
    sput-boolean p0, Lo/getRowCountForAccessibility;->onPostMessage:Z

    return-void
.end method

.method public static final synthetic onMessageChannelReady()Z
    .locals 1

    .line 19
    sget-boolean v0, Lo/getRowCountForAccessibility;->onPostMessage:Z

    return v0
.end method

.method public static onNavigationEvent(Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;Ljava/lang/String;)V
    .locals 3

    const-string v0, "data"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "campaignId"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object v0, Lo/onLayoutCompleted;->onTransact:Lo/onLayoutCompleted;

    new-instance v1, Lo/throwIfInMutationOperation;

    new-instance v2, Lo/getRowCountForAccessibility$ICustomTabsCallback;

    invoke-direct {v2, p0, p1}, Lo/getRowCountForAccessibility$ICustomTabsCallback;-><init>(Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
