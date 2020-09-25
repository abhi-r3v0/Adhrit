.class public final Lo/removeTokenChangeListener;
.super Lo/limitToLast;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/limitToLast<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final warmup:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/Picasso;Lo/newRunLoop;IILjava/lang/Object;Ljava/lang/String;Lo/onPostMessage$extraCallback;)V
    .locals 11

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object/from16 v8, p6

    .line 27
    invoke-direct/range {v0 .. v10}, Lo/limitToLast;-><init>(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;Lo/newRunLoop;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object v1, p0

    iput-object v0, v1, Lo/removeTokenChangeListener;->warmup:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()Ljava/lang/Object;
    .locals 1

    .line 50
    iget-object v0, p0, Lo/removeTokenChangeListener;->warmup:Ljava/lang/Object;

    return-object v0
.end method

.method final onNavigationEvent()V
    .locals 0

    return-void
.end method

.method final onPostMessage()V
    .locals 0

    .line 45
    invoke-super {p0}, Lo/limitToLast;->onPostMessage()V

    return-void
.end method

.method final onPostMessage(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$extraCallback;)V
    .locals 0

    return-void
.end method
