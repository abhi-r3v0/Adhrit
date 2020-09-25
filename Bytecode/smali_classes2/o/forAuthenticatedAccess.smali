.class final Lo/forAuthenticatedAccess;
.super Lo/limitToLast;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/limitToLast<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback$Stub$Proxy:Lo/onPostMessage$extraCallback;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Landroid/widget/ImageView;Lo/newRunLoop;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lo/onPostMessage$extraCallback;Z)V
    .locals 11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v8, p8

    .line 30
    invoke-direct/range {v0 .. v10}, Lo/limitToLast;-><init>(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;Lo/newRunLoop;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object/from16 v1, p10

    .line 32
    iput-object v1, v0, Lo/forAuthenticatedAccess;->ICustomTabsCallback$Stub$Proxy:Lo/onPostMessage$extraCallback;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 2

    .line 56
    iget-object v0, p0, Lo/limitToLast;->onMessageChannelReady:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    iget v1, p0, Lo/limitToLast;->asBinder:I

    if-eqz v1, :cond_1

    .line 61
    iget v1, p0, Lo/limitToLast;->asBinder:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 62
    :cond_1
    iget-object v1, p0, Lo/limitToLast;->onRelationshipValidationResult:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 63
    iget-object v1, p0, Lo/limitToLast;->onRelationshipValidationResult:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method final onPostMessage()V
    .locals 1

    .line 72
    invoke-super {p0}, Lo/limitToLast;->onPostMessage()V

    .line 73
    iget-object v0, p0, Lo/forAuthenticatedAccess;->ICustomTabsCallback$Stub$Proxy:Lo/onPostMessage$extraCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lo/forAuthenticatedAccess;->ICustomTabsCallback$Stub$Proxy:Lo/onPostMessage$extraCallback;

    :cond_0
    return-void
.end method

.method public final onPostMessage(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$extraCallback;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 41
    iget-object v0, p0, Lo/limitToLast;->onMessageChannelReady:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    if-nez v1, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lo/limitToLast;->onNavigationEvent:Lcom/squareup/picasso/Picasso;

    iget-object v2, v0, Lcom/squareup/picasso/Picasso;->onMessageChannelReady:Landroid/content/Context;

    .line 47
    iget-object v0, p0, Lo/limitToLast;->onNavigationEvent:Lcom/squareup/picasso/Picasso;

    iget-boolean v6, v0, Lcom/squareup/picasso/Picasso;->asInterface:Z

    .line 48
    iget-boolean v5, p0, Lo/limitToLast;->ICustomTabsCallback:Z

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lo/postEvent;->ICustomTabsCallback(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$extraCallback;ZZ)V

    return-void

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const-string v0, "Attempted to complete action with no result!\n%s"

    .line 38
    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method
