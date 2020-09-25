.class final Lo/buildInstanceIdentifierChanged$onNavigationEvent;
.super Lo/buildInstanceIdentifierChanged$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/buildInstanceIdentifierChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1300
    iget-object v0, p0, Lo/buildInstanceIdentifierChanged$ICustomTabsCallback;->onMessageChannelReady:Lorg/json/JSONObject;

    .line 241
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
