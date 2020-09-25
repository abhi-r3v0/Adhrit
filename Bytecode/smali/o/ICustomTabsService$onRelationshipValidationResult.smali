.class abstract Lo/ICustomTabsService$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ICustomTabsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "onRelationshipValidationResult"
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/ICustomTabsService;

.field private onMessageChannelReady:Landroid/content/BroadcastReceiver;


# direct methods
.method constructor <init>(Lo/ICustomTabsService;)V
    .locals 0

    .line 3191
    iput-object p1, p0, Lo/ICustomTabsService$onRelationshipValidationResult;->extraCallback:Lo/ICustomTabsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract ICustomTabsCallback()V
.end method

.method extraCallback()V
    .locals 3

    .line 3200
    invoke-virtual {p0}, Lo/ICustomTabsService$onRelationshipValidationResult;->onPostMessage()V

    .line 3202
    invoke-virtual {p0}, Lo/ICustomTabsService$onRelationshipValidationResult;->onMessageChannelReady()Landroid/content/IntentFilter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3203
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countActions()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3208
    :cond_0
    iget-object v1, p0, Lo/ICustomTabsService$onRelationshipValidationResult;->onMessageChannelReady:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 3209
    new-instance v1, Lo/ICustomTabsService$onRelationshipValidationResult$5;

    invoke-direct {v1, p0}, Lo/ICustomTabsService$onRelationshipValidationResult$5;-><init>(Lo/ICustomTabsService$onRelationshipValidationResult;)V

    iput-object v1, p0, Lo/ICustomTabsService$onRelationshipValidationResult;->onMessageChannelReady:Landroid/content/BroadcastReceiver;

    .line 3216
    :cond_1
    iget-object v1, p0, Lo/ICustomTabsService$onRelationshipValidationResult;->extraCallback:Lo/ICustomTabsService;

    iget-object v1, v1, Lo/ICustomTabsService;->onMessageChannelReady:Landroid/content/Context;

    iget-object v2, p0, Lo/ICustomTabsService$onRelationshipValidationResult;->onMessageChannelReady:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    :goto_0
    return-void
.end method

.method abstract onMessageChannelReady()Landroid/content/IntentFilter;
.end method

.method abstract onNavigationEvent()I
.end method

.method onPostMessage()V
    .locals 2

    .line 3223
    iget-object v0, p0, Lo/ICustomTabsService$onRelationshipValidationResult;->onMessageChannelReady:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 3225
    :try_start_0
    iget-object v0, p0, Lo/ICustomTabsService$onRelationshipValidationResult;->extraCallback:Lo/ICustomTabsService;

    iget-object v0, v0, Lo/ICustomTabsService;->onMessageChannelReady:Landroid/content/Context;

    iget-object v1, p0, Lo/ICustomTabsService$onRelationshipValidationResult;->onMessageChannelReady:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 3230
    iput-object v0, p0, Lo/ICustomTabsService$onRelationshipValidationResult;->onMessageChannelReady:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method
