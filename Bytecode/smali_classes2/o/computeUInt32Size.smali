.class public final Lo/computeUInt32Size;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ICustomTabsCallback:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "java.version"

    .line 1029
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1035
    invoke-static {v0}, Lo/computeUInt32Size;->extraCallback(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1037
    invoke-static {v0}, Lo/computeUInt32Size;->onMessageChannelReady(Ljava/lang/String;)I

    move-result v1

    :cond_0
    if-ne v1, v2, :cond_1

    const/4 v1, 0x6

    .line 26
    :cond_1
    sput v1, Lo/computeUInt32Size;->ICustomTabsCallback:I

    return-void
.end method

.method private static extraCallback(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    const-string v0, "[._]"

    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 49
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 50
    array-length v2, p0

    if-le v2, v1, :cond_0

    .line 51
    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    return v0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method private static onMessageChannelReady(Ljava/lang/String;)I
    .locals 4

    .line 62
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 63
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 64
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 65
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static onMessageChannelReady()Z
    .locals 2

    .line 88
    sget v0, Lo/computeUInt32Size;->ICustomTabsCallback:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static onPostMessage()I
    .locals 1

    .line 81
    sget v0, Lo/computeUInt32Size;->ICustomTabsCallback:I

    return v0
.end method
