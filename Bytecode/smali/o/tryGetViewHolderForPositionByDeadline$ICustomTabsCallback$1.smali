.class final Lo/tryGetViewHolderForPositionByDeadline$ICustomTabsCallback$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/instantiateReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/tryGetViewHolderForPositionByDeadline$ICustomTabsCallback;
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "authStatus",
        "",
        "onChange"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onNavigationEvent:Lo/tryGetViewHolderForPositionByDeadline$ICustomTabsCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/tryGetViewHolderForPositionByDeadline$ICustomTabsCallback$1;

    invoke-direct {v0}, Lo/tryGetViewHolderForPositionByDeadline$ICustomTabsCallback$1;-><init>()V

    sput-object v0, Lo/tryGetViewHolderForPositionByDeadline$ICustomTabsCallback$1;->onNavigationEvent:Lo/tryGetViewHolderForPositionByDeadline$ICustomTabsCallback$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lo/tryGetViewHolderForPositionByDeadline;->onPostMessage:Lo/tryGetViewHolderForPositionByDeadline;

    invoke-static {p1}, Lo/tryGetViewHolderForPositionByDeadline;->extraCallback(Lo/tryGetViewHolderForPositionByDeadline;)V

    .line 21
    sget-object p1, Lo/getScrapCount;->onMessageChannelReady:Lo/getScrapCount;

    invoke-static {}, Lo/getScrapCount;->onPostMessage()Lo/getScrapList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 22
    sget-object v0, Lo/tryGetViewHolderForPositionByDeadline;->onPostMessage:Lo/tryGetViewHolderForPositionByDeadline;

    invoke-static {v0}, Lo/tryGetViewHolderForPositionByDeadline;->ICustomTabsCallback(Lo/tryGetViewHolderForPositionByDeadline;)Lo/instantiateReceiver;

    move-result-object v0

    invoke-interface {p1, v0}, Lo/getScrapList;->ICustomTabsCallback(Lo/instantiateReceiver;)V

    :cond_0
    return-void
.end method
