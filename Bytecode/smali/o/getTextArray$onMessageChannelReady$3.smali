.class final Lo/getTextArray$onMessageChannelReady$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getTextArray$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getTextArray$onMessageChannelReady;

.field private synthetic onNavigationEvent:Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;


# direct methods
.method constructor <init>(Lo/getTextArray$onMessageChannelReady;Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;)V
    .locals 0

    iput-object p1, p0, Lo/getTextArray$onMessageChannelReady$3;->extraCallback:Lo/getTextArray$onMessageChannelReady;

    iput-object p2, p0, Lo/getTextArray$onMessageChannelReady$3;->onNavigationEvent:Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 112
    iget-object v0, p0, Lo/getTextArray$onMessageChannelReady$3;->onNavigationEvent:Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getDobGiven()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_3

    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 1000
    sget-object v0, Lo/setTrackTintMode;->IPostMessageService$Stub$Proxy:Lo/setTitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v2, 0x1c

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 114
    :cond_0
    iget-object v0, p0, Lo/getTextArray$onMessageChannelReady$3;->onNavigationEvent:Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

    invoke-virtual {v0}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getPanGiven()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 2000
    sget-object v0, Lo/setTrackTintMode;->cancelAll:Lo/setTitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v2, 0x1b

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lo/getTextArray$onMessageChannelReady$3;->extraCallback:Lo/getTextArray$onMessageChannelReady;

    iget-object v0, v0, Lo/getTextArray$onMessageChannelReady;->onPostMessage:Lo/getTextArray;

    invoke-static {v0}, Lo/getTextArray;->onNavigationEvent(Lo/getTextArray;)V

    return-void

    .line 115
    :cond_2
    :goto_0
    iget-object v0, p0, Lo/getTextArray$onMessageChannelReady$3;->extraCallback:Lo/getTextArray$onMessageChannelReady;

    iget-object v0, v0, Lo/getTextArray$onMessageChannelReady;->onPostMessage:Lo/getTextArray;

    const-string v1, "pan"

    invoke-static {v0, v1}, Lo/getTextArray;->onNavigationEvent(Lo/getTextArray;Ljava/lang/String;)V

    return-void

    .line 113
    :cond_3
    :goto_1
    iget-object v0, p0, Lo/getTextArray$onMessageChannelReady$3;->extraCallback:Lo/getTextArray$onMessageChannelReady;

    iget-object v0, v0, Lo/getTextArray$onMessageChannelReady;->onPostMessage:Lo/getTextArray;

    const-string v1, "dob"

    invoke-static {v0, v1}, Lo/getTextArray;->onNavigationEvent(Lo/getTextArray;Ljava/lang/String;)V

    return-void
.end method
