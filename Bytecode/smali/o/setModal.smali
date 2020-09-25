.class public final Lo/setModal;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppCompatImageHelper;


# instance fields
.field private final onMessageChannelReady:Lo/AppCompatImageHelper;

.field private final onPostMessage:I


# direct methods
.method private constructor <init>(ILo/AppCompatImageHelper;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lo/setModal;->onPostMessage:I

    .line 27
    iput-object p2, p0, Lo/setModal;->onMessageChannelReady:Lo/AppCompatImageHelper;

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;)Lo/AppCompatImageHelper;
    .locals 2

    .line 19
    invoke-static {p0}, Lo/isDropDownAlwaysVisible;->ICustomTabsCallback(Landroid/content/Context;)Lo/AppCompatImageHelper;

    move-result-object v0

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    .line 22
    new-instance v1, Lo/setModal;

    invoke-direct {v1, p0, v0}, Lo/setModal;-><init>(ILo/AppCompatImageHelper;)V

    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 32
    instance-of v0, p1, Lo/setModal;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 33
    check-cast p1, Lo/setModal;

    .line 34
    iget v0, p0, Lo/setModal;->onPostMessage:I

    iget v2, p1, Lo/setModal;->onPostMessage:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lo/setModal;->onMessageChannelReady:Lo/AppCompatImageHelper;

    iget-object p1, p1, Lo/setModal;->onMessageChannelReady:Lo/AppCompatImageHelper;

    invoke-interface {v0, p1}, Lo/AppCompatImageHelper;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 41
    iget-object v0, p0, Lo/setModal;->onMessageChannelReady:Lo/AppCompatImageHelper;

    iget v1, p0, Lo/setModal;->onPostMessage:I

    invoke-static {v0, v1}, Lo/getHorizontalOffset;->onMessageChannelReady(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(Ljava/security/MessageDigest;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lo/setModal;->onMessageChannelReady:Lo/AppCompatImageHelper;

    invoke-interface {v0, p1}, Lo/AppCompatImageHelper;->onNavigationEvent(Ljava/security/MessageDigest;)V

    const/4 v0, 0x4

    .line 47
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lo/setModal;->onPostMessage:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
