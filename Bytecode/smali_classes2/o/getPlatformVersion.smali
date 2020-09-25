.class public final Lo/getPlatformVersion;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final extraCallback:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final ICustomTabsCallback:Lo/newRunLoop$onPostMessage;

.field public final onMessageChannelReady:Lcom/squareup/picasso/Picasso;

.field private onNavigationEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lo/getPlatformVersion;->extraCallback:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lo/getPlatformVersion;->onNavigationEvent:Z

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lo/getPlatformVersion;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    .line 80
    new-instance v1, Lo/newRunLoop$onPostMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v0}, Lo/newRunLoop$onPostMessage;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V

    iput-object v1, p0, Lo/getPlatformVersion;->ICustomTabsCallback:Lo/newRunLoop$onPostMessage;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lo/getPlatformVersion;->onNavigationEvent:Z

    .line 74
    iput-object p1, p0, Lo/getPlatformVersion;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    .line 75
    new-instance v0, Lo/newRunLoop$onPostMessage;

    iget-object p1, p1, Lcom/squareup/picasso/Picasso;->onTransact:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p1}, Lo/newRunLoop$onPostMessage;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lo/getPlatformVersion;->ICustomTabsCallback:Lo/newRunLoop$onPostMessage;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(J)Lo/newRunLoop;
    .locals 7

    .line 684
    sget-object v0, Lo/getPlatformVersion;->extraCallback:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 686
    iget-object v1, p0, Lo/getPlatformVersion;->ICustomTabsCallback:Lo/newRunLoop$onPostMessage;

    invoke-virtual {v1}, Lo/newRunLoop$onPostMessage;->onMessageChannelReady()Lo/newRunLoop;

    move-result-object v1

    .line 687
    iput v0, v1, Lo/newRunLoop;->onPostMessage:I

    .line 688
    iput-wide p1, v1, Lo/newRunLoop;->ICustomTabsCallback:J

    .line 690
    iget-object v2, p0, Lo/getPlatformVersion;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    const-string v3, "Main"

    if-eqz v2, :cond_0

    .line 5160
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[R"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v1, Lo/newRunLoop;->onPostMessage:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 692
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "created"

    invoke-static {v3, v6, v4, v5}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_0
    iget-object v4, p0, Lo/getPlatformVersion;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v4, v1}, Lcom/squareup/picasso/Picasso;->onPostMessage(Lo/newRunLoop;)Lo/newRunLoop;

    move-result-object v4

    if-eq v4, v1, :cond_1

    .line 698
    iput v0, v4, Lo/newRunLoop;->onPostMessage:I

    .line 699
    iput-wide p1, v4, Lo/newRunLoop;->ICustomTabsCallback:J

    if-eqz v2, :cond_1

    .line 702
    invoke-virtual {v4}, Lo/newRunLoop;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "into "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "changed"

    invoke-static {v3, v0, p1, p2}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v4
.end method

.method public final onNavigationEvent(Landroid/widget/ImageView;Lo/onPostMessage$extraCallback;)V
    .locals 14

    move-object v0, p0

    move-object v3, p1

    .line 614
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 615
    invoke-static {}, Lo/saveUserOverwrite;->onNavigationEvent()V

    if-eqz v3, :cond_7

    .line 621
    iget-object v4, v0, Lo/getPlatformVersion;->ICustomTabsCallback:Lo/newRunLoop$onPostMessage;

    .line 1245
    iget-object v5, v4, Lo/newRunLoop$onPostMessage;->onPostMessage:Landroid/net/Uri;

    const/4 v6, 0x0

    if-nez v5, :cond_1

    iget v4, v4, Lo/newRunLoop$onPostMessage;->ICustomTabsCallback:I

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 622
    iget-object v1, v0, Lo/getPlatformVersion;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    .line 2206
    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 623
    iget-boolean v1, v0, Lo/getPlatformVersion;->onNavigationEvent:Z

    if-eqz v1, :cond_2

    .line 624
    invoke-static {p1, v5}, Lo/postEvent;->onMessageChannelReady(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void

    .line 645
    :cond_3
    invoke-virtual {p0, v1, v2}, Lo/getPlatformVersion;->ICustomTabsCallback(J)Lo/newRunLoop;

    move-result-object v7

    .line 646
    invoke-static {v7}, Lo/saveUserOverwrite;->onPostMessage(Lo/newRunLoop;)Ljava/lang/String;

    move-result-object v9

    .line 648
    invoke-static {v6}, Lo/lambda$addTokenChangeListener$0;->onMessageChannelReady(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 649
    iget-object v1, v0, Lo/getPlatformVersion;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v9}, Lcom/squareup/picasso/Picasso;->onPostMessage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 651
    iget-object v1, v0, Lo/getPlatformVersion;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    .line 3206
    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 652
    iget-object v1, v0, Lo/getPlatformVersion;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    iget-object v2, v1, Lcom/squareup/picasso/Picasso;->onMessageChannelReady:Landroid/content/Context;

    sget-object v5, Lcom/squareup/picasso/Picasso$extraCallback;->onPostMessage:Lcom/squareup/picasso/Picasso$extraCallback;

    const/4 v6, 0x0

    iget-object v1, v0, Lo/getPlatformVersion;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    iget-boolean v8, v1, Lcom/squareup/picasso/Picasso;->asInterface:Z

    move-object v1, p1

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v8

    invoke-static/range {v1 .. v6}, Lo/postEvent;->ICustomTabsCallback(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$extraCallback;ZZ)V

    .line 653
    iget-object v1, v0, Lo/getPlatformVersion;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->ICustomTabsCallback$Stub:Z

    if-eqz v1, :cond_4

    .line 4160
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[R"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v7, Lo/newRunLoop;->onPostMessage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/squareup/picasso/Picasso$extraCallback;->onPostMessage:Lcom/squareup/picasso/Picasso$extraCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Main"

    const-string v4, "completed"

    invoke-static {v3, v4, v1, v2}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    .line 663
    :cond_5
    iget-boolean v1, v0, Lo/getPlatformVersion;->onNavigationEvent:Z

    if-eqz v1, :cond_6

    .line 664
    invoke-static {p1, v5}, Lo/postEvent;->onMessageChannelReady(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 667
    :cond_6
    new-instance v13, Lo/forAuthenticatedAccess;

    iget-object v2, v0, Lo/getPlatformVersion;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, v13

    move-object v3, p1

    move-object v4, v7

    move v7, v8

    move-object v8, v10

    move-object v10, v11

    move-object/from16 v11, p2

    invoke-direct/range {v1 .. v12}, Lo/forAuthenticatedAccess;-><init>(Lcom/squareup/picasso/Picasso;Landroid/widget/ImageView;Lo/newRunLoop;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lo/onPostMessage$extraCallback;Z)V

    .line 671
    iget-object v1, v0, Lo/getPlatformVersion;->onMessageChannelReady:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v13}, Lcom/squareup/picasso/Picasso;->onNavigationEvent(Lo/limitToLast;)V

    return-void

    .line 618
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
