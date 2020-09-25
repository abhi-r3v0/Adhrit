.class public final Lo/hitThumb;
.super Landroidx/lifecycle/LiveData;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Lo/getThumbTintList<",
        "+",
        "Lo/cancelPositionAnimator;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0003J\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0003\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/data/repository/inapp/InAppPopupData;",
        "Landroidx/lifecycle/LiveData;",
        "Lcom/dreamplug/androidapp/core/Event;",
        "Lcom/dreamplug/androidapp/data/repository/inapp/InAppData;",
        "()V",
        "handle",
        "",
        "fragmentActivity",
        "Landroidx/fragment/app/FragmentActivity;",
        "inAppData",
        "post",
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
.field public static final asBinder:Lo/hitThumb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lo/hitThumb;

    invoke-direct {v0}, Lo/hitThumb;-><init>()V

    sput-object v0, Lo/hitThumb;->asBinder:Lo/hitThumb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback(Lo/onSessionEvent;Lo/cancelPositionAnimator;)V
    .locals 1

    const-string v0, "fragmentActivity"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inAppData"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {p1, p0}, Lo/cancelPositionAnimator;->onNavigationEvent(Lo/onSessionEvent;)V

    return-void
.end method
