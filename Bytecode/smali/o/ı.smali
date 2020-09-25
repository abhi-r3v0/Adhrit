.class public final Lo/ı;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AFKeystoreWrapper;


# static fields
.field public static final ICustomTabsCallback:Lo/AFKeystoreWrapper;


# instance fields
.field private extraCallback:I

.field private onMessageChannelReady:Z

.field private onPostMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1062
    new-instance v0, Lo/ı;

    const/4 v1, 0x1

    const v2, 0x7fffffff

    invoke-direct {v0, v2, v1, v1}, Lo/ı;-><init>(IZZ)V

    .line 13
    sput-object v0, Lo/ı;->ICustomTabsCallback:Lo/AFKeystoreWrapper;

    return-void
.end method

.method private constructor <init>(IZZ)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lo/ı;->extraCallback:I

    .line 22
    iput-boolean p2, p0, Lo/ı;->onMessageChannelReady:Z

    .line 23
    iput-boolean p3, p0, Lo/ı;->onPostMessage:Z

    return-void
.end method

.method public static extraCallback(IZZ)Lo/AFKeystoreWrapper;
    .locals 1

    .line 62
    new-instance p2, Lo/ı;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lo/ı;-><init>(IZZ)V

    return-object p2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 51
    :cond_0
    instance-of v1, p1, Lo/ı;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 54
    :cond_1
    check-cast p1, Lo/ı;

    .line 55
    iget v1, p0, Lo/ı;->extraCallback:I

    iget v3, p1, Lo/ı;->extraCallback:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lo/ı;->onMessageChannelReady:Z

    iget-boolean v3, p1, Lo/ı;->onMessageChannelReady:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lo/ı;->onPostMessage:Z

    iget-boolean p1, p1, Lo/ı;->onPostMessage:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final extraCallback()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lo/ı;->onMessageChannelReady:Z

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 43
    iget v0, p0, Lo/ı;->extraCallback:I

    iget-boolean v1, p0, Lo/ı;->onMessageChannelReady:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/high16 v1, 0x400000

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    xor-int/2addr v0, v1

    iget-boolean v1, p0, Lo/ı;->onPostMessage:Z

    if-eqz v1, :cond_1

    const/high16 v2, 0x800000

    :cond_1
    xor-int/2addr v0, v2

    return v0
.end method

.method public final onMessageChannelReady()I
    .locals 1

    .line 28
    iget v0, p0, Lo/ı;->extraCallback:I

    return v0
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lo/ı;->onPostMessage:Z

    return v0
.end method
