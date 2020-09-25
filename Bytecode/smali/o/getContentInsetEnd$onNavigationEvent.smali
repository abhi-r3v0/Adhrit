.class final Lo/getContentInsetEnd$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getContentInsetEnd;->onMessageChannelReady(Landroid/view/View;)Landroid/view/animation/Animation;
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Landroid/view/animation/Animation;

.field private synthetic onMessageChannelReady:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lo/getContentInsetEnd$onNavigationEvent;->onMessageChannelReady:Landroid/view/View;

    iput-object p2, p0, Lo/getContentInsetEnd$onNavigationEvent;->ICustomTabsCallback:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 450
    iget-object v0, p0, Lo/getContentInsetEnd$onNavigationEvent;->onMessageChannelReady:Landroid/view/View;

    iget-object v1, p0, Lo/getContentInsetEnd$onNavigationEvent;->ICustomTabsCallback:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
