.class public final Lo/ɩ;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final onMessageChannelReady:Lo/ɩ;

.field private static final onNavigationEvent:Lo/ɩ;


# instance fields
.field public final ICustomTabsCallback:I

.field public final onPostMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 62
    new-instance v0, Lo/ɩ;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/ɩ;-><init>(IZ)V

    sput-object v0, Lo/ɩ;->onNavigationEvent:Lo/ɩ;

    .line 68
    new-instance v0, Lo/ɩ;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/ɩ;-><init>(IZ)V

    sput-object v0, Lo/ɩ;->onMessageChannelReady:Lo/ɩ;

    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 111
    iput p1, p0, Lo/ɩ;->ICustomTabsCallback:I

    .line 112
    iput-boolean p2, p0, Lo/ɩ;->onPostMessage:Z

    return-void
.end method

.method public static onMessageChannelReady()Lo/ɩ;
    .locals 1

    .line 96
    sget-object v0, Lo/ɩ;->onMessageChannelReady:Lo/ɩ;

    return-object v0
.end method

.method public static onPostMessage()Lo/ɩ;
    .locals 1

    .line 81
    sget-object v0, Lo/ɩ;->onNavigationEvent:Lo/ɩ;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 150
    :cond_0
    instance-of v1, p1, Lo/ɩ;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 153
    :cond_1
    check-cast p1, Lo/ɩ;

    .line 154
    iget v1, p0, Lo/ɩ;->ICustomTabsCallback:I

    iget v3, p1, Lo/ɩ;->ICustomTabsCallback:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lo/ɩ;->onPostMessage:Z

    iget-boolean p1, p1, Lo/ɩ;->onPostMessage:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 142
    iget v0, p0, Lo/ɩ;->ICustomTabsCallback:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Lo/ɩ;->onPostMessage:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1034
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 159
    iget v1, p0, Lo/ɩ;->ICustomTabsCallback:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lo/ɩ;->onPostMessage:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x0

    const-string v2, "%d defer:%b"

    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
