.class public final enum Lcom/axis/axismerchantsdk/analytics/Event$Action;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/axis/axismerchantsdk/analytics/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/axis/axismerchantsdk/analytics/Event$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static enum ICustomTabsCallback:Lcom/axis/axismerchantsdk/analytics/Event$Action;

.field private static enum ICustomTabsCallback$Stub:Lcom/axis/axismerchantsdk/analytics/Event$Action;

.field private static enum ICustomTabsCallback$Stub$Proxy:Lcom/axis/axismerchantsdk/analytics/Event$Action;

.field private static enum asBinder:Lcom/axis/axismerchantsdk/analytics/Event$Action;

.field private static enum asInterface:Lcom/axis/axismerchantsdk/analytics/Event$Action;

.field private static enum newSession:Lcom/axis/axismerchantsdk/analytics/Event$Action;

.field private static enum onMessageChannelReady:Lcom/axis/axismerchantsdk/analytics/Event$Action;

.field public static final enum onNavigationEvent:Lcom/axis/axismerchantsdk/analytics/Event$Action;

.field public static final enum onPostMessage:Lcom/axis/axismerchantsdk/analytics/Event$Action;

.field private static enum onRelationshipValidationResult:Lcom/axis/axismerchantsdk/analytics/Event$Action;

.field private static enum onTransact:Lcom/axis/axismerchantsdk/analytics/Event$Action;

.field private static final synthetic warmup:[Lcom/axis/axismerchantsdk/analytics/Event$Action;


# instance fields
.field public final extraCallback:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 12
    new-instance v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;

    const/4 v1, 0x0

    const-string v2, "CLICK"

    const-string v3, "click"

    invoke-direct {v0, v2, v1, v3}, Lcom/axis/axismerchantsdk/analytics/Event$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;->onMessageChannelReady:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    new-instance v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;

    const/4 v2, 0x1

    const-string v3, "ASYNC"

    const-string v4, "async"

    invoke-direct {v0, v3, v2, v4}, Lcom/axis/axismerchantsdk/analytics/Event$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;->ICustomTabsCallback:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    new-instance v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;

    const/4 v3, 0x2

    const-string v4, "PREFERENCES"

    const-string v5, "prefs"

    invoke-direct {v0, v4, v3, v5}, Lcom/axis/axismerchantsdk/analytics/Event$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;->asInterface:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    new-instance v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;

    const/4 v4, 0x3

    const-string v5, "CHECK"

    const-string v6, "check"

    invoke-direct {v0, v5, v4, v6}, Lcom/axis/axismerchantsdk/analytics/Event$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;->onTransact:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    new-instance v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;

    const/4 v5, 0x4

    const-string v6, "WEBLAB"

    const-string/jumbo v7, "weblab"

    invoke-direct {v0, v6, v5, v7}, Lcom/axis/axismerchantsdk/analytics/Event$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;->ICustomTabsCallback$Stub:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    .line 13
    new-instance v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;

    const/4 v6, 0x5

    const-string v7, "FALLBACK"

    const-string v8, "fallback"

    invoke-direct {v0, v7, v6, v8}, Lcom/axis/axismerchantsdk/analytics/Event$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;->asBinder:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    new-instance v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;

    const/4 v7, 0x6

    const-string v8, "ERROR"

    const-string v9, "error"

    invoke-direct {v0, v8, v7, v9}, Lcom/axis/axismerchantsdk/analytics/Event$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;->onNavigationEvent:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    new-instance v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;

    const/4 v8, 0x7

    const-string v9, "INFO"

    const-string v10, "info"

    invoke-direct {v0, v9, v8, v10}, Lcom/axis/axismerchantsdk/analytics/Event$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;->onPostMessage:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    new-instance v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;

    const/16 v9, 0x8

    const-string v10, "OTHER"

    const-string v11, "other"

    invoke-direct {v0, v10, v9, v11}, Lcom/axis/axismerchantsdk/analytics/Event$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;->onRelationshipValidationResult:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    new-instance v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;

    const/16 v10, 0x9

    const-string v11, "JS_ERROR"

    const-string v12, "js_error"

    invoke-direct {v0, v11, v10, v12}, Lcom/axis/axismerchantsdk/analytics/Event$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;->ICustomTabsCallback$Stub$Proxy:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    new-instance v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;

    const/16 v11, 0xa

    const-string v12, "JAVA_ERROR"

    const-string v13, "java_error"

    invoke-direct {v0, v12, v11, v13}, Lcom/axis/axismerchantsdk/analytics/Event$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;->newSession:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    const/16 v12, 0xb

    new-array v12, v12, [Lcom/axis/axismerchantsdk/analytics/Event$Action;

    .line 11
    sget-object v13, Lcom/axis/axismerchantsdk/analytics/Event$Action;->onMessageChannelReady:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    aput-object v13, v12, v1

    sget-object v1, Lcom/axis/axismerchantsdk/analytics/Event$Action;->ICustomTabsCallback:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    aput-object v1, v12, v2

    sget-object v1, Lcom/axis/axismerchantsdk/analytics/Event$Action;->asInterface:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    aput-object v1, v12, v3

    sget-object v1, Lcom/axis/axismerchantsdk/analytics/Event$Action;->onTransact:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    aput-object v1, v12, v4

    sget-object v1, Lcom/axis/axismerchantsdk/analytics/Event$Action;->ICustomTabsCallback$Stub:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    aput-object v1, v12, v5

    sget-object v1, Lcom/axis/axismerchantsdk/analytics/Event$Action;->asBinder:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    aput-object v1, v12, v6

    sget-object v1, Lcom/axis/axismerchantsdk/analytics/Event$Action;->onNavigationEvent:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    aput-object v1, v12, v7

    sget-object v1, Lcom/axis/axismerchantsdk/analytics/Event$Action;->onPostMessage:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    aput-object v1, v12, v8

    sget-object v1, Lcom/axis/axismerchantsdk/analytics/Event$Action;->onRelationshipValidationResult:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    aput-object v1, v12, v9

    sget-object v1, Lcom/axis/axismerchantsdk/analytics/Event$Action;->ICustomTabsCallback$Stub$Proxy:Lcom/axis/axismerchantsdk/analytics/Event$Action;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lcom/axis/axismerchantsdk/analytics/Event$Action;->warmup:[Lcom/axis/axismerchantsdk/analytics/Event$Action;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/axis/axismerchantsdk/analytics/Event$Action;->extraCallback:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/axis/axismerchantsdk/analytics/Event$Action;
    .locals 1

    .line 11
    const-class v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/axis/axismerchantsdk/analytics/Event$Action;

    return-object p0
.end method

.method public static values()[Lcom/axis/axismerchantsdk/analytics/Event$Action;
    .locals 1

    .line 11
    sget-object v0, Lcom/axis/axismerchantsdk/analytics/Event$Action;->warmup:[Lcom/axis/axismerchantsdk/analytics/Event$Action;

    invoke-virtual {v0}, [Lcom/axis/axismerchantsdk/analytics/Event$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/axis/axismerchantsdk/analytics/Event$Action;

    return-object v0
.end method
