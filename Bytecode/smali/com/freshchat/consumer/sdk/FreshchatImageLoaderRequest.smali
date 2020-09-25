.class public Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$a;,
        Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;
    }
.end annotation


# instance fields
.field private maintainAspectRatio:Z

.field private targetHeight:I

.field private targetWidth:I

.field private transformToApply:Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;

.field private final uri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->uri:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/Uri;Lcom/freshchat/consumer/sdk/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;-><init>(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$102(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;)Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->transformToApply:Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;

    return-object p1
.end method

.method static synthetic access$202(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->maintainAspectRatio:Z

    return p1
.end method

.method static synthetic access$302(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;I)I
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->targetWidth:I

    return p1
.end method

.method static synthetic access$402(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;I)I
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->targetHeight:I

    return p1
.end method


# virtual methods
.method public getTargetHeight()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->targetHeight:I

    return v0
.end method

.method public getTargetWidth()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->targetWidth:I

    return v0
.end method

.method public getTransformToApply()Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->transformToApply:Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public setMaintainAspectRatio(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->maintainAspectRatio:Z

    return-void
.end method

.method public setTargetHeight(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->targetHeight:I

    return-void
.end method

.method public setTargetWidth(I)V
    .locals 0

    iput p1, p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->targetWidth:I

    return-void
.end method

.method public setTransformToApply(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->transformToApply:Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;

    return-void
.end method

.method public shouldMaintainAspectRatio()Z
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->maintainAspectRatio:Z

    return v0
.end method
