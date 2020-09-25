.class final Lo/notifyDataSetChanged$requestPostMessageChannel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/notifyDataSetChanged;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "data",
        "Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/notifyDataSetChanged;


# direct methods
.method constructor <init>(Lo/notifyDataSetChanged;)V
    .locals 0

    iput-object p1, p0, Lo/notifyDataSetChanged$requestPostMessageChannel;->onMessageChannelReady:Lo/notifyDataSetChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 78
    check-cast p1, Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;

    if-eqz p1, :cond_0

    .line 1269
    iget-object v0, p0, Lo/notifyDataSetChanged$requestPostMessageChannel;->onMessageChannelReady:Lo/notifyDataSetChanged;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->bottomBar:I

    invoke-virtual {v0, v1}, Lo/notifyDataSetChanged;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setFrom;

    invoke-virtual {v0, p1}, Lo/setFrom;->setNotificationBadges(Lcom/dreamplug/fabrik/ui/notificationCentre/BadgeNotificationsResponse;)V

    :cond_0
    return-void
.end method
