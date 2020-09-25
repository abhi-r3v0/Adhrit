.class public final Lo/hasValidAnchor$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onCreateActionView$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hasValidAnchor;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/compass/mosiac/MosaicFragment$onViewCreated$1",
        "Lcom/dodola/bubblecloud/BubbleCloudView$ScrollListener;",
        "onScroll",
        "",
        "state",
        "",
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
.field private synthetic onPostMessage:Lo/hasValidAnchor;


# direct methods
.method constructor <init>(Lo/hasValidAnchor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lo/hasValidAnchor$asBinder;->onPostMessage:Lo/hasValidAnchor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 150
    iget-object p1, p0, Lo/hasValidAnchor$asBinder;->onPostMessage:Lo/hasValidAnchor;

    invoke-static {p1}, Lo/hasValidAnchor;->onPostMessage(Lo/hasValidAnchor;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lo/hasValidAnchor;->ICustomTabsCallback(Lo/hasValidAnchor;I)V

    :cond_0
    return-void
.end method
