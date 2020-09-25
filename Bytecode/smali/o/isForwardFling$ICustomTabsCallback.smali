.class final Lo/isForwardFling$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isForwardFling;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onLongClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/isForwardFling;

.field private synthetic onMessageChannelReady:Lo/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lo/isForwardFling;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/isForwardFling$ICustomTabsCallback;->extraCallback:Lo/isForwardFling;

    iput-object p2, p0, Lo/isForwardFling$ICustomTabsCallback;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 63
    iget-object p1, p0, Lo/isForwardFling$ICustomTabsCallback;->extraCallback:Lo/isForwardFling;

    .line 1043
    iget-object p1, p1, Lo/isForwardFling;->onMessageChannelReady:Lo/hasGapsToFix$onMessageChannelReady;

    if-eqz p1, :cond_0

    .line 63
    iget-object v0, p0, Lo/isForwardFling$ICustomTabsCallback;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    const-string v2, "long_press"

    .line 1066
    invoke-interface {p1, v2, v0, v1}, Lo/hasGapsToFix$onMessageChannelReady;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
