.class final Lo/add$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/add;->extraCallback(Ljava/lang/String;Lorg/json/JSONObject;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;Ljava/lang/String;Lo/add$ICustomTabsCallback;)V
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
.field final synthetic ICustomTabsCallback:Ljava/lang/String;

.field final synthetic extraCallback:Lo/add$ICustomTabsCallback;

.field final synthetic onMessageChannelReady:Lo/add;

.field final synthetic onNavigationEvent:Lorg/json/JSONObject;

.field final synthetic onPostMessage:Ljava/lang/String;

.field final synthetic onRelationshipValidationResult:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

.field final synthetic onTransact:Lo/toDebugString$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/add;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lo/add$ICustomTabsCallback;Lo/toDebugString$ICustomTabsCallback;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;)V
    .locals 0

    iput-object p1, p0, Lo/add$extraCallback;->onMessageChannelReady:Lo/add;

    iput-object p2, p0, Lo/add$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p3, p0, Lo/add$extraCallback;->onNavigationEvent:Lorg/json/JSONObject;

    iput-object p4, p0, Lo/add$extraCallback;->onPostMessage:Ljava/lang/String;

    iput-object p5, p0, Lo/add$extraCallback;->extraCallback:Lo/add$ICustomTabsCallback;

    iput-object p6, p0, Lo/add$extraCallback;->onTransact:Lo/toDebugString$ICustomTabsCallback;

    iput-object p7, p0, Lo/add$extraCallback;->onRelationshipValidationResult:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 79
    iget-object v0, p0, Lo/add$extraCallback;->onMessageChannelReady:Lo/add;

    invoke-static {v0}, Lo/add;->onMessageChannelReady(Lo/add;)Lcom/axis/axismerchantsdk/AxisUpi;

    iget-object v0, p0, Lo/add$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lo/add$extraCallback;->onNavigationEvent:Lorg/json/JSONObject;

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lo/add$extraCallback;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lo/add$extraCallback;->extraCallback:Lo/add$ICustomTabsCallback;

    if-eqz v3, :cond_0

    .line 1126
    iget v3, v3, Lo/add$ICustomTabsCallback;->onPostMessage:I

    .line 81
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lo/add$extraCallback;->onMessageChannelReady:Lo/add;

    invoke-static {v3}, Lo/add;->onNavigationEvent(Lo/add;)Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lo/add$extraCallback$5;

    invoke-direct {v4, p0}, Lo/add$extraCallback$5;-><init>(Lo/add$extraCallback;)V

    check-cast v4, Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    .line 79
    invoke-static {v0, v1, v2, v3, v4}, Lcom/axis/axismerchantsdk/AxisUpi;->extraCallback(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Landroid/app/Activity;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;)V

    return-void
.end method
