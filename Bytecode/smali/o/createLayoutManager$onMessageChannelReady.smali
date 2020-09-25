.class final Lo/createLayoutManager$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/createLayoutManager;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "v",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "hasFocus",
        "",
        "onFocusChange"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

.field private synthetic extraCallback:Lo/createLayoutManager;


# direct methods
.method constructor <init>(Lo/createLayoutManager;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/createLayoutManager$onMessageChannelReady;->extraCallback:Lo/createLayoutManager;

    iput-object p2, p0, Lo/createLayoutManager$onMessageChannelReady;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 39
    iget-object p1, p0, Lo/createLayoutManager$onMessageChannelReady;->extraCallback:Lo/createLayoutManager;

    iget-object p2, p0, Lo/createLayoutManager$onMessageChannelReady;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    check-cast p2, Lo/ensureRightGlow;

    invoke-static {p1, p2}, Lo/createLayoutManager;->ICustomTabsCallback(Lo/createLayoutManager;Lo/ensureRightGlow;)V

    :cond_0
    return-void
.end method
