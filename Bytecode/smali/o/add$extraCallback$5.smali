.class final Lo/add$extraCallback$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/add$extraCallback;->run()V
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
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u00062\u000e\u0010\u0007\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "Lorg/json/JSONObject;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "<anonymous parameter 2>",
        "onResponseFromUpiSdk"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/add$extraCallback;


# direct methods
.method constructor <init>(Lo/add$extraCallback;)V
    .locals 0

    iput-object p1, p0, Lo/add$extraCallback$5;->onNavigationEvent:Lo/add$extraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponseFromUpiSdk(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "command :- "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lo/add$extraCallback$5;->onNavigationEvent:Lo/add$extraCallback;

    iget-object p3, p3, Lo/add$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "  response :- "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "upi_command_response"

    const-string/jumbo v0, "tag"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    invoke-static {p3, p2}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object p2, p0, Lo/add$extraCallback$5;->onNavigationEvent:Lo/add$extraCallback;

    iget-object p2, p2, Lo/add$extraCallback;->onTransact:Lo/toDebugString$ICustomTabsCallback;

    iget-object p2, p2, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Runnable;

    if-eqz p2, :cond_0

    .line 84
    sget-object p2, Lo/addAll;->ICustomTabsCallback:Lo/addAll;

    iget-object p3, p0, Lo/add$extraCallback$5;->onNavigationEvent:Lo/add$extraCallback;

    iget-object p3, p3, Lo/add$extraCallback;->onTransact:Lo/toDebugString$ICustomTabsCallback;

    iget-object p3, p3, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 87
    :cond_0
    iget-object p2, p0, Lo/add$extraCallback$5;->onNavigationEvent:Lo/add$extraCallback;

    iget-object p2, p2, Lo/add$extraCallback;->extraCallback:Lo/add$ICustomTabsCallback;

    const-string/jumbo p3, "response"

    if-eqz p2, :cond_1

    iget-object p2, p0, Lo/add$extraCallback$5;->onNavigationEvent:Lo/add$extraCallback;

    iget-object p2, p2, Lo/add$extraCallback;->extraCallback:Lo/add$ICustomTabsCallback;

    .line 1126
    iget p2, p2, Lo/add$ICustomTabsCallback;->onPostMessage:I

    if-lez p2, :cond_1

    .line 87
    iget-object p2, p0, Lo/add$extraCallback$5;->onNavigationEvent:Lo/add$extraCallback;

    iget-object p2, p2, Lo/add$extraCallback;->extraCallback:Lo/add$ICustomTabsCallback;

    .line 2126
    iget-object p2, p2, Lo/add$ICustomTabsCallback;->onMessageChannelReady:Lo/onDisconnectSetValue;

    .line 87
    invoke-static {p1, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 88
    iget-object p1, p0, Lo/add$extraCallback$5;->onNavigationEvent:Lo/add$extraCallback;

    iget-object v0, p1, Lo/add$extraCallback;->onMessageChannelReady:Lo/add;

    iget-object p1, p0, Lo/add$extraCallback$5;->onNavigationEvent:Lo/add$extraCallback;

    iget-object v1, p1, Lo/add$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    .line 89
    iget-object p1, p0, Lo/add$extraCallback$5;->onNavigationEvent:Lo/add$extraCallback;

    iget-object v2, p1, Lo/add$extraCallback;->onNavigationEvent:Lorg/json/JSONObject;

    .line 90
    iget-object p1, p0, Lo/add$extraCallback$5;->onNavigationEvent:Lo/add$extraCallback;

    iget-object v3, p1, Lo/add$extraCallback;->onRelationshipValidationResult:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    .line 91
    iget-object p1, p0, Lo/add$extraCallback$5;->onNavigationEvent:Lo/add$extraCallback;

    iget-object v4, p1, Lo/add$extraCallback;->onPostMessage:Ljava/lang/String;

    .line 92
    new-instance v5, Lo/add$ICustomTabsCallback;

    iget-object p1, p0, Lo/add$extraCallback$5;->onNavigationEvent:Lo/add$extraCallback;

    iget-object p1, p1, Lo/add$extraCallback;->extraCallback:Lo/add$ICustomTabsCallback;

    .line 3126
    iget p1, p1, Lo/add$ICustomTabsCallback;->onPostMessage:I

    add-int/lit8 p1, p1, -0x1

    .line 92
    iget-object p2, p0, Lo/add$extraCallback$5;->onNavigationEvent:Lo/add$extraCallback;

    iget-object p2, p2, Lo/add$extraCallback;->extraCallback:Lo/add$ICustomTabsCallback;

    .line 4126
    iget-object p2, p2, Lo/add$ICustomTabsCallback;->onMessageChannelReady:Lo/onDisconnectSetValue;

    .line 92
    invoke-direct {v5, p1, p2}, Lo/add$ICustomTabsCallback;-><init>(ILo/onDisconnectSetValue;)V

    .line 88
    invoke-virtual/range {v0 .. v5}, Lo/add;->extraCallback(Ljava/lang/String;Lorg/json/JSONObject;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;Ljava/lang/String;Lo/add$ICustomTabsCallback;)V

    return-void

    .line 94
    :cond_1
    invoke-static {p1, p3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lo/add$extraCallback$5;->onNavigationEvent:Lo/add$extraCallback;

    iget-object p2, p2, Lo/add$extraCallback;->onPostMessage:Ljava/lang/String;

    iget-object p3, p0, Lo/add$extraCallback$5;->onNavigationEvent:Lo/add$extraCallback;

    iget-object p3, p3, Lo/add$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v0, p0, Lo/add$extraCallback$5;->onNavigationEvent:Lo/add$extraCallback;

    iget-object v0, v0, Lo/add$extraCallback;->onRelationshipValidationResult:Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;

    invoke-static {p1, p2, p3, v0}, Lo/add;->ICustomTabsCallback(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/axis/axismerchantsdk/interfaces/UpiSdkCallback;)V

    return-void
.end method
