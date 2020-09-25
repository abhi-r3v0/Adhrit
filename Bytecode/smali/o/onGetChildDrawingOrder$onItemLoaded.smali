.class public abstract Lo/onGetChildDrawingOrder$onItemLoaded;
.super Lo/onGetChildDrawingOrder;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onGetChildDrawingOrder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onItemLoaded"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onGetChildDrawingOrder$onItemLoaded$ICustomTabsCallback;,
        Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;,
        Lo/onGetChildDrawingOrder$onItemLoaded$onMessageChannelReady;,
        Lo/onGetChildDrawingOrder$onItemLoaded$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0004\u0003\u0004\u0005\u0006B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0004\u0007\u0008\t\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/navigation/AppScreens$TabAppScreens;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/AppScreens;",
        "()V",
        "Cards",
        "Home",
        "Lifestyle",
        "Money",
        "Lcom/dreamplug/fabrik/ui/main/navigation/AppScreens$TabAppScreens$Cards;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/AppScreens$TabAppScreens$Home;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/AppScreens$TabAppScreens$Money;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/AppScreens$TabAppScreens$Lifestyle;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v0}, Lo/onGetChildDrawingOrder;-><init>(B)V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lo/onGetChildDrawingOrder$onItemLoaded;-><init>()V

    return-void
.end method
