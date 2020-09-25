.class public final Lo/zzq;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final onMessageChannelReady:Lo/zzq;


# instance fields
.field private final onNavigationEvent:Ljava/lang/Boolean;

.field private final onPostMessage:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 90
    new-instance v0, Lo/zzq;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lo/zzq;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    sput-object v0, Lo/zzq;->onMessageChannelReady:Lo/zzq;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo/zzq;->onNavigationEvent:Ljava/lang/Boolean;

    .line 3
    iput-object p2, p0, Lo/zzq;->onPostMessage:Ljava/lang/Boolean;

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    const-string v0, "ad_storage"

    .line 27
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-static {v0}, Lo/zzq;->onPostMessage(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "analytics_storage"

    .line 30
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 31
    invoke-static {p0}, Lo/zzq;->onPostMessage(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static ICustomTabsCallback(II)Z
    .locals 0

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static extraCallback(Ljava/lang/Boolean;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0
.end method

.method private static extraCallback(C)Ljava/lang/Boolean;
    .locals 1

    const/16 v0, 0x30

    if-eq p0, v0, :cond_1

    const/16 v0, 0x31

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 58
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 57
    :cond_1
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static extraCallback(Landroid/os/Bundle;)Lo/zzq;
    .locals 3

    if-nez p0, :cond_0

    .line 35
    sget-object p0, Lo/zzq;->onMessageChannelReady:Lo/zzq;

    return-object p0

    .line 36
    :cond_0
    new-instance v0, Lo/zzq;

    const-string v1, "ad_storage"

    .line 37
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/zzq;->onPostMessage(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "analytics_storage"

    .line 38
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lo/zzq;->onPostMessage(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lo/zzq;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method private static onMessageChannelReady(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    .line 78
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static onMessageChannelReady(Ljava/lang/String;)Lo/zzq;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lo/zzq;->extraCallback(C)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 45
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-lt v3, v4, :cond_1

    .line 46
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lo/zzq;->extraCallback(C)Ljava/lang/Boolean;

    move-result-object v0

    :cond_1
    move-object p0, v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object p0, v0

    .line 47
    :goto_1
    new-instance v1, Lo/zzq;

    invoke-direct {v1, v0, p0}, Lo/zzq;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v1
.end method

.method private static onNavigationEvent(Ljava/lang/Boolean;)C
    .locals 0

    if-nez p0, :cond_0

    const/16 p0, 0x2d

    return p0

    .line 62
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x31

    return p0

    :cond_1
    const/16 p0, 0x30

    return p0
.end method

.method private static onPostMessage(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "granted"

    .line 50
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    const-string v1, "denied"

    .line 52
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 53
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lo/zzq;->onNavigationEvent:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final ICustomTabsCallback(Lo/zzq;)Z
    .locals 2

    .line 75
    iget-object v0, p0, Lo/zzq;->onNavigationEvent:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lo/zzq;->onNavigationEvent:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lo/zzq;->onPostMessage:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_2

    iget-object p1, p1, Lo/zzq;->onPostMessage:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-eq p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 5
    instance-of v0, p1, Lo/zzq;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 7
    :cond_0
    check-cast p1, Lo/zzq;

    .line 8
    iget-object v0, p0, Lo/zzq;->onNavigationEvent:Ljava/lang/Boolean;

    invoke-static {v0}, Lo/zzq;->extraCallback(Ljava/lang/Boolean;)I

    move-result v0

    iget-object v2, p1, Lo/zzq;->onNavigationEvent:Ljava/lang/Boolean;

    invoke-static {v2}, Lo/zzq;->extraCallback(Ljava/lang/Boolean;)I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lo/zzq;->onPostMessage:Ljava/lang/Boolean;

    .line 9
    invoke-static {v0}, Lo/zzq;->extraCallback(Ljava/lang/Boolean;)I

    move-result v0

    iget-object p1, p1, Lo/zzq;->onPostMessage:Ljava/lang/Boolean;

    invoke-static {p1}, Lo/zzq;->extraCallback(Ljava/lang/Boolean;)I

    move-result p1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final extraCallback(Lo/zzq;)Lo/zzq;
    .locals 3

    .line 85
    new-instance v0, Lo/zzq;

    .line 86
    iget-object v1, p0, Lo/zzq;->onNavigationEvent:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    iget-object v1, p1, Lo/zzq;->onNavigationEvent:Ljava/lang/Boolean;

    .line 87
    :cond_0
    iget-object v2, p0, Lo/zzq;->onPostMessage:Ljava/lang/Boolean;

    if-nez v2, :cond_1

    iget-object v2, p1, Lo/zzq;->onPostMessage:Ljava/lang/Boolean;

    :cond_1
    invoke-direct {v0, v1, v2}, Lo/zzq;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final extraCallback()Z
    .locals 1

    .line 74
    iget-object v0, p0, Lo/zzq;->onPostMessage:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 14
    iget-object v0, p0, Lo/zzq;->onNavigationEvent:Ljava/lang/Boolean;

    invoke-static {v0}, Lo/zzq;->extraCallback(Ljava/lang/Boolean;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget-object v1, p0, Lo/zzq;->onPostMessage:Ljava/lang/Boolean;

    invoke-static {v1}, Lo/zzq;->extraCallback(Ljava/lang/Boolean;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "G1"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lo/zzq;->onNavigationEvent:Ljava/lang/Boolean;

    .line 66
    invoke-static {v1}, Lo/zzq;->onNavigationEvent(Ljava/lang/Boolean;)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    iget-object v1, p0, Lo/zzq;->onPostMessage:Ljava/lang/Boolean;

    .line 69
    invoke-static {v1}, Lo/zzq;->onNavigationEvent(Ljava/lang/Boolean;)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/lang/Boolean;
    .locals 1

    .line 71
    iget-object v0, p0, Lo/zzq;->onNavigationEvent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final onNavigationEvent(Lo/zzq;)Lo/zzq;
    .locals 3

    .line 81
    new-instance v0, Lo/zzq;

    iget-object v1, p0, Lo/zzq;->onNavigationEvent:Ljava/lang/Boolean;

    iget-object v2, p1, Lo/zzq;->onNavigationEvent:Ljava/lang/Boolean;

    .line 82
    invoke-static {v1, v2}, Lo/zzq;->onMessageChannelReady(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lo/zzq;->onPostMessage:Ljava/lang/Boolean;

    iget-object p1, p1, Lo/zzq;->onPostMessage:Ljava/lang/Boolean;

    .line 83
    invoke-static {v2, p1}, Lo/zzq;->onMessageChannelReady(Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lo/zzq;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final onPostMessage()Ljava/lang/Boolean;
    .locals 1

    .line 73
    iget-object v0, p0, Lo/zzq;->onPostMessage:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConsentSettings: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "adStorage="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v1, p0, Lo/zzq;->onNavigationEvent:Ljava/lang/Boolean;

    const-string v2, "granted"

    const-string v3, "denied"

    const-string v4, "uninitialized"

    if-nez v1, :cond_0

    .line 20
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ", analyticsStorage="

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v1, p0, Lo/zzq;->onPostMessage:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 24
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 25
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
