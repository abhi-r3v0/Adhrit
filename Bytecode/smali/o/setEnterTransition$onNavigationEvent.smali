.class final Lo/setEnterTransition$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setEnterTransition;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onPostMessage:Lo/setEnterTransition;


# direct methods
.method constructor <init>(Lo/setEnterTransition;)V
    .locals 0

    iput-object p1, p0, Lo/setEnterTransition$onNavigationEvent;->onPostMessage:Lo/setEnterTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 112
    iget-object v0, p0, Lo/setEnterTransition$onNavigationEvent;->onPostMessage:Lo/setEnterTransition;

    invoke-static {v0}, Lo/setEnterTransition;->onPostMessage(Lo/setEnterTransition;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lo/setEnterTransition$onNavigationEvent;->onPostMessage:Lo/setEnterTransition;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->etCreditCardExpiry:I

    invoke-virtual {v0, v1}, Lo/setEnterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/updateSpecWithExtra;

    if-eqz v0, :cond_0

    .line 1179
    iget-object v0, v0, Lo/updateSpecWithExtra;->ICustomTabsCallback:Lo/recycleFromStart;

    if-eqz v0, :cond_0

    .line 113
    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/widget/EditText;)V

    :cond_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lo/setEnterTransition$onNavigationEvent;->onPostMessage:Lo/setEnterTransition;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->etCvv:I

    invoke-virtual {v0, v1}, Lo/setEnterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lo/extraCallback;->ICustomTabsCallback(Landroid/widget/EditText;)V

    :cond_2
    return-void
.end method
