.class final Lo/DiffUtil$ItemCallback$ICustomTabsService;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DiffUtil$ItemCallback;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/DiffUtil$ItemCallback;


# direct methods
.method constructor <init>(Lo/DiffUtil$ItemCallback;)V
    .locals 0

    iput-object p1, p0, Lo/DiffUtil$ItemCallback$ICustomTabsService;->extraCallback:Lo/DiffUtil$ItemCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 42
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x3

    new-array v0, p1, [Lo/addWrite;

    .line 1161
    iget-object v1, p0, Lo/DiffUtil$ItemCallback$ICustomTabsService;->extraCallback:Lo/DiffUtil$ItemCallback;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->addMore:I

    invoke-virtual {v1, v2}, Lo/DiffUtil$ItemCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "addMore"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 2043
    new-instance v2, Lo/addWrite;

    const-string v3, "cta_title"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 1161
    iget-object v2, p0, Lo/DiffUtil$ItemCallback$ICustomTabsService;->extraCallback:Lo/DiffUtil$ItemCallback;

    invoke-static {v2}, Lo/DiffUtil$ItemCallback;->onNavigationEvent(Lo/DiffUtil$ItemCallback;)Lo/dispatchRemovals;

    move-result-object v2

    .line 3034
    iget-object v2, v2, Lo/dispatchRemovals;->ICustomTabsCallback:Lo/setActive;

    check-cast v2, Landroidx/lifecycle/LiveData;

    .line 3320
    iget-object v2, v2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 1161
    :goto_0
    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v4

    .line 4043
    :goto_1
    new-instance v3, Lo/addWrite;

    const-string v5, "document_count"

    invoke-direct {v3, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v3, v0, v2

    .line 1161
    iget-object v3, p0, Lo/DiffUtil$ItemCallback$ICustomTabsService;->extraCallback:Lo/DiffUtil$ItemCallback;

    invoke-static {v3}, Lo/DiffUtil$ItemCallback;->onNavigationEvent(Lo/DiffUtil$ItemCallback;)Lo/dispatchRemovals;

    move-result-object v3

    .line 5031
    iget-object v3, v3, Lo/dispatchRemovals;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;

    if-eqz v3, :cond_2

    .line 6013
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;->extraCallback:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v3, v4

    .line 6043
    :goto_2
    new-instance v5, Lo/addWrite;

    const-string v6, "lob"

    invoke-direct {v5, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    aput-object v5, v0, v3

    const-string v5, "pairs"

    .line 1161
    invoke-static {v0, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6088
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v7, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v7, Ljava/util/Map;

    invoke-static {v7, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "document_upload_screen_cta"

    .line 1161
    invoke-static {p1, v7}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1163
    iget-object p1, p0, Lo/DiffUtil$ItemCallback$ICustomTabsService;->extraCallback:Lo/DiffUtil$ItemCallback;

    invoke-static {p1}, Lo/DiffUtil$ItemCallback;->onNavigationEvent(Lo/DiffUtil$ItemCallback;)Lo/dispatchRemovals;

    move-result-object p1

    .line 7034
    iget-object p1, p1, Lo/dispatchRemovals;->ICustomTabsCallback:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 7320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 7321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v0, :cond_3

    goto :goto_3

    :cond_3
    move-object p1, v4

    .line 1163
    :goto_3
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    iget-object v0, p0, Lo/DiffUtil$ItemCallback$ICustomTabsService;->extraCallback:Lo/DiffUtil$ItemCallback;

    invoke-static {v0}, Lo/DiffUtil$ItemCallback;->onNavigationEvent(Lo/DiffUtil$ItemCallback;)Lo/dispatchRemovals;

    move-result-object v0

    .line 8031
    iget-object v0, v0, Lo/dispatchRemovals;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;

    const/4 v7, 0x5

    if-eqz v0, :cond_5

    .line 9011
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;->onPostMessage:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 1163
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_5

    :cond_5
    const/4 v0, 0x5

    :goto_5
    if-ge p1, v0, :cond_6

    .line 1164
    iget-object p1, p0, Lo/DiffUtil$ItemCallback$ICustomTabsService;->extraCallback:Lo/DiffUtil$ItemCallback;

    invoke-static {p1}, Lo/DiffUtil$ItemCallback;->extraCallback(Lo/DiffUtil$ItemCallback;)V

    goto/16 :goto_6

    .line 1166
    :cond_6
    iget-object p1, p0, Lo/DiffUtil$ItemCallback$ICustomTabsService;->extraCallback:Lo/DiffUtil$ItemCallback;

    invoke-static {p1}, Lo/DiffUtil$ItemCallback;->ICustomTabsCallback(Lo/DiffUtil$ItemCallback;)Lo/onActivityResult;

    move-result-object p1

    iget-object v0, p0, Lo/DiffUtil$ItemCallback$ICustomTabsService;->extraCallback:Lo/DiffUtil$ItemCallback;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_7
    const-string v8, "context!!"

    invoke-static {v0, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    new-array v8, v2, [Ljava/lang/Object;

    iget-object v9, p0, Lo/DiffUtil$ItemCallback$ICustomTabsService;->extraCallback:Lo/DiffUtil$ItemCallback;

    invoke-static {v9}, Lo/DiffUtil$ItemCallback;->onNavigationEvent(Lo/DiffUtil$ItemCallback;)Lo/dispatchRemovals;

    move-result-object v9

    .line 9031
    iget-object v9, v9, Lo/dispatchRemovals;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;

    if-eqz v9, :cond_8

    .line 10011
    iget-object v9, v9, Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;->onPostMessage:Ljava/lang/Integer;

    if-nez v9, :cond_9

    .line 1167
    :cond_8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :cond_9
    aput-object v9, v8, v1

    const v9, 0x7f1301e5

    .line 1166
    invoke-static {v9, v8}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "context"

    .line 10031
    invoke-static {v0, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v10, "text"

    invoke-static {v8, v10}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10032
    sget v10, Lo/preferLastSpan$ICustomTabsCallback$Stub;->error_toast_layout:I

    invoke-virtual {p1, v0, v8, v1, v10}, Lo/onActivityResult;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;ZI)V

    new-array p1, v3, [Lo/addWrite;

    .line 1169
    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lo/DiffUtil$ItemCallback$ICustomTabsService;->extraCallback:Lo/DiffUtil$ItemCallback;

    invoke-static {v8}, Lo/DiffUtil$ItemCallback;->onNavigationEvent(Lo/DiffUtil$ItemCallback;)Lo/dispatchRemovals;

    move-result-object v8

    .line 11031
    iget-object v8, v8, Lo/dispatchRemovals;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;

    if-eqz v8, :cond_a

    .line 12011
    iget-object v8, v8, Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;->onPostMessage:Ljava/lang/Integer;

    if-nez v8, :cond_b

    .line 1170
    :cond_a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    :cond_b
    aput-object v8, v0, v1

    .line 1169
    invoke-static {v9, v0}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 12043
    new-instance v7, Lo/addWrite;

    const-string v8, "msg"

    invoke-direct {v7, v8, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, p1, v1

    .line 1170
    iget-object v0, p0, Lo/DiffUtil$ItemCallback$ICustomTabsService;->extraCallback:Lo/DiffUtil$ItemCallback;

    invoke-static {v0}, Lo/DiffUtil$ItemCallback;->onNavigationEvent(Lo/DiffUtil$ItemCallback;)Lo/dispatchRemovals;

    move-result-object v0

    .line 13031
    iget-object v0, v0, Lo/dispatchRemovals;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;

    if-eqz v0, :cond_c

    .line 14013
    iget-object v4, v0, Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;->extraCallback:Ljava/lang/String;

    .line 14043
    :cond_c
    new-instance v0, Lo/addWrite;

    invoke-direct {v0, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p1, v2

    .line 1169
    invoke-static {p1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "document_error_load"

    .line 1169
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 42
    :goto_6
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
