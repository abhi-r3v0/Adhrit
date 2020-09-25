.class public final Lo/recycleViewsFromEnd$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/recycleViewsFromEnd;
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
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/LifestyleCompassFragment$Companion;",
        "",
        "()V",
        "SELECTED_FRAME",
        "",
        "UNSELECTED_FRAME",
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
.field private final onMessageChannelReady:Landroid/content/Intent;

.field private final onNavigationEvent:Lo/findReferenceChildClosestToStart$onPostMessage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/findReferenceChildClosestToStart$onPostMessage;Landroid/content/Intent;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/recycleViewsFromEnd$onMessageChannelReady;->onNavigationEvent:Lo/findReferenceChildClosestToStart$onPostMessage;

    iput-object p2, p0, Lo/recycleViewsFromEnd$onMessageChannelReady;->onMessageChannelReady:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 2000
    iget-object v0, p0, Lo/recycleViewsFromEnd$onMessageChannelReady;->onNavigationEvent:Lo/findReferenceChildClosestToStart$onPostMessage;

    iget-object v1, p0, Lo/recycleViewsFromEnd$onMessageChannelReady;->onMessageChannelReady:Landroid/content/Intent;

    .line 3000
    iget-object v2, v0, Lo/findReferenceChildClosestToStart$onPostMessage;->onMessageChannelReady:Lo/setExecutor;

    iget-object v0, v0, Lo/findReferenceChildClosestToStart$onPostMessage;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Lo/setExecutor;->onPostMessage(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
