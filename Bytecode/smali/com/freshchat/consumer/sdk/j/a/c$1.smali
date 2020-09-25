.class Lcom/freshchat/consumer/sdk/j/a/c$1;
.super Lo/fromMediaItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fromMediaItem<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic jL:Lcom/freshchat/consumer/sdk/j/a/d;


# direct methods
.method constructor <init>(Lcom/freshchat/consumer/sdk/j/a/d;I)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/c$1;->jL:Lcom/freshchat/consumer/sdk/j/a/d;

    invoke-direct {p0, p2}, Lo/fromMediaItem;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected b(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 0

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/a/d;->b(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method public synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/freshchat/consumer/sdk/j/a/c$1;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method
