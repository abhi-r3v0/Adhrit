.class public final Lo/getContentInsetStart$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecyclerView$Recycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getContentInsetStart;->onMessageChannelReady(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/RecyclerView$Recycler<",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0008\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/androidapp/login/LoginViewModel$numberEntered$1",
        "Lcom/dreamplug/network/helper/BaseCallback;",
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
.field final synthetic ICustomTabsCallback:Lo/getContentInsetStart;


# direct methods
.method constructor <init>(Lo/getContentInsetStart;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Lo/getContentInsetStart$onNavigationEvent;->ICustomTabsCallback:Lo/getContentInsetStart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 184
    move-object/from16 v2, p2

    check-cast v2, Lcom/dreamplug/utils/model/BaseResponse;

    const/4 v3, 0x3

    new-array v4, v3, [Lo/addWrite;

    .line 2043
    new-instance v5, Lo/addWrite;

    const-string v6, "is_error"

    const-string/jumbo v7, "true"

    invoke-direct {v5, v6, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 1189
    invoke-static {v1, v2}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v5

    .line 3043
    new-instance v7, Lo/addWrite;

    const-string v8, "error_details"

    invoke-direct {v7, v8, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x1

    aput-object v7, v4, v5

    .line 1190
    iget-object v7, v0, Lo/getContentInsetStart$onNavigationEvent;->ICustomTabsCallback:Lo/getContentInsetStart;

    .line 3084
    iget-object v7, v7, Lo/getContentInsetStart;->asInterface:Lo/setActive;

    .line 3320
    iget-object v7, v7, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v8, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v9, 0x0

    if-eq v7, v8, :cond_0

    goto :goto_0

    :cond_0
    move-object v7, v9

    .line 1190
    :goto_0
    check-cast v7, Ljava/lang/Boolean;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v7, v8}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v0, Lo/getContentInsetStart$onNavigationEvent;->ICustomTabsCallback:Lo/getContentInsetStart;

    .line 4083
    iget-boolean v7, v7, Lo/getContentInsetStart;->ICustomTabsCallback$Stub:Z

    if-eqz v7, :cond_2

    :cond_1
    const/4 v6, 0x1

    .line 1190
    :cond_2
    invoke-static {v6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    .line 5043
    new-instance v6, Lo/addWrite;

    const-string/jumbo v7, "whatsapp_consent_given"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x2

    aput-object v6, v4, v5

    const-string v5, "pairs"

    .line 1187
    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5088
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    invoke-static {v5, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v3, "onboard_name_submit_result"

    .line 1186
    invoke-static {v3, v5}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1193
    iget-object v3, v0, Lo/getContentInsetStart$onNavigationEvent;->ICustomTabsCallback:Lo/getContentInsetStart;

    .line 6078
    iget-object v3, v3, Lo/getContentInsetStart;->onRelationshipValidationResult:Lo/appendViewToAllSpans$extraCallback;

    if-nez v3, :cond_3

    const-string/jumbo v4, "snackBarViewModel"

    invoke-static {v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 6145
    :cond_3
    iget-object v3, v3, Lo/appendViewToAllSpans$extraCallback;->onPostMessage:Lo/setActive;

    .line 1193
    new-instance v4, Lo/getThumbTintList;

    .line 1194
    new-instance v5, Lo/appendViewToAllSpans$onNavigationEvent;

    .line 1195
    invoke-static {v1, v2}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x3e

    move-object v10, v5

    .line 1194
    invoke-direct/range {v10 .. v18}, Lo/appendViewToAllSpans$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/appendViewToAllSpans$ICustomTabsCallback;JIZI)V

    .line 1193
    invoke-direct {v4, v5}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 1199
    iget-object v1, v0, Lo/getContentInsetStart$onNavigationEvent;->ICustomTabsCallback:Lo/getContentInsetStart;

    .line 7071
    iget-object v1, v1, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 1199
    iget-object v2, v0, Lo/getContentInsetStart$onNavigationEvent;->ICustomTabsCallback:Lo/getContentInsetStart;

    .line 8071
    iget-object v2, v2, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 8320
    iget-object v2, v2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 8321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v2, v3, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v9

    .line 1199
    :goto_1
    move-object v3, v2

    check-cast v3, Lo/setContentInsetsRelative;

    if-eqz v3, :cond_5

    const/4 v4, 0x0

    const v2, 0x7f130417

    .line 1201
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    const/16 v8, 0x9

    const-string/jumbo v6, "submit"

    .line 1199
    invoke-static/range {v3 .. v8}, Lo/setContentInsetsRelative;->extraCallback(Lo/setContentInsetsRelative;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Runnable;I)Lo/setContentInsetsRelative;

    move-result-object v9

    :cond_5
    invoke-virtual {v1, v9}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 11

    const/4 p1, 0x2

    new-array v0, p1, [Lo/addWrite;

    .line 10043
    new-instance v1, Lo/addWrite;

    const-string v2, "is_error"

    const-string v3, "false"

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 9209
    iget-object v1, p0, Lo/getContentInsetStart$onNavigationEvent;->ICustomTabsCallback:Lo/getContentInsetStart;

    .line 10084
    iget-object v1, v1, Lo/getContentInsetStart;->asInterface:Lo/setActive;

    .line 10320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 10321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v4, 0x0

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v4

    .line 9209
    :goto_0
    check-cast v1, Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lo/getContentInsetStart$onNavigationEvent;->ICustomTabsCallback:Lo/getContentInsetStart;

    .line 11083
    iget-boolean v1, v1, Lo/getContentInsetStart;->ICustomTabsCallback$Stub:Z

    if-eqz v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 9209
    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 12043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v5, "whatsapp_consent_given"

    invoke-direct {v2, v5, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v0, v3

    const-string v1, "pairs"

    .line 9207
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "onboard_name_submit_result"

    .line 9206
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 9213
    new-instance p1, Lo/getContentInsetStart$onNavigationEvent$onNavigationEvent;

    invoke-direct {p1, p0}, Lo/getContentInsetStart$onNavigationEvent$onNavigationEvent;-><init>(Lo/getContentInsetStart$onNavigationEvent;)V

    move-object v9, p1

    check-cast v9, Ljava/lang/Runnable;

    .line 9232
    iget-object p1, p0, Lo/getContentInsetStart$onNavigationEvent;->ICustomTabsCallback:Lo/getContentInsetStart;

    .line 13071
    iget-object p1, p1, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 9232
    iget-object v0, p0, Lo/getContentInsetStart$onNavigationEvent;->ICustomTabsCallback:Lo/getContentInsetStart;

    .line 14071
    iget-object v0, v0, Lo/getContentInsetStart;->extraCallback:Lo/setActive;

    .line 14320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 14321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v4

    .line 9232
    :goto_1
    move-object v5, v0

    check-cast v5, Lo/setContentInsetsRelative;

    if-eqz v5, :cond_4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    const-string v8, "done"

    invoke-static/range {v5 .. v10}, Lo/setContentInsetsRelative;->extraCallback(Lo/setContentInsetsRelative;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Runnable;I)Lo/setContentInsetsRelative;

    move-result-object v4

    :cond_4
    invoke-virtual {p1, v4}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
