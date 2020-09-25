.class final Lo/updateSubmitButton$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/updateSubmitButton;-><init>(Ljava/lang/String;Lo/getPreferredWidth;Lo/updateViewsVisibility;)V
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
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
.field private synthetic ICustomTabsCallback:Lo/updateViewsVisibility;


# direct methods
.method constructor <init>(Lo/updateViewsVisibility;)V
    .locals 0

    iput-object p1, p0, Lo/updateSubmitButton$onPostMessage;->ICustomTabsCallback:Lo/updateViewsVisibility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 23
    iget-object v0, p0, Lo/updateSubmitButton$onPostMessage;->ICustomTabsCallback:Lo/updateViewsVisibility;

    invoke-interface {v0}, Lo/updateViewsVisibility;->onMessageChannelReady()V

    return-void
.end method
