.class public final Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;
.super Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B3\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0002\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0015\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000f\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/navigation/NavigationCommand$SwitchFragment;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/NavigationCommand;",
        "fragmentTag",
        "",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "transactionTag",
        "replace",
        "",
        "resultRequestCode",
        "",
        "(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;ZLjava/lang/Integer;)V",
        "getFragment",
        "()Landroidx/fragment/app/Fragment;",
        "getFragmentTag",
        "()Ljava/lang/String;",
        "getReplace",
        "()Z",
        "getResultRequestCode",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getTransactionTag",
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

.field final extraCallback:Landroidx/fragment/app/Fragment;

.field final onMessageChannelReady:Z

.field final onNavigationEvent:Ljava/lang/String;

.field final onPostMessage:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;ZLjava/lang/Integer;)V
    .locals 1

    const-string v0, "fragmentTag"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "transactionTag"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 648
    invoke-direct {p0, v0}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;-><init>(B)V

    iput-object p1, p0, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    iput-object p2, p0, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;->extraCallback:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;->onPostMessage:Ljava/lang/String;

    iput-boolean p4, p0, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;->onMessageChannelReady:Z

    iput-object p5, p0, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;->ICustomTabsCallback:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;ZLjava/lang/Integer;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    .line 647
    invoke-direct/range {v0 .. v5}, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;Ljava/lang/String;ZLjava/lang/Integer;)V

    return-void
.end method
