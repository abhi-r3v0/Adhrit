.class public final Lo/updateRemainingSpans$onMessageChannelReady;
.super Lo/attachViewToSpans;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/updateRemainingSpans;->ICustomTabsCallback(Landroid/os/Bundle;)Landroid/app/Dialog;
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
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/dreamplug/widget/FullScreenDialogFragment$onCreateDialog$1",
        "Lcom/dreamplug/widget/FullScreenAlertDialog;",
        "onBackPressed",
        "",
        "widget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/updateRemainingSpans;


# direct methods
.method constructor <init>(Lo/updateRemainingSpans;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 10
    iput-object p1, p0, Lo/updateRemainingSpans$onMessageChannelReady;->onPostMessage:Lo/updateRemainingSpans;

    invoke-direct {p0, p2}, Lo/attachViewToSpans;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 1

    .line 12
    iget-object v0, p0, Lo/updateRemainingSpans$onMessageChannelReady;->onPostMessage:Lo/updateRemainingSpans;

    invoke-virtual {v0}, Lo/updateRemainingSpans;->onPostMessage()V

    return-void
.end method
