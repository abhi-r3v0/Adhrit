.class public final Lo/u$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/u$b$onMessageChannelReady;
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/u$b;


# instance fields
.field private ICustomTabsCallback:Landroid/media/AudioAttributes;

.field public final extraCallback:I

.field public final onNavigationEvent:I

.field public final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lo/u$b$onMessageChannelReady;

    invoke-direct {v0}, Lo/u$b$onMessageChannelReady;-><init>()V

    invoke-virtual {v0}, Lo/u$b$onMessageChannelReady;->ICustomTabsCallback()Lo/u$b;

    move-result-object v0

    sput-object v0, Lo/u$b;->onMessageChannelReady:Lo/u$b;

    return-void
.end method

.method private constructor <init>(III)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Lo/u$b;->onPostMessage:I

    .line 100
    iput p2, p0, Lo/u$b;->extraCallback:I

    .line 101
    iput p3, p0, Lo/u$b;->onNavigationEvent:I

    return-void
.end method

.method synthetic constructor <init>(IIILo/u$b$3;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lo/u$b;-><init>(III)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/media/AudioAttributes;
    .locals 2

    .line 106
    iget-object v0, p0, Lo/u$b;->ICustomTabsCallback:Landroid/media/AudioAttributes;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    iget v1, p0, Lo/u$b;->onPostMessage:I

    .line 108
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Lo/u$b;->extraCallback:I

    .line 109
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setFlags(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    iget v1, p0, Lo/u$b;->onNavigationEvent:I

    .line 110
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    iput-object v0, p0, Lo/u$b;->ICustomTabsCallback:Landroid/media/AudioAttributes;

    .line 113
    :cond_0
    iget-object v0, p0, Lo/u$b;->ICustomTabsCallback:Landroid/media/AudioAttributes;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    check-cast p1, Lo/u$b;

    .line 125
    iget v2, p0, Lo/u$b;->onPostMessage:I

    iget v3, p1, Lo/u$b;->onPostMessage:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lo/u$b;->extraCallback:I

    iget v3, p1, Lo/u$b;->extraCallback:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lo/u$b;->onNavigationEvent:I

    iget p1, p1, Lo/u$b;->onNavigationEvent:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 132
    iget v0, p0, Lo/u$b;->onPostMessage:I

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 133
    iget v1, p0, Lo/u$b;->extraCallback:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 134
    iget v1, p0, Lo/u$b;->onNavigationEvent:I

    add-int/2addr v0, v1

    return v0
.end method
