.class public Lo/getFarmBackgroundImage;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final extraCallback:Ljava/lang/String;

.field private final onNavigationEvent:I

.field public final onPostMessage:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lo/getFarmBackgroundImage;->extraCallback:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lo/getFarmBackgroundImage;->onPostMessage:Ljava/lang/String;

    .line 18
    new-instance p2, Lo/DiffUtil$onPostMessage;

    invoke-direct {p2, p1}, Lo/DiffUtil$onPostMessage;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x2

    :goto_0
    const/4 p2, 0x7

    if-lt p2, p1, :cond_0

    .line 21
    iget-object p2, p0, Lo/getFarmBackgroundImage;->onPostMessage:Ljava/lang/String;

    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 24
    :cond_0
    iput p1, p0, Lo/getFarmBackgroundImage;->onNavigationEvent:I

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .line 2
    array-length v0, p2

    if-nez v0, :cond_0

    const-string p2, ""

    goto :goto_1

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    const-string v4, ","

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 p2, 0x5d

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 13
    :goto_1
    invoke-direct {p0, p1, p2}, Lo/getFarmBackgroundImage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final varargs ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 2027
    iget p2, p0, Lo/getFarmBackgroundImage;->onNavigationEvent:I

    const/4 v0, 0x3

    if-gt p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 35
    iget-object p2, p0, Lo/getFarmBackgroundImage;->onPostMessage:Ljava/lang/String;

    .line 2054
    iget-object v0, p0, Lo/getFarmBackgroundImage;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final varargs onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 44
    iget-object p2, p0, Lo/getFarmBackgroundImage;->onPostMessage:Ljava/lang/String;

    .line 3054
    iget-object v0, p0, Lo/getFarmBackgroundImage;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 44
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final varargs onPostMessage(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1027
    iget p2, p0, Lo/getFarmBackgroundImage;->onNavigationEvent:I

    const/4 v0, 0x2

    if-gt p2, v0, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 29
    iget-object p2, p0, Lo/getFarmBackgroundImage;->onPostMessage:Ljava/lang/String;

    .line 1054
    iget-object v0, p0, Lo/getFarmBackgroundImage;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
