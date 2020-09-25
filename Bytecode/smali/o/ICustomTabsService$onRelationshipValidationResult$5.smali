.class Lo/ICustomTabsService$onRelationshipValidationResult$5;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ICustomTabsService$onRelationshipValidationResult;->extraCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/ICustomTabsService$onRelationshipValidationResult;


# direct methods
.method constructor <init>(Lo/ICustomTabsService$onRelationshipValidationResult;)V
    .locals 0

    .line 3209
    iput-object p1, p0, Lo/ICustomTabsService$onRelationshipValidationResult$5;->onMessageChannelReady:Lo/ICustomTabsService$onRelationshipValidationResult;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 3212
    iget-object p1, p0, Lo/ICustomTabsService$onRelationshipValidationResult$5;->onMessageChannelReady:Lo/ICustomTabsService$onRelationshipValidationResult;

    invoke-virtual {p1}, Lo/ICustomTabsService$onRelationshipValidationResult;->ICustomTabsCallback()V

    return-void
.end method
