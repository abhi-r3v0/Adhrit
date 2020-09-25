.class public final Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;
.super Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0018\u00002\u00020\u0001B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0015\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/navigation/NavigationCommand$LaunchDialogFragment;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/NavigationCommand;",
        "fragmentTag",
        "",
        "fragment",
        "Landroidx/fragment/app/DialogFragment;",
        "resultRequestCode",
        "",
        "addToBackStack",
        "",
        "(Ljava/lang/String;Landroidx/fragment/app/DialogFragment;Ljava/lang/Integer;Z)V",
        "getAddToBackStack",
        "()Z",
        "getFragment",
        "()Landroidx/fragment/app/DialogFragment;",
        "getFragmentTag",
        "()Ljava/lang/String;",
        "getResultRequestCode",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
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
.field final ICustomTabsCallback:Ljava/lang/Integer;

.field final extraCallback:Ljava/lang/String;

.field final onMessageChannelReady:Z

.field final onNavigationEvent:Lo/onAudioInfoChanged;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;Z)V
    .locals 1

    const-string v0, "fragmentTag"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 655
    invoke-direct {p0, v0}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;-><init>(B)V

    iput-object p1, p0, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    iput-object p2, p0, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;->onNavigationEvent:Lo/onAudioInfoChanged;

    iput-object p3, p0, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Integer;

    iput-boolean p4, p0, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;->onMessageChannelReady:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;ZI)V
    .locals 1

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x1

    .line 654
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;-><init>(Ljava/lang/String;Lo/onAudioInfoChanged;Ljava/lang/Integer;Z)V

    return-void
.end method
