.class final Lo/ensureMenuView$onPostMessage$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ensureMenuView$onPostMessage;
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
.field private synthetic ICustomTabsCallback:Lo/ensureMenuView$onPostMessage;


# direct methods
.method constructor <init>(Lo/ensureMenuView$onPostMessage;)V
    .locals 0

    iput-object p1, p0, Lo/ensureMenuView$onPostMessage$5;->ICustomTabsCallback:Lo/ensureMenuView$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 169
    iget-object v0, p0, Lo/ensureMenuView$onPostMessage$5;->ICustomTabsCallback:Lo/ensureMenuView$onPostMessage;

    iget-object v0, v0, Lo/ensureMenuView$onPostMessage;->extraCallback:Lo/ensureMenuView;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->consent:I

    invoke-virtual {v0, v1}, Lo/ensureMenuView;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/createFullSpanItemFromEnd;

    const-string v1, "consent"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/createFullSpanItemFromEnd;->setEnabled(Z)V

    return-void
.end method
