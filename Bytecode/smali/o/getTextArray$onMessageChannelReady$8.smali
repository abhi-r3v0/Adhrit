.class final Lo/getTextArray$onMessageChannelReady$8;
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
.field private synthetic ICustomTabsCallback:Lo/getTextArray$onMessageChannelReady;

.field private synthetic extraCallback:Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;


# direct methods
.method constructor <init>(Lo/getTextArray$onMessageChannelReady;Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;)V
    .locals 0

    iput-object p1, p0, Lo/getTextArray$onMessageChannelReady$8;->ICustomTabsCallback:Lo/getTextArray$onMessageChannelReady;

    iput-object p2, p0, Lo/getTextArray$onMessageChannelReady$8;->extraCallback:Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 126
    iget-object v0, p0, Lo/getTextArray$onMessageChannelReady$8;->ICustomTabsCallback:Lo/getTextArray$onMessageChannelReady;

    iget-object v0, v0, Lo/getTextArray$onMessageChannelReady;->onPostMessage:Lo/getTextArray;

    iget-object v1, p0, Lo/getTextArray$onMessageChannelReady$8;->extraCallback:Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getStatus()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lo/getTextArray;->onMessageChannelReady(Lo/getTextArray;Ljava/lang/String;)V

    return-void
.end method
