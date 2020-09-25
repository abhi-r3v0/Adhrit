.class public final enum Lcom/axis/axismerchantsdk/analytics/Event$Category;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/axis/axismerchantsdk/analytics/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/axis/axismerchantsdk/analytics/Event$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ICustomTabsCallback:[Lcom/axis/axismerchantsdk/analytics/Event$Category;

.field private static enum onMessageChannelReady:Lcom/axis/axismerchantsdk/analytics/Event$Category;

.field public static final enum onPostMessage:Lcom/axis/axismerchantsdk/analytics/Event$Category;


# instance fields
.field private final onNavigationEvent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Lcom/axis/axismerchantsdk/analytics/Event$Category;

    const/4 v1, 0x0

    const-string v2, "UI"

    const-string/jumbo v3, "ui"

    invoke-direct {v0, v2, v1, v3}, Lcom/axis/axismerchantsdk/analytics/Event$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/axis/axismerchantsdk/analytics/Event$Category;->onMessageChannelReady:Lcom/axis/axismerchantsdk/analytics/Event$Category;

    new-instance v0, Lcom/axis/axismerchantsdk/analytics/Event$Category;

    const/4 v2, 0x1

    const-string v3, "AXISUPI"

    const-string v4, "axisupi"

    invoke-direct {v0, v3, v2, v4}, Lcom/axis/axismerchantsdk/analytics/Event$Category;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/axis/axismerchantsdk/analytics/Event$Category;->onPostMessage:Lcom/axis/axismerchantsdk/analytics/Event$Category;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/axis/axismerchantsdk/analytics/Event$Category;

    .line 24
    sget-object v4, Lcom/axis/axismerchantsdk/analytics/Event$Category;->onMessageChannelReady:Lcom/axis/axismerchantsdk/analytics/Event$Category;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/axis/axismerchantsdk/analytics/Event$Category;->ICustomTabsCallback:[Lcom/axis/axismerchantsdk/analytics/Event$Category;

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

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput-object p3, p0, Lcom/axis/axismerchantsdk/analytics/Event$Category;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method

.method public static synthetic ICustomTabsCallback(Lcom/axis/axismerchantsdk/analytics/Event$Category;)Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/axis/axismerchantsdk/analytics/Event$Category;->onNavigationEvent:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/axis/axismerchantsdk/analytics/Event$Category;
    .locals 1

    .line 24
    const-class v0, Lcom/axis/axismerchantsdk/analytics/Event$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/axis/axismerchantsdk/analytics/Event$Category;

    return-object p0
.end method

.method public static values()[Lcom/axis/axismerchantsdk/analytics/Event$Category;
    .locals 1

    .line 24
    sget-object v0, Lcom/axis/axismerchantsdk/analytics/Event$Category;->ICustomTabsCallback:[Lcom/axis/axismerchantsdk/analytics/Event$Category;

    invoke-virtual {v0}, [Lcom/axis/axismerchantsdk/analytics/Event$Category;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/axis/axismerchantsdk/analytics/Event$Category;

    return-object v0
.end method
