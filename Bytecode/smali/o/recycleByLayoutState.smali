.class public final Lo/recycleByLayoutState;
.super Lo/setQueue;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/recycleByLayoutState$ICustomTabsCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u001c2\u00020\u0001:\u0001\u001cB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u001a\u001a\u00020\u001bH\u0002R\u001d\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0010\u0010\u0011R(\u0010\u0015\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0006@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "actionData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/androidapp/core/Event;",
        "",
        "getActionData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "certificateData",
        "Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;",
        "getCertificateData",
        "isFetching",
        "",
        "lifestyleService",
        "Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleService;",
        "getLifestyleService",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleService;",
        "lifestyleService$delegate",
        "Lkotlin/Lazy;",
        "value",
        "rewardId",
        "getRewardId",
        "()Ljava/lang/String;",
        "setRewardId",
        "(Ljava/lang/String;)V",
        "fetchCertificateData",
        "",
        "Companion",
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
# The value of this static final field might be set in the static constructor
.field private static final ICustomTabsCallback$Stub:Ljava/lang/String; = "error_received"

.field public static final extraCallback:Lo/recycleByLayoutState$ICustomTabsCallback;


# instance fields
.field final ICustomTabsCallback:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/getThumbTintList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field onNavigationEvent:Ljava/lang/String;

.field private final onPostMessage:Lo/isSameListener;

.field private onRelationshipValidationResult:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/recycleByLayoutState$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/recycleByLayoutState$ICustomTabsCallback;-><init>(B)V

    sput-object v0, Lo/recycleByLayoutState;->extraCallback:Lo/recycleByLayoutState$ICustomTabsCallback;

    const-string v0, "error_received"

    .line 56
    sput-object v0, Lo/recycleByLayoutState;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lo/setQueue;-><init>()V

    .line 17
    sget-object v0, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 59
    sget-object v0, Lo/recycleByLayoutState$onNavigationEvent;->onPostMessage:Lo/recycleByLayoutState$onNavigationEvent;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 59
    iput-object v1, p0, Lo/recycleByLayoutState;->onPostMessage:Lo/isSameListener;

    .line 46
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    iput-object v0, p0, Lo/recycleByLayoutState;->onMessageChannelReady:Lo/setActive;

    .line 47
    new-instance v0, Lo/recycleByLayoutState$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/recycleByLayoutState$onMessageChannelReady;-><init>(Lo/recycleByLayoutState;)V

    check-cast v0, Lo/setActive;

    iput-object v0, p0, Lo/recycleByLayoutState;->ICustomTabsCallback:Lo/setActive;

    return-void
.end method

.method public static final synthetic ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lo/recycleByLayoutState;->ICustomTabsCallback$Stub:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic extraCallback(Lo/recycleByLayoutState;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lo/recycleByLayoutState;->onRelationshipValidationResult:Z

    return p0
.end method

.method public static final synthetic onMessageChannelReady(Lo/recycleByLayoutState;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lo/recycleByLayoutState;->onRelationshipValidationResult:Z

    return-void
.end method

.method public static final synthetic onPostMessage(Lo/recycleByLayoutState;)V
    .locals 0

    .line 15
    invoke-virtual {p0}, Lo/recycleByLayoutState;->onPostMessage()V

    return-void
.end method


# virtual methods
.method final onPostMessage()V
    .locals 5

    .line 27
    iget-object v0, p0, Lo/recycleByLayoutState;->onNavigationEvent:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Lo/recycleByLayoutState;->onRelationshipValidationResult:Z

    .line 1000
    iget-object v1, p0, Lo/recycleByLayoutState;->onPostMessage:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/computeHorizontalScrollExtent;

    .line 29
    invoke-interface {v1, v0}, Lo/computeHorizontalScrollExtent;->onMessageChannelReady(Ljava/lang/String;)Lo/clearScrap;

    move-result-object v0

    .line 30
    sget-object v1, Lo/validateViewHolderForOffsetPosition;->onNavigationEvent:Lo/validateViewHolderForOffsetPosition$onPostMessage;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lo/validateViewHolderForOffsetPosition$onPostMessage;->extraCallback(IJI)Lo/validateViewHolderForOffsetPosition;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/clearScrap;->onMessageChannelReady(Lo/validateViewHolderForOffsetPosition;)V

    .line 31
    new-instance v1, Lo/recycleByLayoutState$extraCallback;

    invoke-direct {v1, p0}, Lo/recycleByLayoutState$extraCallback;-><init>(Lo/recycleByLayoutState;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    :cond_0
    return-void
.end method
