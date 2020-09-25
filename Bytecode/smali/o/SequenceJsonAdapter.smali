.class public final Lo/SequenceJsonAdapter;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lo/setCores;

.field private final arg$2:Lo/SessionProtobufHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/setCores;Lo/SessionProtobufHelper;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/SequenceJsonAdapter;->arg$1:Lo/setCores;

    iput-object p2, p0, Lo/SequenceJsonAdapter;->arg$2:Lo/SessionProtobufHelper;

    return-void
.end method

.method public static lambdaFactory$(Lo/setCores;Lo/SessionProtobufHelper;)Ljava/lang/Runnable;
    .locals 1

    .line 3000
    new-instance v0, Lo/SequenceJsonAdapter;

    invoke-direct {v0, p0, p1}, Lo/SequenceJsonAdapter;-><init>(Lo/setCores;Lo/SessionProtobufHelper;)V

    return-object v0
.end method

.method public static onMessageChannelReady(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p0, :cond_1

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 44
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 45
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 46
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 47
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static onPostMessage(II)I
    .locals 2

    const/16 v0, 0xff

    if-ne p1, v0, :cond_0

    return p0

    :cond_0
    const v0, 0xffffff

    if-nez p1, :cond_1

    and-int/2addr p0, v0

    return p0

    :cond_1
    shr-int/lit8 v1, p1, 0x7

    add-int/2addr p1, v1

    ushr-int/lit8 v1, p0, 0x18

    mul-int v1, v1, p1

    shr-int/lit8 p1, v1, 0x8

    shl-int/lit8 p1, p1, 0x18

    and-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2000
    iget-object v0, p0, Lo/SequenceJsonAdapter;->arg$1:Lo/setCores;

    iget-object v1, p0, Lo/SequenceJsonAdapter;->arg$2:Lo/SessionProtobufHelper;

    invoke-static {v0, v1}, Lo/setCores;->lambda$setLastStreamToken$4(Lo/setCores;Lo/SessionProtobufHelper;)V

    return-void
.end method
