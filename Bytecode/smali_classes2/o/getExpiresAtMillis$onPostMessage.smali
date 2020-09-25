.class public final enum Lo/getExpiresAtMillis$onPostMessage;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getExpiresAtMillis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lo/getExpiresAtMillis$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ICustomTabsCallback:Lo/getExpiresAtMillis$onPostMessage;

.field private static final synthetic asInterface:[Lo/getExpiresAtMillis$onPostMessage;

.field public static final enum extraCallback:Lo/getExpiresAtMillis$onPostMessage;

.field public static final enum onNavigationEvent:Lo/getExpiresAtMillis$onPostMessage;

.field public static final enum onPostMessage:Lo/getExpiresAtMillis$onPostMessage;


# instance fields
.field private onMessageChannelReady:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 254
    new-instance v0, Lo/getExpiresAtMillis$onPostMessage;

    const/4 v1, 0x0

    const-string v2, "HOMESCREEN"

    const-string v3, "homescreen"

    invoke-direct {v0, v2, v1, v3}, Lo/getExpiresAtMillis$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/getExpiresAtMillis$onPostMessage;->ICustomTabsCallback:Lo/getExpiresAtMillis$onPostMessage;

    .line 255
    new-instance v0, Lo/getExpiresAtMillis$onPostMessage;

    const/4 v2, 0x1

    const-string v3, "URL_IN_BROWSER"

    const-string v4, "browser"

    invoke-direct {v0, v3, v2, v4}, Lo/getExpiresAtMillis$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/getExpiresAtMillis$onPostMessage;->extraCallback:Lo/getExpiresAtMillis$onPostMessage;

    .line 256
    new-instance v0, Lo/getExpiresAtMillis$onPostMessage;

    const/4 v3, 0x2

    const-string v4, "DEEP_LINK"

    const-string v5, "deeplink"

    invoke-direct {v0, v4, v3, v5}, Lo/getExpiresAtMillis$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/getExpiresAtMillis$onPostMessage;->onPostMessage:Lo/getExpiresAtMillis$onPostMessage;

    .line 257
    new-instance v0, Lo/getExpiresAtMillis$onPostMessage;

    const/4 v4, 0x3

    const-string v5, "ERROR"

    const-string v6, "error"

    invoke-direct {v0, v5, v4, v6}, Lo/getExpiresAtMillis$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lo/getExpiresAtMillis$onPostMessage;->onNavigationEvent:Lo/getExpiresAtMillis$onPostMessage;

    const/4 v5, 0x4

    new-array v5, v5, [Lo/getExpiresAtMillis$onPostMessage;

    .line 253
    sget-object v6, Lo/getExpiresAtMillis$onPostMessage;->ICustomTabsCallback:Lo/getExpiresAtMillis$onPostMessage;

    aput-object v6, v5, v1

    sget-object v1, Lo/getExpiresAtMillis$onPostMessage;->extraCallback:Lo/getExpiresAtMillis$onPostMessage;

    aput-object v1, v5, v2

    sget-object v1, Lo/getExpiresAtMillis$onPostMessage;->onPostMessage:Lo/getExpiresAtMillis$onPostMessage;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lo/getExpiresAtMillis$onPostMessage;->asInterface:[Lo/getExpiresAtMillis$onPostMessage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 261
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 262
    iput-object p3, p0, Lo/getExpiresAtMillis$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)Lo/getExpiresAtMillis$onPostMessage;
    .locals 5

    .line 270
    invoke-static {}, Lo/getExpiresAtMillis$onPostMessage;->values()[Lo/getExpiresAtMillis$onPostMessage;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 271
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    :cond_1
    sget-object p0, Lo/getExpiresAtMillis$onPostMessage;->onNavigationEvent:Lo/getExpiresAtMillis$onPostMessage;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lo/getExpiresAtMillis$onPostMessage;
    .locals 1

    .line 253
    const-class v0, Lo/getExpiresAtMillis$onPostMessage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lo/getExpiresAtMillis$onPostMessage;

    return-object p0
.end method

.method public static values()[Lo/getExpiresAtMillis$onPostMessage;
    .locals 1

    .line 253
    sget-object v0, Lo/getExpiresAtMillis$onPostMessage;->asInterface:[Lo/getExpiresAtMillis$onPostMessage;

    invoke-virtual {v0}, [Lo/getExpiresAtMillis$onPostMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/getExpiresAtMillis$onPostMessage;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lo/getExpiresAtMillis$onPostMessage;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method
