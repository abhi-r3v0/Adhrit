.class public abstract Lo/setRemoveDuration$onNavigationEvent;
.super Lo/setRemoveDuration;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setRemoveDuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setRemoveDuration$onNavigationEvent$onPostMessage;,
        Lo/setRemoveDuration$onNavigationEvent$ICustomTabsCallback;,
        Lo/setRemoveDuration$onNavigationEvent$onMessageChannelReady;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0003\u0006\u0007\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/navigation/PageCommand$Lifestyle;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/PageCommand;",
        "()V",
        "FullRefresh",
        "ShowCard",
        "ShowLandingCard",
        "Lcom/dreamplug/fabrik/ui/main/navigation/PageCommand$Lifestyle$ShowCard;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/PageCommand$Lifestyle$FullRefresh;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/PageCommand$Lifestyle$ShowLandingCard;",
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

    .line 54
    invoke-direct {p0, v0}, Lo/setRemoveDuration;-><init>(B)V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lo/setRemoveDuration$onNavigationEvent;-><init>()V

    return-void
.end method
