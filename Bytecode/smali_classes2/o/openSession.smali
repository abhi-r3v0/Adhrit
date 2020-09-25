.class final Lo/openSession;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private synthetic onMessageChannelReady:Lo/CrashlyticsNativeComponent;


# direct methods
.method synthetic constructor <init>(Lo/CrashlyticsNativeComponent;)V
    .locals 0

    iput-object p1, p0, Lo/openSession;->onMessageChannelReady:Lo/CrashlyticsNativeComponent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lo/openSession;->onMessageChannelReady:Lo/CrashlyticsNativeComponent;

    invoke-virtual {v0, p1, p2}, Lo/CrashlyticsNativeComponent;->onPostMessage(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
