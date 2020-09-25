.class public final Lo/setContentInsetStartWithNavigation$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/removeAllAnimatorListeners;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setContentInsetStartWithNavigation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/network/LoggingInterceptor$Companion;",
        "",
        "()V",
        "UNACCEPTABLE_DELAY",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/setFrame;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/setFrame;)V
    .locals 0

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    iput-object p1, p0, Lo/setContentInsetStartWithNavigation$onPostMessage;->extraCallback:Lo/setFrame;

    return-void
.end method


# virtual methods
.method public final extraCallback()I
    .locals 1

    .line 1027
    iget-object v0, p0, Lo/setContentInsetStartWithNavigation$onPostMessage;->extraCallback:Lo/setFrame;

    invoke-interface {v0}, Lo/setFrame;->onPostMessage()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 1037
    iget-object v0, p0, Lo/setContentInsetStartWithNavigation$onPostMessage;->extraCallback:Lo/setFrame;

    invoke-interface {v0}, Lo/setFrame;->ICustomTabsCallback()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(I)I
    .locals 1

    .line 1032
    iget-object v0, p0, Lo/setContentInsetStartWithNavigation$onPostMessage;->extraCallback:Lo/setFrame;

    invoke-interface {v0, p1}, Lo/setFrame;->ICustomTabsCallback(I)I

    move-result p1

    return p1
.end method
