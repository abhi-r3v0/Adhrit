.class public final Lo/checkSelectForSwipe$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/checkSelectForSwipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/dialog/RepaymentScheduleDialog$Companion;",
        "",
        "()V",
        "SUMMARY",
        "",
        "TYPE",
        "getInstance",
        "Lcom/dreamplug/fabrik/ui/lending/dialog/RepaymentScheduleDialog;",
        "extra",
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$RepaymentScheduleDialogExtra;",
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
.field private final ICustomTabsCallback:Lo/resolveIsInfinite$onPostMessage;

.field private final onMessageChannelReady:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/resolveIsInfinite$onPostMessage;Landroid/os/Bundle;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/checkSelectForSwipe$onMessageChannelReady;->ICustomTabsCallback:Lo/resolveIsInfinite$onPostMessage;

    iput-object p2, p0, Lo/checkSelectForSwipe$onMessageChannelReady;->onMessageChannelReady:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/Object;
    .locals 25

    move-object/from16 v0, p0

    .line 2000
    iget-object v1, v0, Lo/checkSelectForSwipe$onMessageChannelReady;->ICustomTabsCallback:Lo/resolveIsInfinite$onPostMessage;

    iget-object v2, v0, Lo/checkSelectForSwipe$onMessageChannelReady;->onMessageChannelReady:Landroid/os/Bundle;

    const-string v3, "session_id"

    .line 3000
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    :cond_0
    iget-object v4, v1, Lo/resolveIsInfinite$onPostMessage;->extraCallback:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "chunk_intents"

    const-string v7, "status"

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_a

    invoke-virtual {v1, v3}, Lo/resolveIsInfinite$onPostMessage;->onPostMessage(I)Lo/computeScrollRange$extraCallback;

    move-result-object v4

    iget-object v10, v4, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v10, v10, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v7, v10}, Lo/extraCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iget-object v10, v4, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget v10, v10, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onMessageChannelReady:I

    invoke-static {v10, v7}, Lo/extraCallback;->onMessageChannelReady(II)Z

    move-result v10

    const/4 v11, 0x6

    const/4 v12, 0x4

    const/4 v13, 0x5

    if-eqz v10, :cond_3

    sget-object v2, Lo/resolveIsInfinite$onPostMessage;->onMessageChannelReady:Lo/addItemDecoration$onPostMessage;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v9

    iget-object v5, v4, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget v5, v5, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onMessageChannelReady:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v8

    const-string v5, "Found stale update for session %s with status %d."

    invoke-virtual {v2, v5, v6}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v4, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v4, v2, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    iget v2, v2, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onMessageChannelReady:I

    if-ne v2, v12, :cond_1

    iget-object v1, v1, Lo/resolveIsInfinite$onPostMessage;->onNavigationEvent:Lo/setBreadcrumbEventReceiver;

    invoke-interface {v1}, Lo/setBreadcrumbEventReceiver;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/toGraph;

    invoke-interface {v1, v3, v4}, Lo/toGraph;->ICustomTabsCallback(ILjava/lang/String;)V

    goto/16 :goto_8

    :cond_1
    if-ne v2, v13, :cond_2

    iget-object v1, v1, Lo/resolveIsInfinite$onPostMessage;->onNavigationEvent:Lo/setBreadcrumbEventReceiver;

    invoke-interface {v1}, Lo/setBreadcrumbEventReceiver;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/toGraph;

    invoke-interface {v1, v3}, Lo/toGraph;->onPostMessage(I)V

    goto/16 :goto_8

    :cond_2
    if-ne v2, v11, :cond_11

    iget-object v1, v1, Lo/resolveIsInfinite$onPostMessage;->onNavigationEvent:Lo/setBreadcrumbEventReceiver;

    invoke-interface {v1}, Lo/setBreadcrumbEventReceiver;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/toGraph;

    new-array v2, v8, [Ljava/lang/String;

    aput-object v4, v2, v9

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/toGraph;->extraCallback(Ljava/util/List;)V

    goto/16 :goto_8

    :cond_3
    iget-object v5, v4, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iput v7, v5, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onMessageChannelReady:I

    if-eq v7, v13, :cond_5

    if-eq v7, v11, :cond_5

    if-ne v7, v12, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_6

    .line 5000
    new-instance v2, Lo/getExtraLayoutSpace$onPostMessage;

    invoke-direct {v2, v1, v3}, Lo/getExtraLayoutSpace$onPostMessage;-><init>(Lo/resolveIsInfinite$onPostMessage;I)V

    invoke-virtual {v1, v2}, Lo/resolveIsInfinite$onPostMessage;->onPostMessage(Lo/isValue;)Ljava/lang/Object;

    .line 3000
    iget-object v1, v1, Lo/resolveIsInfinite$onPostMessage;->onPostMessage:Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;

    iget-object v2, v4, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v2, v2, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;->onPostMessage(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_6
    iget-object v1, v4, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v1, v1, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v3, :cond_11

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/updateLayoutState$onPostMessage;

    iget-object v10, v4, Lo/computeScrollRange$extraCallback;->ICustomTabsCallback:Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    iget-object v10, v10, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    iget-object v11, v7, Lo/updateLayoutState$onPostMessage;->onPostMessage:Ljava/lang/String;

    invoke-static {v6, v10, v11}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    if-nez v10, :cond_7

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_9

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    if-eqz v12, :cond_8

    iget-object v12, v7, Lo/updateLayoutState$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lo/fixLayoutEndGap$ICustomTabsCallback;

    iput-boolean v8, v12, Lo/fixLayoutEndGap$ICustomTabsCallback;->onNavigationEvent:Z

    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_a
    invoke-static {v2}, Lo/resolveIsInfinite$onPostMessage;->onNavigationEvent(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v11

    const-string v4, "pack_version"

    invoke-static {v4, v11}, Lo/extraCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v12

    invoke-static {v7, v11}, Lo/extraCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    const-string v4, "total_bytes_to_download"

    invoke-static {v4, v11}, Lo/extraCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v15

    const-string v4, "slice_ids"

    invoke-static {v4, v11}, Lo/extraCallback;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    if-nez v4, :cond_b

    .line 6000
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 3000
    :cond_b
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v11, v7}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    if-nez v10, :cond_c

    .line 7000
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 3000
    :cond_c
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Intent;

    if-eqz v17, :cond_d

    const/4 v9, 0x1

    :cond_d
    new-instance v0, Lo/fixLayoutEndGap$ICustomTabsCallback;

    invoke-direct {v0, v9}, Lo/fixLayoutEndGap$ICustomTabsCallback;-><init>(Z)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    move-object/from16 v0, p0

    goto :goto_6

    :cond_e
    const-string v0, "uncompressed_hash_sha256"

    invoke-static {v0, v11, v7}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v0, "uncompressed_size"

    invoke-static {v0, v11, v7}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    const-string v0, "patch_format"

    invoke-static {v0, v11, v7}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v24

    if-eqz v24, :cond_f

    new-instance v0, Lo/updateLayoutState$onPostMessage;

    const/16 v23, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v7

    move-object/from16 v22, v8

    invoke-direct/range {v17 .. v24}, Lo/updateLayoutState$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;II)V

    const/4 v9, 0x0

    goto :goto_7

    :cond_f
    const-string v0, "compression_format"

    invoke-static {v0, v11, v7}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v23

    new-instance v0, Lo/updateLayoutState$onPostMessage;

    const/16 v24, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v7

    move-object/from16 v22, v8

    invoke-direct/range {v17 .. v24}, Lo/updateLayoutState$onPostMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/List;II)V

    :goto_7
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_5

    :cond_10
    new-instance v0, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;

    move-object v10, v0

    move-object/from16 v17, v5

    invoke-direct/range {v10 .. v17}, Lo/setSmoothScrollbarEnabled$onMessageChannelReady;-><init>(Ljava/lang/String;JIJLjava/util/List;)V

    new-instance v4, Lo/computeScrollRange$extraCallback;

    const-string v5, "app_version_code"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v4, v3, v2, v0}, Lo/computeScrollRange$extraCallback;-><init>(IILo/setSmoothScrollbarEnabled$onMessageChannelReady;)V

    iget-object v0, v1, Lo/resolveIsInfinite$onPostMessage;->extraCallback:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    :goto_8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method
