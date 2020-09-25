.class final Lo/DiffUtil$ItemCallback$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DiffUtil$ItemCallback;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/dispatchRemovals$onNavigationEvent;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadViewModel$UploadStatus;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/DiffUtil$ItemCallback;


# direct methods
.method constructor <init>(Lo/DiffUtil$ItemCallback;)V
    .locals 0

    iput-object p1, p0, Lo/DiffUtil$ItemCallback$onRelationshipValidationResult;->onPostMessage:Lo/DiffUtil$ItemCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 11

    .line 42
    check-cast p1, Lo/dispatchRemovals$onNavigationEvent;

    .line 2027
    iget-object v0, p1, Lo/dispatchRemovals$onNavigationEvent;->onNavigationEvent:Lo/removePostponedUpdate;

    .line 1106
    sget-object v1, Lo/removePostponedUpdate;->extraCallback:Lo/removePostponedUpdate;

    const-string v2, "pairs"

    const/4 v3, 0x0

    const-string v4, "lob"

    const-string v5, "proceed"

    const-string v6, "fileSelectionGroup"

    const-string/jumbo v7, "uploadingGroup"

    const/16 v8, 0x8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v0, v1, :cond_1

    .line 1107
    iget-object p1, p0, Lo/DiffUtil$ItemCallback$onRelationshipValidationResult;->onPostMessage:Lo/DiffUtil$ItemCallback;

    invoke-virtual {p1, v10}, Lo/onAudioInfoChanged;->extraCallback(Z)V

    .line 1108
    iget-object p1, p0, Lo/DiffUtil$ItemCallback$onRelationshipValidationResult;->onPostMessage:Lo/DiffUtil$ItemCallback;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->uploadingGroup:I

    invoke-virtual {p1, v0}, Lo/DiffUtil$ItemCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {p1, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1109
    iget-object p1, p0, Lo/DiffUtil$ItemCallback$onRelationshipValidationResult;->onPostMessage:Lo/DiffUtil$ItemCallback;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->fileSelectionGroup:I

    invoke-virtual {p1, v0}, Lo/DiffUtil$ItemCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {p1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1110
    iget-object p1, p0, Lo/DiffUtil$ItemCallback$onRelationshipValidationResult;->onPostMessage:Lo/DiffUtil$ItemCallback;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->proceed:I

    invoke-virtual {p1, v0}, Lo/DiffUtil$ItemCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$gone"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3017
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1111
    iget-object p1, p0, Lo/DiffUtil$ItemCallback$onRelationshipValidationResult;->onPostMessage:Lo/DiffUtil$ItemCallback;

    invoke-static {p1}, Lo/DiffUtil$ItemCallback;->onRelationshipValidationResult(Lo/DiffUtil$ItemCallback;)V

    new-array p1, v9, [Lo/addWrite;

    .line 1112
    iget-object v0, p0, Lo/DiffUtil$ItemCallback$onRelationshipValidationResult;->onPostMessage:Lo/DiffUtil$ItemCallback;

    invoke-static {v0}, Lo/DiffUtil$ItemCallback;->onNavigationEvent(Lo/DiffUtil$ItemCallback;)Lo/dispatchRemovals;

    move-result-object v0

    .line 3031
    iget-object v0, v0, Lo/dispatchRemovals;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;

    if-eqz v0, :cond_0

    .line 4013
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;->extraCallback:Ljava/lang/String;

    .line 4043
    :cond_0
    new-instance v0, Lo/addWrite;

    invoke-direct {v0, v4, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p1, v10

    .line 1112
    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v9}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "document_upload_lottie"

    .line 1112
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void

    .line 5027
    :cond_1
    iget-object v0, p1, Lo/dispatchRemovals$onNavigationEvent;->onNavigationEvent:Lo/removePostponedUpdate;

    .line 1114
    sget-object v1, Lo/removePostponedUpdate;->onPostMessage:Lo/removePostponedUpdate;

    if-ne v0, v1, :cond_2

    .line 1115
    iget-object p1, p0, Lo/DiffUtil$ItemCallback$onRelationshipValidationResult;->onPostMessage:Lo/DiffUtil$ItemCallback;

    invoke-virtual {p1, v9}, Lo/onAudioInfoChanged;->extraCallback(Z)V

    .line 1116
    iget-object p1, p0, Lo/DiffUtil$ItemCallback$onRelationshipValidationResult;->onPostMessage:Lo/DiffUtil$ItemCallback;

    invoke-static {p1}, Lo/DiffUtil$ItemCallback;->asInterface(Lo/DiffUtil$ItemCallback;)V

    return-void

    .line 6027
    :cond_2
    iget-object v0, p1, Lo/dispatchRemovals$onNavigationEvent;->onNavigationEvent:Lo/removePostponedUpdate;

    .line 1118
    sget-object v1, Lo/removePostponedUpdate;->ICustomTabsCallback:Lo/removePostponedUpdate;

    if-ne v0, v1, :cond_5

    .line 7027
    iget-object v0, p1, Lo/dispatchRemovals$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1119
    iget-object v0, p0, Lo/DiffUtil$ItemCallback$onRelationshipValidationResult;->onPostMessage:Lo/DiffUtil$ItemCallback;

    invoke-virtual {v0, v9}, Lo/onAudioInfoChanged;->extraCallback(Z)V

    .line 1120
    iget-object v0, p0, Lo/DiffUtil$ItemCallback$onRelationshipValidationResult;->onPostMessage:Lo/DiffUtil$ItemCallback;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->uploadingGroup:I

    invoke-virtual {v0, v1}, Lo/DiffUtil$ItemCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v0, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1121
    iget-object v0, p0, Lo/DiffUtil$ItemCallback$onRelationshipValidationResult;->onPostMessage:Lo/DiffUtil$ItemCallback;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->fileSelectionGroup:I

    invoke-virtual {v0, v1}, Lo/DiffUtil$ItemCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v0, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1122
    iget-object v0, p0, Lo/DiffUtil$ItemCallback$onRelationshipValidationResult;->onPostMessage:Lo/DiffUtil$ItemCallback;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->proceed:I

    invoke-virtual {v0, v1}, Lo/DiffUtil$ItemCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v1, "$this$visible"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8009
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1123
    iget-object v0, p0, Lo/DiffUtil$ItemCallback$onRelationshipValidationResult;->onPostMessage:Lo/DiffUtil$ItemCallback;

    invoke-static {v0}, Lo/DiffUtil$ItemCallback;->ICustomTabsCallback$Stub$Proxy(Lo/DiffUtil$ItemCallback;)V

    .line 1124
    iget-object v0, p0, Lo/DiffUtil$ItemCallback$onRelationshipValidationResult;->onPostMessage:Lo/DiffUtil$ItemCallback;

    invoke-static {v0}, Lo/DiffUtil$ItemCallback;->ICustomTabsCallback(Lo/DiffUtil$ItemCallback;)Lo/onActivityResult;

    move-result-object v0

    iget-object v1, p0, Lo/DiffUtil$ItemCallback$onRelationshipValidationResult;->onPostMessage:Lo/DiffUtil$ItemCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    const-string v5, "context!!"

    invoke-static {v1, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8027
    iget-object v5, p1, Lo/dispatchRemovals$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    const-string v6, "context"

    .line 8031
    invoke-static {v1, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v6, "text"

    invoke-static {v5, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8032
    sget v6, Lo/preferLastSpan$ICustomTabsCallback$Stub;->error_toast_layout:I

    invoke-virtual {v0, v1, v5, v10, v6}, Lo/onActivityResult;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;ZI)V

    const/4 v0, 0x2

    new-array v1, v0, [Lo/addWrite;

    .line 9027
    iget-object p1, p1, Lo/dispatchRemovals$onNavigationEvent;->onMessageChannelReady:Ljava/lang/String;

    .line 9043
    new-instance v5, Lo/addWrite;

    const-string v6, "msg"

    invoke-direct {v5, v6, p1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v10

    .line 1125
    iget-object p1, p0, Lo/DiffUtil$ItemCallback$onRelationshipValidationResult;->onPostMessage:Lo/DiffUtil$ItemCallback;

    invoke-static {p1}, Lo/DiffUtil$ItemCallback;->onNavigationEvent(Lo/DiffUtil$ItemCallback;)Lo/dispatchRemovals;

    move-result-object p1

    .line 10031
    iget-object p1, p1, Lo/dispatchRemovals;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;

    if-eqz p1, :cond_4

    .line 11013
    iget-object v3, p1, Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;->extraCallback:Ljava/lang/String;

    .line 11043
    :cond_4
    new-instance p1, Lo/addWrite;

    invoke-direct {p1, v4, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p1, v1, v9

    .line 1125
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11088
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "document_error_load"

    .line 1125
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    :cond_5
    return-void
.end method
