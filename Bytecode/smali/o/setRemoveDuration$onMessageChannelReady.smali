.class public abstract Lo/setRemoveDuration$onMessageChannelReady;
.super Lo/setRemoveDuration;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setRemoveDuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setRemoveDuration$onMessageChannelReady$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u00002\u00020\u0001:\u0001\u0003B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u0082\u0001\u0001\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/navigation/PageCommand$Track;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/PageCommand;",
        "()V",
        "ShowBBTrack",
        "Lcom/dreamplug/fabrik/ui/main/navigation/PageCommand$Track$ShowBBTrack;",
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

    .line 64
    invoke-direct {p0, v0}, Lo/setRemoveDuration;-><init>(B)V

    return-void
.end method

.method public synthetic constructor <init>(B)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lo/setRemoveDuration$onMessageChannelReady;-><init>()V

    return-void
.end method
