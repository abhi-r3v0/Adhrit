.class final Lo/DiffUtil$ItemCallback$asBinder;
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
.field private synthetic ICustomTabsCallback:Lo/DiffUtil$ItemCallback;


# direct methods
.method constructor <init>(Lo/DiffUtil$ItemCallback;)V
    .locals 0

    iput-object p1, p0, Lo/DiffUtil$ItemCallback$asBinder;->ICustomTabsCallback:Lo/DiffUtil$ItemCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 42
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1152
    iget-object p1, p0, Lo/DiffUtil$ItemCallback$asBinder;->ICustomTabsCallback:Lo/DiffUtil$ItemCallback;

    invoke-static {p1}, Lo/DiffUtil$ItemCallback;->onPostMessage(Lo/DiffUtil$ItemCallback;)Z

    move-result p1

    const-string v0, "pairs"

    const-string v1, "lob"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_d

    .line 1153
    iget-object p1, p0, Lo/DiffUtil$ItemCallback$asBinder;->ICustomTabsCallback:Lo/DiffUtil$ItemCallback;

    invoke-static {p1}, Lo/DiffUtil$ItemCallback;->onNavigationEvent(Lo/DiffUtil$ItemCallback;)Lo/dispatchRemovals;

    move-result-object p1

    .line 3034
    iget-object v6, p1, Lo/dispatchRemovals;->ICustomTabsCallback:Lo/setActive;

    check-cast v6, Landroidx/lifecycle/LiveData;

    .line 3320
    iget-object v6, v6, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v7, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v6, v7, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v4

    .line 2060
    :goto_0
    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_9

    check-cast v6, Ljava/util/Collection;

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    xor-int/2addr v6, v5

    if-ne v6, v5, :cond_9

    iget-object v6, p1, Lo/dispatchRemovals;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;

    if-eqz v6, :cond_9

    .line 2061
    iget-object v6, p1, Lo/dispatchRemovals;->extraCallback:Lo/setActive;

    new-instance v7, Lo/dispatchRemovals$onNavigationEvent;

    sget-object v8, Lo/removePostponedUpdate;->extraCallback:Lo/removePostponedUpdate;

    invoke-direct {v7, v8}, Lo/dispatchRemovals$onNavigationEvent;-><init>(Lo/removePostponedUpdate;)V

    invoke-virtual {v6, v7}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 2063
    new-instance v6, Lo/serializedName$onMessageChannelReady;

    invoke-direct {v6}, Lo/serializedName$onMessageChannelReady;-><init>()V

    .line 2064
    sget-object v7, Lo/serializedName;->onPostMessage:Lo/isFiltered;

    invoke-virtual {v6, v7}, Lo/serializedName$onMessageChannelReady;->extraCallback(Lo/isFiltered;)Lo/serializedName$onMessageChannelReady;

    .line 4034
    iget-object v7, p1, Lo/dispatchRemovals;->ICustomTabsCallback:Lo/setActive;

    check-cast v7, Landroidx/lifecycle/LiveData;

    .line 4320
    iget-object v7, v7, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 4321
    sget-object v8, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v7, v8, :cond_1

    goto :goto_1

    :cond_1
    move-object v7, v4

    :goto_1
    if-nez v7, :cond_2

    .line 2066
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    const-string/jumbo v8, "selectedFilesList.value!!"

    invoke-static {v7, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Iterable;

    .line 2113
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const-string v9, "part == null"

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/StaggeredGridLayoutManager;

    if-eqz v8, :cond_4

    .line 2068
    check-cast v8, Lo/dispatchUpdatesTo;

    .line 6008
    iget-object v10, v8, Lo/dispatchUpdatesTo;->onMessageChannelReady:Ljava/lang/String;

    .line 5102
    invoke-static {v10}, Lo/isFiltered;->ICustomTabsCallback(Ljava/lang/String;)Lo/isFiltered;

    move-result-object v10

    .line 7007
    iget-object v11, v8, Lo/dispatchUpdatesTo;->onNavigationEvent:Ljava/io/File;

    .line 5101
    invoke-static {v10, v11}, Lo/isCompleteForPath;->onPostMessage(Lo/isFiltered;Ljava/io/File;)Lo/isCompleteForPath;

    move-result-object v10

    .line 8007
    iget-object v8, v8, Lo/dispatchUpdatesTo;->onNavigationEvent:Ljava/io/File;

    .line 5105
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v11, "documents"

    .line 8328
    invoke-static {v11, v8, v10}, Lo/serializedName$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Lo/isCompleteForPath;)Lo/serializedName$ICustomTabsCallback;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 8334
    iget-object v9, v6, Lo/serializedName$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 8333
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2067
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.fileUpload.FileUploadDisplayModel"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2071
    :cond_5
    iget-object v7, p1, Lo/dispatchRemovals;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;

    if-eqz v7, :cond_7

    .line 9017
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;->ICustomTabsCallback:Ljava/util/Map;

    if-eqz v7, :cond_7

    .line 2115
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 9323
    invoke-static {v10, v8}, Lo/serializedName$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/serializedName$ICustomTabsCallback;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 9334
    iget-object v10, v6, Lo/serializedName$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 9333
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v9}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10000
    :cond_7
    iget-object v7, p1, Lo/dispatchRemovals;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v7}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/findMatchingItem;

    .line 2075
    iget-object v8, p1, Lo/dispatchRemovals;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;

    if-nez v8, :cond_8

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 10021
    :cond_8
    iget-object v8, v8, Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;->onRelationshipValidationResult:Ljava/lang/String;

    .line 2075
    invoke-virtual {v6}, Lo/serializedName$onMessageChannelReady;->onNavigationEvent()Lo/serializedName;

    move-result-object v6

    .line 10095
    iget-object v6, v6, Lo/serializedName;->extraCallback:Ljava/util/List;

    const-string v9, "multipartBuilder.build().parts()"

    .line 2075
    invoke-static {v6, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v8, v6}, Lo/findMatchingItem;->ICustomTabsCallback(Ljava/lang/String;Ljava/util/List;)Lo/clearScrap;

    move-result-object v6

    iput-object v6, p1, Lo/dispatchRemovals;->ICustomTabsCallback$Stub:Lo/clearScrap;

    .line 2077
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lo/dispatchRemovals$onMessageChannelReady;

    invoke-direct {v7, p1}, Lo/dispatchRemovals$onMessageChannelReady;-><init>(Lo/dispatchRemovals;)V

    check-cast v7, Ljava/lang/Runnable;

    .line 2083
    sget-object v8, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 11000
    sget-object v8, Lo/isInLayout;->onProgressUpdate:Lo/isRemoving;

    sget-object v9, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v10, 0x4b

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    .line 2077
    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2085
    iget-object v6, p1, Lo/dispatchRemovals;->ICustomTabsCallback$Stub:Lo/clearScrap;

    if-eqz v6, :cond_9

    .line 2086
    new-instance v7, Lo/dispatchRemovals$ICustomTabsCallback;

    invoke-direct {v7, p1}, Lo/dispatchRemovals$ICustomTabsCallback;-><init>(Lo/dispatchRemovals;)V

    check-cast v7, Lo/getScrapOrCachedViewForId;

    invoke-interface {v6, v7}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    :cond_9
    const/4 p1, 0x3

    new-array v6, p1, [Lo/addWrite;

    .line 1154
    iget-object v7, p0, Lo/DiffUtil$ItemCallback$asBinder;->ICustomTabsCallback:Lo/DiffUtil$ItemCallback;

    sget v8, Lo/getSwitchMinWidth$onPostMessage;->proceed:I

    invoke-virtual {v7, v8}, Lo/DiffUtil$ItemCallback;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const-string v8, "proceed"

    invoke-static {v7, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    .line 11043
    new-instance v8, Lo/addWrite;

    const-string v9, "cta_title"

    invoke-direct {v8, v9, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v6, v3

    .line 1154
    iget-object v3, p0, Lo/DiffUtil$ItemCallback$asBinder;->ICustomTabsCallback:Lo/DiffUtil$ItemCallback;

    invoke-static {v3}, Lo/DiffUtil$ItemCallback;->onNavigationEvent(Lo/DiffUtil$ItemCallback;)Lo/dispatchRemovals;

    move-result-object v3

    .line 12034
    iget-object v3, v3, Lo/dispatchRemovals;->ICustomTabsCallback:Lo/setActive;

    check-cast v3, Landroidx/lifecycle/LiveData;

    .line 12320
    iget-object v3, v3, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 12321
    sget-object v7, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v3, v7, :cond_a

    goto :goto_4

    :cond_a
    move-object v3, v4

    .line 1154
    :goto_4
    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_5

    :cond_b
    move-object v3, v4

    .line 13043
    :goto_5
    new-instance v7, Lo/addWrite;

    const-string v8, "document_count"

    invoke-direct {v7, v8, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v6, v5

    .line 1154
    iget-object v3, p0, Lo/DiffUtil$ItemCallback$asBinder;->ICustomTabsCallback:Lo/DiffUtil$ItemCallback;

    invoke-static {v3}, Lo/DiffUtil$ItemCallback;->onNavigationEvent(Lo/DiffUtil$ItemCallback;)Lo/dispatchRemovals;

    move-result-object v3

    .line 14031
    iget-object v3, v3, Lo/dispatchRemovals;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;

    if-eqz v3, :cond_c

    .line 15013
    iget-object v4, v3, Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;->extraCallback:Ljava/lang/String;

    .line 15043
    :cond_c
    new-instance v3, Lo/addWrite;

    invoke-direct {v3, v1, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v6, v2

    .line 1154
    invoke-static {v6, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v6}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "document_upload_screen_cta"

    .line 1154
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto/16 :goto_6

    .line 1156
    :cond_d
    iget-object p1, p0, Lo/DiffUtil$ItemCallback$asBinder;->ICustomTabsCallback:Lo/DiffUtil$ItemCallback;

    invoke-static {p1}, Lo/DiffUtil$ItemCallback;->ICustomTabsCallback(Lo/DiffUtil$ItemCallback;)Lo/onActivityResult;

    move-result-object p1

    iget-object v6, p0, Lo/DiffUtil$ItemCallback$asBinder;->ICustomTabsCallback:Lo/DiffUtil$ItemCallback;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_e

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_e
    const-string v7, "context!!"

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v8, p0, Lo/DiffUtil$ItemCallback$asBinder;->ICustomTabsCallback:Lo/DiffUtil$ItemCallback;

    invoke-static {v8}, Lo/DiffUtil$ItemCallback;->onMessageChannelReady(Lo/DiffUtil$ItemCallback;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const v8, 0x7f1301e7

    invoke-static {v8, v7}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "context"

    .line 16031
    invoke-static {v6, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v9, "text"

    invoke-static {v7, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16032
    sget v9, Lo/preferLastSpan$ICustomTabsCallback$Stub;->error_toast_layout:I

    invoke-virtual {p1, v6, v7, v3, v9}, Lo/onActivityResult;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;ZI)V

    new-array p1, v2, [Lo/addWrite;

    .line 1157
    sget-object v6, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lo/DiffUtil$ItemCallback$asBinder;->ICustomTabsCallback:Lo/DiffUtil$ItemCallback;

    invoke-static {v7}, Lo/DiffUtil$ItemCallback;->onMessageChannelReady(Lo/DiffUtil$ItemCallback;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v8, v6}, Lo/setInterpolator;->onMessageChannelReady(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 16043
    new-instance v7, Lo/addWrite;

    const-string v8, "msg"

    invoke-direct {v7, v8, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, p1, v3

    .line 1157
    iget-object v3, p0, Lo/DiffUtil$ItemCallback$asBinder;->ICustomTabsCallback:Lo/DiffUtil$ItemCallback;

    invoke-static {v3}, Lo/DiffUtil$ItemCallback;->onNavigationEvent(Lo/DiffUtil$ItemCallback;)Lo/dispatchRemovals;

    move-result-object v3

    .line 17031
    iget-object v3, v3, Lo/dispatchRemovals;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;

    if-eqz v3, :cond_f

    .line 18013
    iget-object v4, v3, Lcom/dreamplug/fabrik/ui/fileUpload/FileUploadConfig;->extraCallback:Ljava/lang/String;

    .line 18043
    :cond_f
    new-instance v3, Lo/addWrite;

    invoke-direct {v3, v1, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, p1, v5

    .line 1157
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18088
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "document_error_load"

    .line 1157
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 42
    :goto_6
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
