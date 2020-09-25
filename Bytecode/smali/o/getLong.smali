.class public final Lo/getLong;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final extraCallback:Lo/getLong;


# instance fields
.field public final ICustomTabsCallback:I

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:I

.field public final onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lo/getLong;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lo/getLong;-><init>(IIII)V

    sput-object v0, Lo/getLong;->extraCallback:Lo/getLong;

    return-void
.end method

.method private constructor <init>(IIII)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput p1, p0, Lo/getLong;->onPostMessage:I

    .line 45
    iput p2, p0, Lo/getLong;->ICustomTabsCallback:I

    .line 46
    iput p3, p0, Lo/getLong;->onMessageChannelReady:I

    .line 47
    iput p4, p0, Lo/getLong;->onNavigationEvent:I

    return-void
.end method

.method public static ICustomTabsCallback(IIII)Lo/getLong;
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 64
    sget-object p0, Lo/getLong;->extraCallback:Lo/getLong;

    return-object p0

    .line 66
    :cond_0
    new-instance v0, Lo/getLong;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/getLong;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 92
    :cond_1
    check-cast p1, Lo/getLong;

    .line 94
    iget v2, p0, Lo/getLong;->onNavigationEvent:I

    iget v3, p1, Lo/getLong;->onNavigationEvent:I

    if-eq v2, v3, :cond_2

    return v1

    .line 95
    :cond_2
    iget v2, p0, Lo/getLong;->onPostMessage:I

    iget v3, p1, Lo/getLong;->onPostMessage:I

    if-eq v2, v3, :cond_3

    return v1

    .line 96
    :cond_3
    iget v2, p0, Lo/getLong;->onMessageChannelReady:I

    iget v3, p1, Lo/getLong;->onMessageChannelReady:I

    if-eq v2, v3, :cond_4

    return v1

    .line 97
    :cond_4
    iget v2, p0, Lo/getLong;->ICustomTabsCallback:I

    iget p1, p1, Lo/getLong;->ICustomTabsCallback:I

    if-eq v2, p1, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 104
    iget v0, p0, Lo/getLong;->onPostMessage:I

    mul-int/lit8 v0, v0, 0x1f

    .line 105
    iget v1, p0, Lo/getLong;->ICustomTabsCallback:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 106
    iget v1, p0, Lo/getLong;->onMessageChannelReady:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 107
    iget v1, p0, Lo/getLong;->onNavigationEvent:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Insets{left="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/getLong;->onPostMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/getLong;->ICustomTabsCallback:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/getLong;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/getLong;->onNavigationEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
