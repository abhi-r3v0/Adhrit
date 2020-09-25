.class final Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/dreamplug/utils/health/Health$ServiceStatus;",
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
        "it",
        "Lcom/dreamplug/utils/health/Health$ServiceStatus;",
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
.field private synthetic onMessageChannelReady:Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;

.field private synthetic onNavigationEvent:Ljava/io/Closeable;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;Ljava/io/Closeable;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$onMessageChannelReady;->onMessageChannelReady:Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;

    iput-object p2, p0, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$onMessageChannelReady;->onNavigationEvent:Ljava/io/Closeable;

    iput-object p3, p0, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 39
    check-cast p1, Lcom/dreamplug/utils/health/Health$ServiceStatus;

    .line 1089
    invoke-virtual {p1}, Lcom/dreamplug/utils/health/Health$ServiceStatus;->getQos()Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    move-result-object v0

    sget-object v1, Lcom/dreamplug/utils/health/Health$onNavigationEvent;->extraCallback:Lcom/dreamplug/utils/health/Health$onNavigationEvent;

    if-eq v0, v1, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$onMessageChannelReady;->onNavigationEvent:Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 1091
    iget-object v0, p0, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$onMessageChannelReady;->onMessageChannelReady:Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;

    iget-object v1, p0, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$onMessageChannelReady;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;->onPostMessage(Ljava/lang/String;Lcom/dreamplug/utils/health/Health$ServiceStatus;)V

    :cond_0
    return-void
.end method
