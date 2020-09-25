.class public final Lo/getContentInsetStart$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapDataForType;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getContentInsetStart;->ICustomTabsCallback(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapDataForType<",
        "Lcom/dreamplug/androidapp/login/model/OtpGenerateResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001a\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003H\u0016J\u0010\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0002H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/dreamplug/androidapp/login/LoginViewModel$phoneNumberEntered$1",
        "Lcom/dreamplug/network/helper/LiveCallback;",
        "Lcom/dreamplug/androidapp/login/model/OtpGenerateResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onFailure",
        "",
        "t",
        "",
        "errorResponse",
        "onResponse",
        "response",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/getContentInsetStart;


# direct methods
.method constructor <init>(Lo/getContentInsetStart;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 282
    iput-object p1, p0, Lo/getContentInsetStart$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getContentInsetStart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 12

    .line 282
    check-cast p2, Lcom/dreamplug/utils/model/BaseResponse;

    const-string/jumbo v0, "t"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v1, v0, [Lo/addWrite;

    .line 2043
    new-instance v2, Lo/addWrite;

    const-string v3, "is_error"

    const-string/jumbo v4, "true"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1287
    invoke-static {p1, p2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v2

    .line 3043
    new-instance v3, Lo/addWrite;

    const-string v4, "error_details"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v3, v1, v2

    const-string v2, "pairs"

    .line 1285
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3088
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "onboard_phone_number_submit_result"

    .line 1284
    invoke-static {v0, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1290
    iget-object v0, p0, Lo/getContentInsetStart$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getContentInsetStart;

    .line 4078
    iget-object v0, v0, Lo/getContentInsetStart;->onRelationshipValidationResult:Lo/appendViewToAllSpans$extraCallback;

    if-nez v0, :cond_0

    const-string/jumbo v1, "snackBarViewModel"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 4145
    :cond_0
    iget-object v0, v0, Lo/appendViewToAllSpans$extraCallback;->onPostMessage:Lo/setActive;

    .line 1290
    new-instance v1, Lo/getThumbTintList;

    .line 1291
    new-instance v11, Lo/appendViewToAllSpans$onNavigationEvent;

    .line 1292
    invoke-static {p1, p2}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x3e

    move-object v2, v11

    .line 1291
    invoke-direct/range {v2 .. v10}, Lo/appendViewToAllSpans$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/appendViewToAllSpans$ICustomTabsCallback;JIZI)V

    .line 1290
    invoke-direct {v1, v11}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 1296
    iget-object p1, p0, Lo/getContentInsetStart$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getContentInsetStart;

    .line 5071
    iget-object p1, p1, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 1296
    iget-object p2, p0, Lo/getContentInsetStart$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getContentInsetStart;

    .line 6071
    iget-object p2, p2, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 6320
    iget-object p2, p2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 6321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v1

    .line 1296
    :goto_0
    move-object v2, p2

    check-cast v2, Lo/setContentInsetsRelative;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    const p2, 0x7f130424

    .line 1298
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    const/16 v7, 0x9

    const-string/jumbo v5, "submit"

    .line 1296
    invoke-static/range {v2 .. v7}, Lo/setContentInsetsRelative;->extraCallback(Lo/setContentInsetsRelative;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Runnable;I)Lo/setContentInsetsRelative;

    move-result-object v1

    :cond_2
    invoke-virtual {p1, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 6

    .line 282
    check-cast p1, Lcom/dreamplug/androidapp/login/model/OtpGenerateResponse;

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7303
    iget-object v0, p0, Lo/getContentInsetStart$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getContentInsetStart;

    invoke-virtual {p1}, Lcom/dreamplug/androidapp/login/model/OtpGenerateResponse;->getOtpId()Ljava/lang/String;

    move-result-object p1

    .line 8087
    iput-object p1, v0, Lo/getContentInsetStart;->getInterfaceDescriptor:Ljava/lang/String;

    const/4 p1, 0x1

    new-array v0, p1, [Lo/addWrite;

    .line 9043
    new-instance v1, Lo/addWrite;

    const-string v2, "is_error"

    const-string v3, "false"

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "pairs"

    .line 7305
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "onboard_phone_number_submit_result"

    .line 7304
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 7309
    new-instance p1, Lo/getContentInsetStart$ICustomTabsCallback$Stub$onNavigationEvent;

    invoke-direct {p1, p0}, Lo/getContentInsetStart$ICustomTabsCallback$Stub$onNavigationEvent;-><init>(Lo/getContentInsetStart$ICustomTabsCallback$Stub;)V

    move-object v4, p1

    check-cast v4, Ljava/lang/Runnable;

    .line 7322
    iget-object p1, p0, Lo/getContentInsetStart$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getContentInsetStart;

    .line 10070
    iget-object p1, p1, Lo/getContentInsetStart;->ICustomTabsCallback:Lo/setActive;

    .line 7322
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 7323
    iget-object p1, p0, Lo/getContentInsetStart$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getContentInsetStart;

    .line 10071
    iget-object p1, p1, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 7323
    iget-object v0, p0, Lo/getContentInsetStart$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getContentInsetStart;

    .line 11071
    iget-object v0, v0, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 11320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 11321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 7323
    :goto_0
    check-cast v0, Lo/setContentInsetsRelative;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    const-string v3, "done"

    invoke-static/range {v0 .. v5}, Lo/setContentInsetsRelative;->extraCallback(Lo/setContentInsetsRelative;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Runnable;I)Lo/setContentInsetsRelative;

    move-result-object v2

    :cond_1
    invoke-virtual {p1, v2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
