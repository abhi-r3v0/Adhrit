.class public Lo/appendViewToAllSpans$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/appendViewToAllSpans;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\u0008\u0016\u0018\u00002\u00020\u0001BA\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rR\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0013\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/dreamplug/widget/MessageSnackBar$Data;",
        "",
        "text",
        "",
        "cta",
        "listener",
        "Lcom/dreamplug/widget/MessageSnackBar$SnackBarListener;",
        "delay",
        "",
        "bgColor",
        "",
        "autoDismiss",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/widget/MessageSnackBar$SnackBarListener;JIZ)V",
        "getAutoDismiss",
        "()Z",
        "getBgColor",
        "()I",
        "getCta",
        "()Ljava/lang/String;",
        "getDelay",
        "()J",
        "getListener",
        "()Lcom/dreamplug/widget/MessageSnackBar$SnackBarListener;",
        "getText",
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
.field final ICustomTabsCallback:J

.field final ICustomTabsCallback$Stub:Z

.field final extraCallback:I

.field final onMessageChannelReady:Lo/appendViewToAllSpans$ICustomTabsCallback;

.field final onNavigationEvent:Ljava/lang/String;

.field final onPostMessage:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lo/appendViewToAllSpans$ICustomTabsCallback;JIZ)V
    .locals 1

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cta"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/appendViewToAllSpans$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    iput-object p2, p0, Lo/appendViewToAllSpans$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    iput-object p3, p0, Lo/appendViewToAllSpans$onNavigationEvent;->onMessageChannelReady:Lo/appendViewToAllSpans$ICustomTabsCallback;

    iput-wide p4, p0, Lo/appendViewToAllSpans$onNavigationEvent;->ICustomTabsCallback:J

    iput p6, p0, Lo/appendViewToAllSpans$onNavigationEvent;->extraCallback:I

    iput-boolean p7, p0, Lo/appendViewToAllSpans$onNavigationEvent;->ICustomTabsCallback$Stub:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lo/appendViewToAllSpans$ICustomTabsCallback;JIZI)V
    .locals 9

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    const-string v0, "OK"

    move-object v3, v0

    goto :goto_0

    :cond_0
    move-object v3, p2

    :goto_0
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-object v4, v0

    goto :goto_1

    :cond_1
    move-object v4, p3

    :goto_1
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_2

    const-wide/16 v0, 0x9c4

    move-wide v5, v0

    goto :goto_2

    :cond_2
    move-wide v5, p4

    :goto_2
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_3

    .line 136
    sget v0, Lo/preferLastSpan$onMessageChannelReady;->error_red:I

    move v7, v0

    goto :goto_3

    :cond_3
    move v7, p6

    :goto_3
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    const/4 v8, 0x1

    goto :goto_4

    :cond_4
    move/from16 v8, p7

    :goto_4
    move-object v1, p0

    move-object v2, p1

    .line 137
    invoke-direct/range {v1 .. v8}, Lo/appendViewToAllSpans$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/appendViewToAllSpans$ICustomTabsCallback;JIZ)V

    return-void
.end method
