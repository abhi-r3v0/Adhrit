.class final Lo/appendViewToAllSpans$onTransact$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/appendViewToAllSpans$onTransact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/animation/Animation;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/animation/Animation;",
        "invoke",
        "com/dreamplug/widget/MessageSnackBar$showAnimation$2$1$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/appendViewToAllSpans$onTransact;


# direct methods
.method constructor <init>(Lo/appendViewToAllSpans$onTransact;)V
    .locals 0

    iput-object p1, p0, Lo/appendViewToAllSpans$onTransact$onMessageChannelReady;->extraCallback:Lo/appendViewToAllSpans$onTransact;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1065
    iget-object p1, p0, Lo/appendViewToAllSpans$onTransact$onMessageChannelReady;->extraCallback:Lo/appendViewToAllSpans$onTransact;

    iget-object p1, p1, Lo/appendViewToAllSpans$onTransact;->ICustomTabsCallback:Lo/appendViewToAllSpans;

    .line 2035
    iget-object p1, p1, Lo/appendViewToAllSpans;->onMessageChannelReady:Lo/appendViewToAllSpans$onNavigationEvent;

    if-nez p1, :cond_0

    .line 1065
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 2137
    :cond_0
    iget-boolean p1, p1, Lo/appendViewToAllSpans$onNavigationEvent;->ICustomTabsCallback$Stub:Z

    if-eqz p1, :cond_2

    .line 1066
    iget-object p1, p0, Lo/appendViewToAllSpans$onTransact$onMessageChannelReady;->extraCallback:Lo/appendViewToAllSpans$onTransact;

    iget-object p1, p1, Lo/appendViewToAllSpans$onTransact;->ICustomTabsCallback:Lo/appendViewToAllSpans;

    iget-object v0, p0, Lo/appendViewToAllSpans$onTransact$onMessageChannelReady;->extraCallback:Lo/appendViewToAllSpans$onTransact;

    iget-object v0, v0, Lo/appendViewToAllSpans$onTransact;->ICustomTabsCallback:Lo/appendViewToAllSpans;

    invoke-static {v0}, Lo/appendViewToAllSpans;->onPostMessage(Lo/appendViewToAllSpans;)Ljava/lang/Runnable;

    move-result-object v0

    iget-object v1, p0, Lo/appendViewToAllSpans$onTransact$onMessageChannelReady;->extraCallback:Lo/appendViewToAllSpans$onTransact;

    iget-object v1, v1, Lo/appendViewToAllSpans$onTransact;->ICustomTabsCallback:Lo/appendViewToAllSpans;

    .line 3035
    iget-object v1, v1, Lo/appendViewToAllSpans;->onMessageChannelReady:Lo/appendViewToAllSpans$onNavigationEvent;

    if-nez v1, :cond_1

    .line 1066
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 3135
    :cond_1
    iget-wide v1, v1, Lo/appendViewToAllSpans$onNavigationEvent;->ICustomTabsCallback:J

    .line 1066
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    :cond_2
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
