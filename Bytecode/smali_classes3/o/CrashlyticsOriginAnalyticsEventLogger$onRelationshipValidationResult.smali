.class interface abstract Lo/CrashlyticsOriginAnalyticsEventLogger$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsOriginAnalyticsEventLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "onRelationshipValidationResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub<",
        "TK;TV;TE;>;S:",
        "Lo/CrashlyticsOriginAnalyticsEventLogger$newSession<",
        "TK;TV;TE;TS;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract ICustomTabsCallback(Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;Ljava/lang/Object;ILo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TK;ITE;)TE;"
        }
    .end annotation
.end method

.method public abstract extraCallback()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;
.end method

.method public abstract onMessageChannelReady()Lo/CrashlyticsOriginAnalyticsEventLogger$getInterfaceDescriptor;
.end method

.method public abstract onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;)Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TE;TE;)TE;"
        }
    .end annotation
.end method

.method public abstract onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger;II)Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/CrashlyticsOriginAnalyticsEventLogger<",
            "TK;TV;TE;TS;>;II)TS;"
        }
    .end annotation
.end method

.method public abstract onPostMessage(Lo/CrashlyticsOriginAnalyticsEventLogger$newSession;Lo/CrashlyticsOriginAnalyticsEventLogger$ICustomTabsCallback$Stub;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;TE;TV;)V"
        }
    .end annotation
.end method
