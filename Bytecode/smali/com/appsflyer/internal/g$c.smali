.class final enum Lcom/appsflyer/internal/g$c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/g$c;",
        ">;"
    }
.end annotation


# static fields
.field private static enum Ɩ:Lcom/appsflyer/internal/g$c;

.field private static enum ǃ:Lcom/appsflyer/internal/g$c;

.field private static enum ɩ:Lcom/appsflyer/internal/g$c;

.field private static final synthetic ɹ:[Lcom/appsflyer/internal/g$c;

.field private static enum Ι:Lcom/appsflyer/internal/g$c;

.field private static enum ι:Lcom/appsflyer/internal/g$c;


# instance fields
.field ı:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 223
    new-instance v0, Lcom/appsflyer/internal/g$c;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN"

    const-string/jumbo v3, "uk"

    invoke-direct {v0, v2, v1, v3}, Lcom/appsflyer/internal/g$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/g$c;->Ι:Lcom/appsflyer/internal/g$c;

    new-instance v0, Lcom/appsflyer/internal/g$c;

    const/4 v2, 0x1

    const-string v3, "ACCELEROMETER"

    const-string v4, "am"

    invoke-direct {v0, v3, v2, v4}, Lcom/appsflyer/internal/g$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/g$c;->ǃ:Lcom/appsflyer/internal/g$c;

    new-instance v0, Lcom/appsflyer/internal/g$c;

    const/4 v3, 0x2

    const-string v4, "MAGNETOMETER"

    const-string v5, "mm"

    invoke-direct {v0, v4, v3, v5}, Lcom/appsflyer/internal/g$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/g$c;->ι:Lcom/appsflyer/internal/g$c;

    new-instance v0, Lcom/appsflyer/internal/g$c;

    const/4 v4, 0x3

    const-string v5, "RESERVED"

    const-string/jumbo v6, "rs"

    invoke-direct {v0, v5, v4, v6}, Lcom/appsflyer/internal/g$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/g$c;->ɩ:Lcom/appsflyer/internal/g$c;

    new-instance v0, Lcom/appsflyer/internal/g$c;

    const/4 v5, 0x4

    const-string v6, "GYROSCOPE"

    const-string v7, "gs"

    invoke-direct {v0, v6, v5, v7}, Lcom/appsflyer/internal/g$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/g$c;->Ɩ:Lcom/appsflyer/internal/g$c;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/appsflyer/internal/g$c;

    .line 222
    sget-object v7, Lcom/appsflyer/internal/g$c;->Ι:Lcom/appsflyer/internal/g$c;

    aput-object v7, v6, v1

    sget-object v1, Lcom/appsflyer/internal/g$c;->ǃ:Lcom/appsflyer/internal/g$c;

    aput-object v1, v6, v2

    sget-object v1, Lcom/appsflyer/internal/g$c;->ι:Lcom/appsflyer/internal/g$c;

    aput-object v1, v6, v3

    sget-object v1, Lcom/appsflyer/internal/g$c;->ɩ:Lcom/appsflyer/internal/g$c;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/appsflyer/internal/g$c;->ɹ:[Lcom/appsflyer/internal/g$c;

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

    .line 227
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 228
    iput-object p3, p0, Lcom/appsflyer/internal/g$c;->ı:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/g$c;
    .locals 1

    .line 222
    const-class v0, Lcom/appsflyer/internal/g$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/g$c;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/g$c;
    .locals 1

    .line 222
    sget-object v0, Lcom/appsflyer/internal/g$c;->ɹ:[Lcom/appsflyer/internal/g$c;

    invoke-virtual {v0}, [Lcom/appsflyer/internal/g$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/g$c;

    return-object v0
.end method
