.class public Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private maintainAspectRatio:Z

.field private targetHeight:I

.field private targetWidth:I

.field private transformToApply:Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->aH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->uri:Landroid/net/Uri;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Path must not be empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(II)Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->a(IIZ)Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;

    move-result-object p1

    return-object p1
.end method

.method public a(IIZ)Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->targetWidth:I

    iput p2, p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->targetHeight:I

    iput-boolean p3, p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->maintainAspectRatio:Z

    return-object p0
.end method

.method public a(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;)Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->transformToApply:Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;

    return-object p0
.end method

.method public dM()Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;
    .locals 3

    new-instance v0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->uri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;-><init>(Landroid/net/Uri;Lcom/freshchat/consumer/sdk/a;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->transformToApply:Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->access$102(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;)Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;

    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->maintainAspectRatio:Z

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->access$202(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;Z)Z

    iget v1, p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->targetWidth:I

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->access$302(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;I)I

    iget v1, p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;->targetHeight:I

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->access$402(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;I)I

    return-object v0
.end method
