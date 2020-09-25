.class final Lcom/squareup/picasso/Picasso$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 111
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const-string v2, "Main"

    if-eq v0, v1, :cond_c

    const/16 v1, 0x8

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    .line 130
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 132
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v3, v0, :cond_3

    .line 133
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/limitToLast;

    .line 134
    iget-object v4, v1, Lo/limitToLast;->onNavigationEvent:Lcom/squareup/picasso/Picasso;

    const/4 v5, 0x0

    .line 5528
    iget v6, v1, Lo/limitToLast;->onPostMessage:I

    invoke-static {v6}, Lo/lambda$addTokenChangeListener$0;->onMessageChannelReady(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6081
    iget-object v5, v1, Lo/limitToLast;->asInterface:Ljava/lang/String;

    .line 5529
    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->onPostMessage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    :cond_0
    if-eqz v5, :cond_1

    .line 5534
    sget-object v6, Lcom/squareup/picasso/Picasso$extraCallback;->onPostMessage:Lcom/squareup/picasso/Picasso$extraCallback;

    invoke-virtual {v4, v5, v6, v1}, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$extraCallback;Lo/limitToLast;)V

    .line 5535
    iget-boolean v4, v4, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    if-eqz v4, :cond_2

    .line 5536
    iget-object v1, v1, Lo/limitToLast;->extraCallback:Lo/newRunLoop;

    invoke-virtual {v1}, Lo/newRunLoop;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/squareup/picasso/Picasso$extraCallback;->onPostMessage:Lcom/squareup/picasso/Picasso$extraCallback;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "completed"

    invoke-static {v2, v5, v1, v4}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5540
    :cond_1
    invoke-virtual {v4, v1}, Lcom/squareup/picasso/Picasso;->onNavigationEvent(Lo/limitToLast;)V

    .line 5541
    iget-boolean v4, v4, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    if-eqz v4, :cond_2

    .line 5542
    iget-object v1, v1, Lo/limitToLast;->extraCallback:Lo/newRunLoop;

    invoke-virtual {v1}, Lo/newRunLoop;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v1

    const-string v4, "resumed"

    invoke-static {v2, v4, v1}, Lo/saveUserOverwrite;->extraCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 138
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown handler message received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 113
    :cond_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 115
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_b

    .line 116
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getRepo;

    .line 117
    iget-object v4, v2, Lo/getRepo;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    .line 2374
    iget-object v5, v2, Lo/getRepo;->onTransact:Lo/limitToLast;

    .line 2382
    iget-object v6, v2, Lo/getRepo;->onRelationshipValidationResult:Ljava/util/List;

    const/4 v7, 0x1

    if-eqz v6, :cond_6

    .line 1497
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x1

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    :goto_3
    if-nez v5, :cond_8

    if-eqz v8, :cond_7

    goto :goto_4

    :cond_7
    const/4 v7, 0x0

    :cond_8
    :goto_4
    if-eqz v7, :cond_a

    .line 4358
    iget-object v7, v2, Lo/getRepo;->asBinder:Landroid/graphics/Bitmap;

    .line 4390
    iget-object v2, v2, Lo/getRepo;->ICustomTabsCallback$Stub$Proxy:Lcom/squareup/picasso/Picasso$extraCallback;

    if-eqz v5, :cond_9

    .line 1510
    invoke-virtual {v4, v7, v2, v5}, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$extraCallback;Lo/limitToLast;)V

    :cond_9
    if-eqz v8, :cond_a

    .line 1515
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v5, :cond_a

    .line 1516
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/limitToLast;

    .line 1517
    invoke-virtual {v4, v7, v2, v9}, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$extraCallback;Lo/limitToLast;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    return-void

    .line 122
    :cond_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/limitToLast;

    .line 5101
    iget-object v0, p1, Lo/limitToLast;->onNavigationEvent:Lcom/squareup/picasso/Picasso;

    .line 123
    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_d

    .line 124
    iget-object v0, p1, Lo/limitToLast;->extraCallback:Lo/newRunLoop;

    invoke-virtual {v0}, Lo/newRunLoop;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v0

    const-string v1, "canceled"

    const-string v3, "target got garbage collected"

    invoke-static {v2, v1, v0, v3}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_d
    iget-object v0, p1, Lo/limitToLast;->onNavigationEvent:Lcom/squareup/picasso/Picasso;

    invoke-virtual {p1}, Lo/limitToLast;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/squareup/picasso/Picasso;->onMessageChannelReady(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;)V

    return-void
.end method
