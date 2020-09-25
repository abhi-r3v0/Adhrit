.class final Lo/getContentInsetEnd$warmup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getContentInsetEnd;->onPostMessage(Lcom/dreamplug/androidapp/login/LoginUiModel;)V
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
.field private synthetic ICustomTabsCallback:Lo/getContentInsetEnd;


# direct methods
.method constructor <init>(Lo/getContentInsetEnd;)V
    .locals 0

    iput-object p1, p0, Lo/getContentInsetEnd$warmup;->ICustomTabsCallback:Lo/getContentInsetEnd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 265
    iget-object v0, p0, Lo/getContentInsetEnd$warmup;->ICustomTabsCallback:Lo/getContentInsetEnd;

    .line 1045
    iget-object v0, v0, Lo/getContentInsetEnd;->extraCallback:Lo/getMaxEnd;

    const/4 v1, 0x0

    .line 265
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
