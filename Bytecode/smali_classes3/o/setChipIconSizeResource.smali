.class public final Lo/setChipIconSizeResource;
.super Ljava/lang/Object;
.source ""


# instance fields
.field ICustomTabsCallback:Ljava/lang/String;

.field ICustomTabsCallback$Stub:J

.field asInterface:Lo/setStatusCode;

.field extraCallback:Ljava/lang/String;

.field onMessageChannelReady:Ljava/lang/Boolean;

.field onNavigationEvent:Ljava/lang/String;

.field final onPostMessage:Landroid/content/Context;

.field onRelationshipValidationResult:Ljava/lang/Long;

.field onTransact:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/setStatusCode;Ljava/lang/Long;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lo/setChipIconSizeResource;->onTransact:Z

    .line 3
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iput-object p1, p0, Lo/setChipIconSizeResource;->onPostMessage:Landroid/content/Context;

    .line 7
    iput-object p3, p0, Lo/setChipIconSizeResource;->onRelationshipValidationResult:Ljava/lang/Long;

    if-eqz p2, :cond_0

    .line 10
    iput-object p2, p0, Lo/setChipIconSizeResource;->asInterface:Lo/setStatusCode;

    .line 11
    iget-object p1, p2, Lo/setStatusCode;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iput-object p1, p0, Lo/setChipIconSizeResource;->ICustomTabsCallback:Ljava/lang/String;

    .line 12
    iget-object p1, p2, Lo/setStatusCode;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p1, p0, Lo/setChipIconSizeResource;->extraCallback:Ljava/lang/String;

    .line 13
    iget-object p1, p2, Lo/setStatusCode;->onPostMessage:Ljava/lang/String;

    iput-object p1, p0, Lo/setChipIconSizeResource;->onNavigationEvent:Ljava/lang/String;

    .line 14
    iget-boolean p1, p2, Lo/setStatusCode;->onNavigationEvent:Z

    iput-boolean p1, p0, Lo/setChipIconSizeResource;->onTransact:Z

    .line 15
    iget-wide v1, p2, Lo/setStatusCode;->onMessageChannelReady:J

    iput-wide v1, p0, Lo/setChipIconSizeResource;->ICustomTabsCallback$Stub:J

    .line 16
    iget-object p1, p2, Lo/setStatusCode;->onTransact:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 17
    iget-object p1, p2, Lo/setStatusCode;->onTransact:Landroid/os/Bundle;

    const-string p2, "dataCollectionDefaultEnabled"

    .line 18
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/setChipIconSizeResource;->onMessageChannelReady:Ljava/lang/Boolean;

    :cond_0
    return-void
.end method
