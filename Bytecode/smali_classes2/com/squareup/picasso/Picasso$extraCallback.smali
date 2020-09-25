.class public final enum Lcom/squareup/picasso/Picasso$extraCallback;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/picasso/Picasso;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/picasso/Picasso$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum extraCallback:Lcom/squareup/picasso/Picasso$extraCallback;

.field public static final enum onMessageChannelReady:Lcom/squareup/picasso/Picasso$extraCallback;

.field private static final synthetic onNavigationEvent:[Lcom/squareup/picasso/Picasso$extraCallback;

.field public static final enum onPostMessage:Lcom/squareup/picasso/Picasso$extraCallback;


# instance fields
.field public final ICustomTabsCallback:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 855
    new-instance v0, Lcom/squareup/picasso/Picasso$extraCallback;

    const/4 v1, 0x0

    const-string v2, "MEMORY"

    const v3, -0xff0100

    invoke-direct {v0, v2, v1, v3}, Lcom/squareup/picasso/Picasso$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/picasso/Picasso$extraCallback;->onPostMessage:Lcom/squareup/picasso/Picasso$extraCallback;

    .line 856
    new-instance v0, Lcom/squareup/picasso/Picasso$extraCallback;

    const/4 v2, 0x1

    const-string v3, "DISK"

    const v4, -0xffff01

    invoke-direct {v0, v3, v2, v4}, Lcom/squareup/picasso/Picasso$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/picasso/Picasso$extraCallback;->onMessageChannelReady:Lcom/squareup/picasso/Picasso$extraCallback;

    .line 857
    new-instance v0, Lcom/squareup/picasso/Picasso$extraCallback;

    const/4 v3, 0x2

    const-string v4, "NETWORK"

    const/high16 v5, -0x10000

    invoke-direct {v0, v4, v3, v5}, Lcom/squareup/picasso/Picasso$extraCallback;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/squareup/picasso/Picasso$extraCallback;->extraCallback:Lcom/squareup/picasso/Picasso$extraCallback;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/squareup/picasso/Picasso$extraCallback;

    .line 854
    sget-object v5, Lcom/squareup/picasso/Picasso$extraCallback;->onPostMessage:Lcom/squareup/picasso/Picasso$extraCallback;

    aput-object v5, v4, v1

    sget-object v1, Lcom/squareup/picasso/Picasso$extraCallback;->onMessageChannelReady:Lcom/squareup/picasso/Picasso$extraCallback;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/squareup/picasso/Picasso$extraCallback;->onNavigationEvent:[Lcom/squareup/picasso/Picasso$extraCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 861
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 862
    iput p3, p0, Lcom/squareup/picasso/Picasso$extraCallback;->ICustomTabsCallback:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/picasso/Picasso$extraCallback;
    .locals 1

    .line 854
    const-class v0, Lcom/squareup/picasso/Picasso$extraCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/picasso/Picasso$extraCallback;

    return-object p0
.end method

.method public static values()[Lcom/squareup/picasso/Picasso$extraCallback;
    .locals 1

    .line 854
    sget-object v0, Lcom/squareup/picasso/Picasso$extraCallback;->onNavigationEvent:[Lcom/squareup/picasso/Picasso$extraCallback;

    invoke-virtual {v0}, [Lcom/squareup/picasso/Picasso$extraCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/picasso/Picasso$extraCallback;

    return-object v0
.end method
