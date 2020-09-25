.class final Lo/forUnauthenticatedAccess$ICustomTabsCallback;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/forUnauthenticatedAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/forUnauthenticatedAccess;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lo/forUnauthenticatedAccess;)V
    .locals 0

    .line 474
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 475
    iput-object p2, p0, Lo/forUnauthenticatedAccess$ICustomTabsCallback;->ICustomTabsCallback:Lo/forUnauthenticatedAccess;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 479
    iget v2, v1, Landroid/os/Message;->what:I

    const-string v4, "canceled"

    const-string v6, "Dispatcher"

    packed-switch v2, :pswitch_data_0

    .line 529
    :pswitch_0
    sget-object v2, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback:Landroid/os/Handler;

    new-instance v3, Lo/forUnauthenticatedAccess$ICustomTabsCallback$1;

    invoke-direct {v3, v1}, Lo/forUnauthenticatedAccess$ICustomTabsCallback$1;-><init>(Landroid/os/Message;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 496
    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 497
    iget-object v2, v0, Lo/forUnauthenticatedAccess$ICustomTabsCallback;->ICustomTabsCallback:Lo/forUnauthenticatedAccess;

    invoke-virtual {v2, v1}, Lo/forUnauthenticatedAccess;->onNavigationEvent(Ljava/lang/Object;)V

    return-void

    .line 491
    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 492
    iget-object v2, v0, Lo/forUnauthenticatedAccess$ICustomTabsCallback;->ICustomTabsCallback:Lo/forUnauthenticatedAccess;

    .line 6242
    iget-object v7, v2, Lo/forUnauthenticatedAccess;->onPostMessage:Ljava/util/Set;

    invoke-interface {v7, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 6248
    iget-object v7, v2, Lo/forUnauthenticatedAccess;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 6249
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/getRepo;

    .line 6378
    iget-object v9, v8, Lo/getRepo;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    .line 6250
    iget-boolean v9, v9, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    .line 7374
    iget-object v10, v8, Lo/getRepo;->onTransact:Lo/limitToLast;

    .line 7382
    iget-object v11, v8, Lo/getRepo;->onRelationshipValidationResult:Ljava/util/List;

    if-eqz v11, :cond_1

    .line 6254
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    if-nez v10, :cond_2

    if-eqz v12, :cond_0

    :cond_2
    const-string v13, "\' was paused"

    const-string v14, "because tag \'"

    const-string v15, "paused"

    if-eqz v10, :cond_3

    .line 8109
    iget-object v3, v10, Lo/limitToLast;->onTransact:Ljava/lang/Object;

    .line 6261
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 6262
    invoke-virtual {v8, v10}, Lo/getRepo;->ICustomTabsCallback(Lo/limitToLast;)V

    .line 6263
    iget-object v3, v2, Lo/forUnauthenticatedAccess;->ICustomTabsCallback:Ljava/util/Map;

    invoke-virtual {v10}, Lo/limitToLast;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_3

    .line 6265
    iget-object v3, v10, Lo/limitToLast;->extraCallback:Lo/newRunLoop;

    invoke-virtual {v3}, Lo/newRunLoop;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v15, v3, v5}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v12, :cond_5

    .line 6271
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    :goto_2
    if-ltz v3, :cond_5

    .line 6272
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/limitToLast;

    .line 9109
    iget-object v10, v5, Lo/limitToLast;->onTransact:Ljava/lang/Object;

    .line 6273
    invoke-virtual {v10, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 6277
    invoke-virtual {v8, v5}, Lo/getRepo;->ICustomTabsCallback(Lo/limitToLast;)V

    .line 6278
    iget-object v10, v2, Lo/forUnauthenticatedAccess;->ICustomTabsCallback:Ljava/util/Map;

    invoke-virtual {v5}, Lo/limitToLast;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_4

    .line 6280
    iget-object v5, v5, Lo/limitToLast;->extraCallback:Lo/newRunLoop;

    invoke-virtual {v5}, Lo/newRunLoop;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v15, v5, v10}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 6288
    :cond_5
    invoke-virtual {v8}, Lo/getRepo;->onPostMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6289
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    if-eqz v9, :cond_0

    .line 6291
    invoke-static {v8}, Lo/saveUserOverwrite;->ICustomTabsCallback(Lo/getRepo;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "all actions paused"

    invoke-static {v6, v4, v3, v5}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    return-void

    .line 525
    :pswitch_3
    iget-object v2, v0, Lo/forUnauthenticatedAccess$ICustomTabsCallback;->ICustomTabsCallback:Lo/forUnauthenticatedAccess;

    iget v1, v1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_7

    const/4 v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v3, 0x0

    .line 12396
    :goto_3
    iput-boolean v3, v2, Lo/forUnauthenticatedAccess;->asBinder:Z

    return-void

    .line 520
    :pswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    .line 521
    iget-object v2, v0, Lo/forUnauthenticatedAccess$ICustomTabsCallback;->ICustomTabsCallback:Lo/forUnauthenticatedAccess;

    invoke-virtual {v2, v1}, Lo/forUnauthenticatedAccess;->onNavigationEvent(Landroid/net/NetworkInfo;)V

    return-void

    .line 516
    :pswitch_5
    iget-object v1, v0, Lo/forUnauthenticatedAccess$ICustomTabsCallback;->ICustomTabsCallback:Lo/forUnauthenticatedAccess;

    .line 12380
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Lo/forUnauthenticatedAccess;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12381
    iget-object v3, v1, Lo/forUnauthenticatedAccess;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 12382
    iget-object v3, v1, Lo/forUnauthenticatedAccess;->onRelationshipValidationResult:Landroid/os/Handler;

    iget-object v1, v1, Lo/forUnauthenticatedAccess;->onRelationshipValidationResult:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12383
    invoke-static {v2}, Lo/forUnauthenticatedAccess;->onMessageChannelReady(Ljava/util/List;)V

    return-void

    .line 511
    :pswitch_6
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lo/getRepo;

    .line 512
    iget-object v2, v0, Lo/forUnauthenticatedAccess$ICustomTabsCallback;->ICustomTabsCallback:Lo/forUnauthenticatedAccess;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lo/forUnauthenticatedAccess;->onMessageChannelReady(Lo/getRepo;Z)V

    return-void

    .line 506
    :pswitch_7
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lo/getRepo;

    .line 507
    iget-object v2, v0, Lo/forUnauthenticatedAccess$ICustomTabsCallback;->ICustomTabsCallback:Lo/forUnauthenticatedAccess;

    invoke-virtual {v2, v1}, Lo/forUnauthenticatedAccess;->ICustomTabsCallback(Lo/getRepo;)V

    return-void

    .line 501
    :pswitch_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lo/getRepo;

    .line 502
    iget-object v2, v0, Lo/forUnauthenticatedAccess$ICustomTabsCallback;->ICustomTabsCallback:Lo/forUnauthenticatedAccess;

    .line 10366
    iget v3, v1, Lo/getRepo;->ICustomTabsCallback:I

    .line 9369
    invoke-static {v3}, Lo/lambda$addTokenChangeListener$0;->ICustomTabsCallback(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 9370
    iget-object v3, v2, Lo/forUnauthenticatedAccess;->onTransact:Lo/doTransaction;

    .line 11362
    iget-object v4, v1, Lo/getRepo;->extraCallback:Ljava/lang/String;

    .line 12358
    iget-object v5, v1, Lo/getRepo;->asBinder:Landroid/graphics/Bitmap;

    .line 9370
    invoke-interface {v3, v4, v5}, Lo/doTransaction;->onPostMessage(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 9372
    :cond_8
    iget-object v3, v2, Lo/forUnauthenticatedAccess;->onNavigationEvent:Ljava/util/Map;

    .line 12362
    iget-object v4, v1, Lo/getRepo;->extraCallback:Ljava/lang/String;

    .line 9372
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9373
    invoke-virtual {v2, v1}, Lo/forUnauthenticatedAccess;->onNavigationEvent(Lo/getRepo;)V

    .line 12378
    iget-object v2, v1, Lo/getRepo;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    .line 9374
    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    if-eqz v2, :cond_9

    .line 9375
    invoke-static {v1}, Lo/saveUserOverwrite;->ICustomTabsCallback(Lo/getRepo;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "batched"

    const-string v3, "for completion"

    invoke-static {v6, v2, v1, v3}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void

    .line 486
    :pswitch_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lo/limitToLast;

    .line 487
    iget-object v2, v0, Lo/forUnauthenticatedAccess$ICustomTabsCallback;->ICustomTabsCallback:Lo/forUnauthenticatedAccess;

    .line 2081
    iget-object v3, v1, Lo/limitToLast;->asInterface:Ljava/lang/String;

    .line 1215
    iget-object v5, v2, Lo/forUnauthenticatedAccess;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/getRepo;

    if-eqz v5, :cond_a

    .line 1217
    invoke-virtual {v5, v1}, Lo/getRepo;->ICustomTabsCallback(Lo/limitToLast;)V

    .line 1218
    invoke-virtual {v5}, Lo/getRepo;->onPostMessage()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1219
    iget-object v5, v2, Lo/forUnauthenticatedAccess;->onNavigationEvent:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    iget-object v3, v1, Lo/limitToLast;->onNavigationEvent:Lcom/squareup/picasso/Picasso;

    .line 1220
    iget-boolean v3, v3, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    if-eqz v3, :cond_a

    .line 3073
    iget-object v3, v1, Lo/limitToLast;->extraCallback:Lo/newRunLoop;

    .line 1221
    invoke-virtual {v3}, Lo/newRunLoop;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v4, v3}, Lo/saveUserOverwrite;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    :cond_a
    iget-object v3, v2, Lo/forUnauthenticatedAccess;->onPostMessage:Ljava/util/Set;

    .line 3109
    iget-object v5, v1, Lo/limitToLast;->onTransact:Ljava/lang/Object;

    .line 1226
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1227
    iget-object v3, v2, Lo/forUnauthenticatedAccess;->ICustomTabsCallback:Ljava/util/Map;

    invoke-virtual {v1}, Lo/limitToLast;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4101
    iget-object v3, v1, Lo/limitToLast;->onNavigationEvent:Lcom/squareup/picasso/Picasso;

    .line 1228
    iget-boolean v3, v3, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    if-eqz v3, :cond_b

    .line 5073
    iget-object v3, v1, Lo/limitToLast;->extraCallback:Lo/newRunLoop;

    .line 1229
    invoke-virtual {v3}, Lo/newRunLoop;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    const-string v5, "because paused request got canceled"

    invoke-static {v6, v4, v3, v5}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1234
    :cond_b
    iget-object v2, v2, Lo/forUnauthenticatedAccess;->extraCallback:Ljava/util/Map;

    invoke-virtual {v1}, Lo/limitToLast;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/limitToLast;

    if-eqz v1, :cond_c

    .line 5101
    iget-object v2, v1, Lo/limitToLast;->onNavigationEvent:Lcom/squareup/picasso/Picasso;

    .line 1235
    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    if-eqz v2, :cond_c

    .line 6073
    iget-object v1, v1, Lo/limitToLast;->extraCallback:Lo/newRunLoop;

    .line 1236
    invoke-virtual {v1}, Lo/newRunLoop;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    const-string v2, "from replaying"

    invoke-static {v6, v4, v1, v2}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return-void

    .line 481
    :pswitch_a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lo/limitToLast;

    .line 482
    iget-object v2, v0, Lo/forUnauthenticatedAccess$ICustomTabsCallback;->ICustomTabsCallback:Lo/forUnauthenticatedAccess;

    const/4 v3, 0x1

    .line 1175
    invoke-virtual {v2, v1, v3}, Lo/forUnauthenticatedAccess;->extraCallback(Lo/limitToLast;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
