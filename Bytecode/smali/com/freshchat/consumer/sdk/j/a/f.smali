.class public abstract Lcom/freshchat/consumer/sdk/j/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/j/a/f$c;,
        Lcom/freshchat/consumer/sdk/j/a/f$a;,
        Lcom/freshchat/consumer/sdk/j/a/f$b;
    }
.end annotation


# instance fields
.field private bZ:Lcom/freshchat/consumer/sdk/f/a;

.field private kc:Lcom/freshchat/consumer/sdk/j/a/d;

.field private kd:Lcom/freshchat/consumer/sdk/j/a/c$a;

.field private ke:Landroid/graphics/Bitmap;

.field private kf:Z

.field private kg:Z

.field protected kh:Z

.field private final ki:Ljava/lang/Object;

.field protected kj:Landroid/content/res/Resources;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/j/a/f;->kf:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/j/a/f;->kg:Z

    iput-boolean v0, p0, Lcom/freshchat/consumer/sdk/j/a/f;->kh:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/f;->ki:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/f;->kj:Landroid/content/res/Resources;

    return-void
.end method

.method private static a(Landroid/widget/ImageView;)Lcom/freshchat/consumer/sdk/j/a/f$b;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v0, p0, Lcom/freshchat/consumer/sdk/j/a/f$a;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/freshchat/consumer/sdk/j/a/f$a;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/j/a/f$a;->fz()Lcom/freshchat/consumer/sdk/j/a/f$b;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/j/a/f;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/j/a/f;->ki:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 5

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/j/a/f;->kf:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0x106000d

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/freshchat/consumer/sdk/j/a/f;->kj:Landroid/content/res/Resources;

    invoke-direct {v3, v4, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0xc8

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/a/f;->fw()V

    return-void
.end method

.method static synthetic a(Lcom/freshchat/consumer/sdk/j/a/f;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/j/a/f;->a(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic b(Lcom/freshchat/consumer/sdk/j/a/f;)Lcom/freshchat/consumer/sdk/j/a/d;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/j/a/f;->kc:Lcom/freshchat/consumer/sdk/j/a/d;

    return-object p0
.end method

.method static synthetic b(Landroid/widget/ImageView;)Lcom/freshchat/consumer/sdk/j/a/f$b;
    .locals 0

    invoke-static {p0}, Lcom/freshchat/consumer/sdk/j/a/f;->a(Landroid/widget/ImageView;)Lcom/freshchat/consumer/sdk/j/a/f$b;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Object;Landroid/widget/ImageView;)Z
    .locals 2

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/a/f;->a(Landroid/widget/ImageView;)Lcom/freshchat/consumer/sdk/j/a/f$b;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/a/f$b;->a(Lcom/freshchat/consumer/sdk/j/a/f$b;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lcom/freshchat/consumer/sdk/j/a/a;->cancel(Z)Z

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "cancelPotentialWork - cancelled work for "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImageWorker"

    invoke-static {p1, p0}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method static synthetic c(Lcom/freshchat/consumer/sdk/j/a/f;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/freshchat/consumer/sdk/j/a/f;->kg:Z

    return p0
.end method

.method static synthetic d(Lcom/freshchat/consumer/sdk/j/a/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/a/f;->fx()V

    return-void
.end method

.method private fv()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/f;->bZ:Lcom/freshchat/consumer/sdk/f/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freshchat/consumer/sdk/f/a;->aG()V

    :cond_0
    return-void
.end method

.method private fw()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/f;->bZ:Lcom/freshchat/consumer/sdk/f/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freshchat/consumer/sdk/f/a;->aH()V

    :cond_0
    return-void
.end method

.method private fx()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/f;->bZ:Lcom/freshchat/consumer/sdk/f/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/freshchat/consumer/sdk/f/a;->aI()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/freshchat/consumer/sdk/j/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/f;->kc:Lcom/freshchat/consumer/sdk/j/a/d;

    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/widget/ImageView;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/a/f;->kc:Lcom/freshchat/consumer/sdk/j/a/d;

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/freshchat/consumer/sdk/j/a/d;->aT(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_2
    invoke-static {p1, p2}, Lcom/freshchat/consumer/sdk/j/a/f;->b(Ljava/lang/Object;Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/j/a/f;->fv()V

    new-instance v0, Lcom/freshchat/consumer/sdk/j/a/f$b;

    invoke-direct {v0, p0, p2}, Lcom/freshchat/consumer/sdk/j/a/f$b;-><init>(Lcom/freshchat/consumer/sdk/j/a/f;Landroid/widget/ImageView;)V

    new-instance v1, Lcom/freshchat/consumer/sdk/j/a/f$a;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/a/f;->kj:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/freshchat/consumer/sdk/j/a/f;->ke:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2, v3, v0}, Lcom/freshchat/consumer/sdk/j/a/f$a;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/freshchat/consumer/sdk/j/a/f$b;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object p2, Lcom/freshchat/consumer/sdk/j/a/a;->iL:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/freshchat/consumer/sdk/j/a/a;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/freshchat/consumer/sdk/j/a/a;

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/Object;Landroid/widget/ImageView;Lcom/freshchat/consumer/sdk/f/a;)V
    .locals 0

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/j/a/f;->bZ:Lcom/freshchat/consumer/sdk/f/a;

    invoke-virtual {p0, p1, p2}, Lcom/freshchat/consumer/sdk/j/a/f;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V

    return-void
.end method

.method public c(Lcom/freshchat/consumer/sdk/j/a/c$a;)V
    .locals 3

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/a/f;->kd:Lcom/freshchat/consumer/sdk/j/a/c$a;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/a/d;->a(Lcom/freshchat/consumer/sdk/j/a/c$a;)Lcom/freshchat/consumer/sdk/j/a/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/freshchat/consumer/sdk/j/a/f;->a(Lcom/freshchat/consumer/sdk/j/a/d;)V

    new-instance p1, Lcom/freshchat/consumer/sdk/j/a/f$c;

    invoke-direct {p1, p0}, Lcom/freshchat/consumer/sdk/j/a/f$c;-><init>(Lcom/freshchat/consumer/sdk/j/a/f;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lcom/freshchat/consumer/sdk/j/a/a;->a([Ljava/lang/Object;)Lcom/freshchat/consumer/sdk/j/a/a;

    return-void
.end method

.method protected abstract d(Ljava/lang/Object;)Landroid/graphics/Bitmap;
.end method

.method protected fp()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/f;->kc:Lcom/freshchat/consumer/sdk/j/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/a/d;->fk()V

    :cond_0
    return-void
.end method

.method protected fr()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/f;->kc:Lcom/freshchat/consumer/sdk/j/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/a/d;->clearCache()V

    :cond_0
    return-void
.end method

.method protected fs()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/f;->kc:Lcom/freshchat/consumer/sdk/j/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/a/d;->flush()V

    :cond_0
    return-void
.end method

.method protected ft()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/f;->kc:Lcom/freshchat/consumer/sdk/j/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/a/d;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/f;->kc:Lcom/freshchat/consumer/sdk/j/a/d;

    :cond_0
    return-void
.end method

.method protected fy()V
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/f;->kc:Lcom/freshchat/consumer/sdk/j/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/j/a/d;->fl()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/a/f;->kc:Lcom/freshchat/consumer/sdk/j/a/d;

    :cond_0
    return-void
.end method
