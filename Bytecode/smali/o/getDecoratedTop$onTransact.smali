.class public final Lo/getDecoratedTop$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getDecoratedTop;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "com/dreamplug/fabrik/ui/onboardAddCard/OnboardAddCardHolderNameDialog$setComplete$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/getDecoratedTop;


# direct methods
.method public constructor <init>(Lo/getDecoratedTop;)V
    .locals 0

    iput-object p1, p0, Lo/getDecoratedTop$onTransact;->onPostMessage:Lo/getDecoratedTop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 83
    iget-object v0, p0, Lo/getDecoratedTop$onTransact;->onPostMessage:Lo/getDecoratedTop;

    invoke-static {v0}, Lo/getDecoratedTop;->onPostMessage(Lo/getDecoratedTop;)Lo/getDecoratedTop$extraCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/getDecoratedTop$extraCallback;->ICustomTabsCallback()V

    :cond_0
    return-void
.end method
