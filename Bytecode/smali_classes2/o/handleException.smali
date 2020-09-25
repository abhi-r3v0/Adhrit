.class public final Lo/handleException;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Lo/newOutput;


# direct methods
.method private constructor <init>(Lo/newOutput;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/handleException;->arg$1:Lo/newOutput;

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;I)Z
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0, p1}, Lo/getString;->onPostMessage(II)D

    move-result-wide v0

    const/4 v2, 0x1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    cmpl-double v5, v0, v3

    if-lez v5, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/visa/R$color;->dark_blue:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-static {p0, p1}, Lo/getString;->onPostMessage(II)D

    move-result-wide p0

    cmpl-double v0, p0, v3

    if-lez v0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static extraCallback(Landroid/content/Context;I)I
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0, p1}, Lo/getString;->onPostMessage(II)D

    move-result-wide v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v3, Lcom/visa/R$color;->dark_blue:I

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-static {p0, p1}, Lo/getString;->onPostMessage(II)D

    move-result-wide v3

    cmpl-double p1, v1, v3

    if-lez p1, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static lambdaFactory$(Lo/newOutput;)Ljava/util/concurrent/Callable;
    .locals 1

    .line 3000
    new-instance v0, Lo/handleException;

    invoke-direct {v0, p0}, Lo/handleException;-><init>(Lo/newOutput;)V

    return-object v0
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/handleException;->arg$1:Lo/newOutput;

    invoke-virtual {v0}, Lo/newOutput;->read()Lo/ByteString;

    move-result-object v0

    return-object v0
.end method
