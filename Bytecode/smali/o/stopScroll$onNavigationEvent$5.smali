.class final Lo/stopScroll$onNavigationEvent$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/stopScroll$onNavigationEvent;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Landroid/view/WindowInsets;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/WindowInsets;",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/stopScroll$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/stopScroll$onNavigationEvent;)V
    .locals 0

    iput-object p1, p0, Lo/stopScroll$onNavigationEvent$5;->extraCallback:Lo/stopScroll$onNavigationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Landroid/view/WindowInsets;

    if-eqz p1, :cond_0

    .line 1697
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1698
    :goto_0
    iget-object v0, p0, Lo/stopScroll$onNavigationEvent$5;->extraCallback:Lo/stopScroll$onNavigationEvent;

    iget-object v0, v0, Lo/stopScroll$onNavigationEvent;->extraCallback:Landroid/view/View;

    iget-object v1, p0, Lo/stopScroll$onNavigationEvent$5;->extraCallback:Lo/stopScroll$onNavigationEvent;

    iget-object v1, v1, Lo/stopScroll$onNavigationEvent;->extraCallback:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    iget-object v2, p0, Lo/stopScroll$onNavigationEvent$5;->extraCallback:Lo/stopScroll$onNavigationEvent;

    iget-object v2, v2, Lo/stopScroll$onNavigationEvent;->extraCallback:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lo/stopScroll$onNavigationEvent$5;->extraCallback:Lo/stopScroll$onNavigationEvent;

    iget-object v3, v3, Lo/stopScroll$onNavigationEvent;->extraCallback:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingEnd()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
