.class public final Lo/newRunLoop$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/newRunLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field public ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:Landroid/graphics/Bitmap$Config;

.field private asBinder:I

.field public extraCallback:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

.field public onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/newPersistentConnection;",
            ">;"
        }
    .end annotation
.end field

.field public onNavigationEvent:Z

.field public onPostMessage:Landroid/net/Uri;

.field private onRelationshipValidationResult:I


# direct methods
.method constructor <init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lo/newRunLoop$onPostMessage;->onPostMessage:Landroid/net/Uri;

    const/4 p1, 0x0

    .line 220
    iput p1, p0, Lo/newRunLoop$onPostMessage;->ICustomTabsCallback:I

    .line 221
    iput-object p3, p0, Lo/newRunLoop$onPostMessage;->ICustomTabsCallback$Stub:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady()Lo/newRunLoop;
    .locals 19

    move-object/from16 v0, p0

    .line 461
    iget-boolean v1, v0, Lo/newRunLoop$onPostMessage;->onNavigationEvent:Z

    if-eqz v1, :cond_1

    iget v1, v0, Lo/newRunLoop$onPostMessage;->asBinder:I

    if-nez v1, :cond_1

    iget v1, v0, Lo/newRunLoop$onPostMessage;->onRelationshipValidationResult:I

    if-eqz v1, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Center inside requires calling resize with positive width and height."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :cond_1
    :goto_0
    iget-object v1, v0, Lo/newRunLoop$onPostMessage;->extraCallback:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    if-nez v1, :cond_2

    .line 466
    sget-object v1, Lcom/squareup/picasso/Picasso$onMessageChannelReady;->onMessageChannelReady:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    iput-object v1, v0, Lo/newRunLoop$onPostMessage;->extraCallback:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    .line 468
    :cond_2
    new-instance v1, Lo/newRunLoop;

    move-object v2, v1

    iget-object v3, v0, Lo/newRunLoop$onPostMessage;->onPostMessage:Landroid/net/Uri;

    iget v4, v0, Lo/newRunLoop$onPostMessage;->ICustomTabsCallback:I

    const/4 v5, 0x0

    iget-object v6, v0, Lo/newRunLoop$onPostMessage;->onMessageChannelReady:Ljava/util/List;

    iget v7, v0, Lo/newRunLoop$onPostMessage;->asBinder:I

    iget v8, v0, Lo/newRunLoop$onPostMessage;->onRelationshipValidationResult:I

    const/4 v9, 0x0

    iget-boolean v10, v0, Lo/newRunLoop$onPostMessage;->onNavigationEvent:Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v5, v0, Lo/newRunLoop$onPostMessage;->ICustomTabsCallback$Stub:Landroid/graphics/Bitmap$Config;

    move-object/from16 v16, v5

    iget-object v5, v0, Lo/newRunLoop$onPostMessage;->extraCallback:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    move-object/from16 v17, v5

    const/16 v18, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v2 .. v18}, Lo/newRunLoop;-><init>(Landroid/net/Uri;ILjava/lang/String;Ljava/util/List;IIZZZFFFZLandroid/graphics/Bitmap$Config;Lcom/squareup/picasso/Picasso$onMessageChannelReady;B)V

    return-object v1
.end method

.method public final onPostMessage(II)Lo/newRunLoop$onPostMessage;
    .locals 0

    if-ltz p1, :cond_3

    if-ltz p2, :cond_2

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "At least one dimension has to be positive number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 307
    :cond_1
    :goto_0
    iput p1, p0, Lo/newRunLoop$onPostMessage;->asBinder:I

    .line 308
    iput p2, p0, Lo/newRunLoop$onPostMessage;->onRelationshipValidationResult:I

    return-object p0

    .line 302
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Height must be positive number or 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 299
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width must be positive number or 0."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
