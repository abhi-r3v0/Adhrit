.class public final Lo/isUnauthenticatedUsage;
.super Lo/limitToLast;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/limitToLast<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/Picasso;Lo/newRunLoop;IILjava/lang/Object;Ljava/lang/String;)V
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

    .line 23
    invoke-direct/range {v0 .. v10}, Lo/limitToLast;-><init>(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;Lo/newRunLoop;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 0

    return-void
.end method

.method final onPostMessage(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$extraCallback;)V
    .locals 0

    return-void
.end method
