.class public final Lo/startInterceptRequestLayout;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/startInterceptRequestLayout$extraCallback;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u000cB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001d\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001d\u0010\t\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemCtaActionStates;",
        "",
        "()V",
        "redeemCancelLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/utils/Event;",
        "",
        "getRedeemCancelLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "redeemCtaActionLiveData",
        "Lcom/dreamplug/fabrik/ui/lifestyle/redemption/RedeemCtaActionStates$RedeemCtaActionData;",
        "getRedeemCtaActionLiveData",
        "RedeemCtaActionData",
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
.field private static final ICustomTabsCallback:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/throwIfInMutationOperation<",
            "Lo/startInterceptRequestLayout$extraCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final onMessageChannelReady:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/throwIfInMutationOperation<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final onNavigationEvent:Lo/startInterceptRequestLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lo/startInterceptRequestLayout;

    invoke-direct {v0}, Lo/startInterceptRequestLayout;-><init>()V

    sput-object v0, Lo/startInterceptRequestLayout;->onNavigationEvent:Lo/startInterceptRequestLayout;

    .line 8
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    sput-object v0, Lo/startInterceptRequestLayout;->ICustomTabsCallback:Lo/setActive;

    .line 9
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    sput-object v0, Lo/startInterceptRequestLayout;->onMessageChannelReady:Lo/setActive;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback()Lo/setActive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setActive<",
            "Lo/throwIfInMutationOperation<",
            "Lo/startInterceptRequestLayout$extraCallback;",
            ">;>;"
        }
    .end annotation

    .line 8
    sget-object v0, Lo/startInterceptRequestLayout;->ICustomTabsCallback:Lo/setActive;

    return-object v0
.end method

.method public static onMessageChannelReady()Lo/setActive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setActive<",
            "Lo/throwIfInMutationOperation<",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation

    .line 9
    sget-object v0, Lo/startInterceptRequestLayout;->onMessageChannelReady:Lo/setActive;

    return-object v0
.end method
