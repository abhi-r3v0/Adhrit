.class public final enum Lcom/squareup/picasso/Picasso$onMessageChannelReady;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/picasso/Picasso$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static enum ICustomTabsCallback:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

.field private static final synthetic extraCallback:[Lcom/squareup/picasso/Picasso$onMessageChannelReady;

.field public static final enum onMessageChannelReady:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

.field public static final enum onNavigationEvent:Lcom/squareup/picasso/Picasso$onMessageChannelReady;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 103
    new-instance v0, Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    const/4 v1, 0x0

    const-string v2, "LOW"

    invoke-direct {v0, v2, v1}, Lcom/squareup/picasso/Picasso$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/picasso/Picasso$onMessageChannelReady;->onNavigationEvent:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    .line 104
    new-instance v0, Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    const/4 v2, 0x1

    const-string v3, "NORMAL"

    invoke-direct {v0, v3, v2}, Lcom/squareup/picasso/Picasso$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/picasso/Picasso$onMessageChannelReady;->onMessageChannelReady:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    .line 105
    new-instance v0, Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    const/4 v3, 0x2

    const-string v4, "HIGH"

    invoke-direct {v0, v4, v3}, Lcom/squareup/picasso/Picasso$onMessageChannelReady;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/squareup/picasso/Picasso$onMessageChannelReady;->ICustomTabsCallback:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    .line 102
    sget-object v5, Lcom/squareup/picasso/Picasso$onMessageChannelReady;->onNavigationEvent:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    aput-object v5, v4, v1

    sget-object v1, Lcom/squareup/picasso/Picasso$onMessageChannelReady;->onMessageChannelReady:Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/squareup/picasso/Picasso$onMessageChannelReady;->extraCallback:[Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/picasso/Picasso$onMessageChannelReady;
    .locals 1

    .line 102
    const-class v0, Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    return-object p0
.end method

.method public static values()[Lcom/squareup/picasso/Picasso$onMessageChannelReady;
    .locals 1

    .line 102
    sget-object v0, Lcom/squareup/picasso/Picasso$onMessageChannelReady;->extraCallback:[Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    invoke-virtual {v0}, [Lcom/squareup/picasso/Picasso$onMessageChannelReady;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/picasso/Picasso$onMessageChannelReady;

    return-object v0
.end method
