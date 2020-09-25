.class final Lo/updateSubmitButton$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/updateSubmitButton;->onPostMessage(Ljava/lang/Object;)V
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
.field private synthetic ICustomTabsCallback:Ljava/lang/Object;

.field private synthetic onNavigationEvent:Lo/updateSubmitButton;


# direct methods
.method constructor <init>(Lo/updateSubmitButton;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lo/updateSubmitButton$extraCallback;->onNavigationEvent:Lo/updateSubmitButton;

    iput-object p2, p0, Lo/updateSubmitButton$extraCallback;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 31
    iget-object v0, p0, Lo/updateSubmitButton$extraCallback;->onNavigationEvent:Lo/updateSubmitButton;

    .line 1013
    iget-object v0, v0, Lo/updateSubmitButton;->onMessageChannelReady:Lo/getPreferredWidth;

    .line 31
    iget-object v1, p0, Lo/updateSubmitButton$extraCallback;->ICustomTabsCallback:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lo/getPreferredWidth;->onPostMessage(Ljava/lang/Object;)V

    return-void
.end method
